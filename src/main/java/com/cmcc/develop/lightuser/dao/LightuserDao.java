package com.cmcc.develop.lightuser.dao;

import com.wiwi.jsoil.db.PageUtil;
import java.util.List;
import com.wiwi.jsoil.db.DaoBase;
import com.wiwi.jsoil.db.DbAdapter;
import com.wiwi.jsoil.exception.RenderException;
import com.wiwi.jsoil.exception.DaoException;
import com.cmcc.develop.lightuser.model.Lightuser;

public class LightuserDao extends DaoBase {

    private String sql = null;

    public void insert(Lightuser instance) throws DaoException, RenderException {
        DbAdapter.insert2SingleTable(instance, "d_lightuser");
    }

    public void update(Lightuser instance) throws DaoException, RenderException {
        DbAdapter.update2SingleTable(instance, "d_lightuser");
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
        sql = "DELETE FROM d_lightuser WHERE id in (" + ids + ") ";
        DbAdapter.executeUpdate(sql);
    }

    public Lightuser get(String id) throws DaoException,RenderException {
        sql = "select * FROM d_lightuser WHERE id ='" + id +"'";
        return (Lightuser)DbAdapter.get(sql,Lightuser.class);
    }

    public Lightuser getByUsercode(String usercode) throws DaoException,RenderException {
        sql = "select * FROM d_lightuser WHERE usercode ='" + usercode +"'";
        return (Lightuser)DbAdapter.get(sql,Lightuser.class);
    }
    
    public Lightuser getByTelphone(String telephone) throws DaoException,RenderException {
        sql = "select * FROM d_lightuser WHERE telephone ='" + telephone +"'";
        return (Lightuser)DbAdapter.get(sql,Lightuser.class);
    }
    @SuppressWarnings("unchecked")
    public List<Lightuser> getList(PageUtil pageUtil) throws DaoException,RenderException {
    	 sql = " select c.*,u.title as lightTitle,t.title as musicTitle  FROM d_lightuser c,d_light u,d_music t where c.lightId = u.id and c.musicId = t.id ";
        return DbAdapter.getList(sql,pageUtil, Lightuser.class);
    }

}