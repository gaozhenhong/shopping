package com.cmcc.develop.lightuser.service;

import java.util.List;

import com.cmcc.develop.lightuser.dao.LightuserDao;
import com.cmcc.develop.lightuser.model.Lightuser;
import com.cmcc.develop.lightuser.model.LightuserQ;
import com.wiwi.jsoil.db.PageUtil;
import com.wiwi.jsoil.exception.DaoException;
import com.wiwi.jsoil.exception.RenderException;

public class LightuserService {

    public void insert(Lightuser instance) throws DaoException, RenderException {
        LightuserDao dao = new LightuserDao();
        dao.insert(instance);
    }

    public void update(Lightuser instance) throws DaoException, RenderException {
        LightuserDao dao = new LightuserDao();
        dao.update(instance);
    }

    public void delete(String id) throws DaoException {
        batchDelete(id+"");
    }

    public void batchDelete(String ids) throws DaoException {
        LightuserDao dao = new LightuserDao();
        dao.delete(ids);
    }

    public Lightuser get(String id) throws DaoException,RenderException {
        LightuserDao dao = new LightuserDao();
        return dao.get(id);
    }
    
    public Lightuser getByUsercode(String usercode) throws DaoException,RenderException {
        LightuserDao dao = new LightuserDao();
    	return dao.getByUsercode(usercode);
    }
    
    public Lightuser getByTelphone(String telephone) throws DaoException,RenderException {
        LightuserDao dao = new LightuserDao();
    	return dao.getByTelphone(telephone);
    }

    public List<Lightuser> getList(PageUtil pageUtil) throws DaoException,RenderException {
        LightuserDao dao = new LightuserDao();
        return dao.getList(pageUtil);
    }
}