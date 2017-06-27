package com.cmcc.develop.musichistory.service;

import com.wiwi.jsoil.db.PageUtil;
import java.util.List;
import com.wiwi.jsoil.exception.RenderException;
import com.wiwi.jsoil.exception.DaoException;
import com.cmcc.develop.musichistory.model.Musichistory;
import com.cmcc.develop.musichistory.dao.MusichistoryDao;

public class MusichistoryService {

    public void insert(Musichistory instance) throws DaoException, RenderException {
        MusichistoryDao dao = new MusichistoryDao();
        dao.insert(instance);
    }

    public void update(Musichistory instance) throws DaoException, RenderException {
        MusichistoryDao dao = new MusichistoryDao();
        dao.update(instance);
    }

    public void delete(String id) throws DaoException {
        batchDelete(id+"");
    }

    public void batchDelete(String ids) throws DaoException {
        MusichistoryDao dao = new MusichistoryDao();
        dao.delete(ids);
    }

    public Musichistory get(String id) throws DaoException,RenderException {
        MusichistoryDao dao = new MusichistoryDao();
        return dao.get(id);
    }

    public List<Musichistory> getList(PageUtil pageUtil) throws DaoException,RenderException {
        MusichistoryDao dao = new MusichistoryDao();
        return dao.getList(pageUtil);
    }
}