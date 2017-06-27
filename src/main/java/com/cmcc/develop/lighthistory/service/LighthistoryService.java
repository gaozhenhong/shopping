package com.cmcc.develop.lighthistory.service;

import com.wiwi.jsoil.db.PageUtil;
import java.util.List;
import com.wiwi.jsoil.exception.RenderException;
import com.wiwi.jsoil.exception.DaoException;
import com.cmcc.develop.lighthistory.model.Lighthistory;
import com.cmcc.develop.lighthistory.dao.LighthistoryDao;

public class LighthistoryService {

    public void insert(Lighthistory instance) throws DaoException, RenderException {
        LighthistoryDao dao = new LighthistoryDao();
        dao.insert(instance);
    }

    public void update(Lighthistory instance) throws DaoException, RenderException {
        LighthistoryDao dao = new LighthistoryDao();
        dao.update(instance);
    }

    public void delete(String id) throws DaoException {
        batchDelete(id+"");
    }

    public void batchDelete(String ids) throws DaoException {
        LighthistoryDao dao = new LighthistoryDao();
        dao.delete(ids);
    }

    public Lighthistory get(String id) throws DaoException,RenderException {
        LighthistoryDao dao = new LighthistoryDao();
        return dao.get(id);
    }

    public List<Lighthistory> getList(PageUtil pageUtil) throws DaoException,RenderException {
        LighthistoryDao dao = new LighthistoryDao();
        return dao.getList(pageUtil);
    }
}