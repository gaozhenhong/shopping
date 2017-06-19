package com.cmcc.develop.light.dao;

import com.wiwi.jsoil.db.PageUtil;
import java.util.List;
import com.wiwi.jsoil.db.DaoBase;
import com.wiwi.jsoil.db.DbAdapter;
import com.wiwi.jsoil.exception.RenderException;
import com.wiwi.jsoil.exception.DaoException;
import com.cmcc.develop.light.model.Light;

public class LightDao extends DaoBase {

    private String sql = null;

    public void insert(Light instance) throws DaoException, RenderException {
        DbAdapter.insert2SingleTable(instance, "d_light");
    }

    public void update(Light instance) throws DaoException, RenderException {
        DbAdapter.update2SingleTable(instance, "d_light");
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
        sql = "DELETE FROM d_light WHERE id in (" + ids + ") ";
        DbAdapter.executeUpdate(sql);
    }

    public Light get(String id) throws DaoException,RenderException {
        sql = "select * FROM d_light WHERE id ='" + id +"'";
        return (Light)DbAdapter.get(sql,Light.class);
    }

    @SuppressWarnings("unchecked")
    public List<Light> getList(PageUtil pageUtil) throws DaoException,RenderException {
        sql = "select * FROM d_light";
        return DbAdapter.getList(sql,pageUtil, Light.class);
    }
    
    public List<Light> getList() throws DaoException,RenderException {
        sql = "select * FROM d_light";
        return DbAdapter.getList(sql, Light.class);
    }

}