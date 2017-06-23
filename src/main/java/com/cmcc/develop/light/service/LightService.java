package com.cmcc.develop.light.service;

import java.util.List;

import com.cmcc.develop.light.dao.LightDao;
import com.cmcc.develop.light.model.Light;
import com.cmcc.develop.light.model.LightQ;
import com.wiwi.jsoil.db.PageUtil;
import com.wiwi.jsoil.exception.DaoException;
import com.wiwi.jsoil.exception.RenderException;

public class LightService {

    public void insert(Light instance) throws DaoException, RenderException {
        LightDao dao = new LightDao();
        dao.insert(instance);
    }

    public void update(Light instance) throws DaoException, RenderException {
        LightDao dao = new LightDao();
        dao.update(instance);
    }

    public void delete(String id) throws DaoException {
        batchDelete(id+"");
    }

    public void batchDelete(String ids) throws DaoException {
        LightDao dao = new LightDao();
        dao.delete(ids);
    }

    public Light get(String id) throws DaoException,RenderException {
        LightDao dao = new LightDao();
        return dao.get(id);
    }

    public List<Light> getList(PageUtil pageUtil) throws DaoException,RenderException {
        LightDao dao = new LightDao();
        return dao.getList(pageUtil);
    }
    
    
    public List<Light> getList() throws DaoException,RenderException {
    	LightDao dao = new LightDao();
    	LightQ query = new LightQ();
    	return dao.getList(query);
    }
    
    public List<Light> getListByUsercodeAndType(String userCode,String type) throws DaoException,RenderException {
    	LightDao dao = new LightDao();

    	return dao.getList(userCode,type);
    }
}