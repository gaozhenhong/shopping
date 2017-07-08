package com.cmcc.develop.music.dao;

import com.wiwi.jsoil.db.PageUtil;
import java.util.List;
import com.wiwi.jsoil.db.DaoBase;
import com.wiwi.jsoil.db.DbAdapter;
import com.wiwi.jsoil.exception.RenderException;
import com.wiwi.jsoil.exception.DaoException;
import com.cmcc.develop.music.model.Music;

public class MusicDao extends DaoBase {

    private String sql = null;

    public void insert(Music instance) throws DaoException, RenderException {
        DbAdapter.insert2SingleTable(instance, "d_music");
    }

    public void update(Music instance) throws DaoException, RenderException {
        DbAdapter.update2SingleTable(instance, "d_music");
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
        sql = "DELETE FROM d_music WHERE id in (" + ids + ") ";
        DbAdapter.executeUpdate(sql);
    }

    public Music get(String id) throws DaoException,RenderException {
        sql = "select * FROM d_music WHERE id ='" + id +"'";
        return (Music)DbAdapter.get(sql,Music.class);
    }

    @SuppressWarnings("unchecked")
    public List<Music> getList(PageUtil pageUtil) throws DaoException,RenderException {
        sql = "select * FROM d_music order by playtimes desc";
        return DbAdapter.getList(sql,pageUtil, Music.class);
    }
    
    public List<Music> getListOrderByPlayTimes() throws DaoException,RenderException {
        sql = "select * FROM d_music order by playtimes desc";
        return DbAdapter.getList(sql, Music.class);
    }

}