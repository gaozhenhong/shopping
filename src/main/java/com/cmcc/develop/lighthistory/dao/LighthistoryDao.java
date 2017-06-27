package com.cmcc.develop.lighthistory.dao;

import com.wiwi.jsoil.db.PageUtil;
import java.util.List;
import com.wiwi.jsoil.db.DaoBase;
import com.wiwi.jsoil.db.DbAdapter;
import com.wiwi.jsoil.exception.RenderException;
import com.wiwi.jsoil.exception.DaoException;
import com.cmcc.develop.lighthistory.model.Lighthistory;

public class LighthistoryDao extends DaoBase {

    private String sql = null;

    public void insert(Lighthistory instance) throws DaoException, RenderException {
        DbAdapter.insert2SingleTable(instance, "d_light_history");
    }

    public void update(Lighthistory instance) throws DaoException, RenderException {
        DbAdapter.update2SingleTable(instance, "d_light_history");
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
        sql = "DELETE FROM d_light_history WHERE id in (" + ids + ") ";
        DbAdapter.executeUpdate(sql);
    }

    public Lighthistory get(String id) throws DaoException,RenderException {
        sql = "select * FROM d_light_history WHERE id ='" + id +"'";
        return (Lighthistory)DbAdapter.get(sql,Lighthistory.class);
    }

    @SuppressWarnings("unchecked")
    public List<Lighthistory> getList(PageUtil pageUtil) throws DaoException,RenderException {
        sql = "select * FROM d_light_history";
        return DbAdapter.getList(sql,pageUtil, Lighthistory.class);
    }

}