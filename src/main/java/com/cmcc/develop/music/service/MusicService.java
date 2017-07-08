package com.cmcc.develop.music.service;

import java.util.List;

import com.cmcc.develop.music.dao.MusicDao;
import com.cmcc.develop.music.model.Music;
import com.cmcc.develop.music.model.MusicQ;
import com.wiwi.jsoil.db.PageUtil;
import com.wiwi.jsoil.exception.DaoException;
import com.wiwi.jsoil.exception.RenderException;

public class MusicService {

    public void insert(Music instance) throws DaoException, RenderException {
        MusicDao dao = new MusicDao();
        dao.insert(instance);
    }

    public void update(Music instance) throws DaoException, RenderException {
        MusicDao dao = new MusicDao();
        dao.update(instance);
    }

    public void delete(String id) throws DaoException {
        batchDelete(id+"");
    }

    public void batchDelete(String ids) throws DaoException {
        MusicDao dao = new MusicDao();
        dao.delete(ids);
    }

    public Music get(String id) throws DaoException,RenderException {
        MusicDao dao = new MusicDao();
        return dao.get(id);
    }

    public List<Music> getList(PageUtil pageUtil) throws DaoException,RenderException {
        MusicDao dao = new MusicDao();
        return dao.getList(pageUtil);
    }
    
    public List<Music> getList() throws DaoException,RenderException {
    	MusicDao dao = new MusicDao();
    	return dao.getListOrderByPlayTimes();
    }
}