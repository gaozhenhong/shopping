package com.cmcc.develop.musichistory.dao;

import com.wiwi.jsoil.db.PageUtil;
import java.util.List;
import com.wiwi.jsoil.db.DaoBase;
import com.wiwi.jsoil.db.DbAdapter;
import com.wiwi.jsoil.exception.RenderException;
import com.wiwi.jsoil.exception.DaoException;
import com.cmcc.develop.musichistory.model.Musichistory;

public class MusichistoryDao extends DaoBase {

    private String sql = null;

    public void insert(Musichistory instance) throws DaoException, RenderException {
        DbAdapter.insert2SingleTable(instance, "d_music_history");
    }

    public void update(Musichistory instance) throws DaoException, RenderException {
        DbAdapter.update2SingleTable(instance, "d_music_history");
    }

    public void delete(String ids) throws DaoException {
        if (ids.startsWith(",")) {
        			ids = ids.substring(1);
        }
        if(ids.indexOf(",") != -1){
        		ids = ids.replaceAll(",", "','");
        }
        if(!ids.startsWith("'")){
        		ids = "'" + ids;
        }
        if(!ids.endsWith("'")){
        		ids = ids + "'";
        }
        sql = "DELETE FROM d_music_history WHERE id in (" + ids + ") ";
        DbAdapter.executeUpdate(sql);
    }

    public Musichistory get(String id) throws DaoException,RenderException {
        sql = "select * FROM d_music_history WHERE id ='" + id +"'";
        return (Musichistory)DbAdapter.get(sql,Musichistory.class);
    }

    @SuppressWarnings("unchecked")
    public List<Musichistory> getList(PageUtil pageUtil) throws DaoException,RenderException {
        sql = "select * FROM d_music_history";
        return DbAdapter.getList(sql,pageUtil, Musichistory.class);
    }

}