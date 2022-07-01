package com.dimple.service.impl;

import com.dimple.dao.ClazzDao;
import com.dimple.entity.Clazz;
import com.dimple.service.ClazzService;
import com.dimple.utils.Convert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class ClazzServiceImpl implements ClazzService {
    @Autowired
    private ClazzDao clazzDao;

    @Override
    public List<Clazz> getClazzList() {

        return clazzDao.getClazzList();
    }

    @Override
    public Integer insert(Clazz clazz) {
        return clazzDao.insert(clazz);
    }

    @Override
    public Clazz selectSysClassById(Integer classId) {
        return clazzDao.selectSysClassById(classId);
    }

    @Override
    public Integer update(Clazz clazz) {
        return clazzDao.update(clazz);
    }

    @Override
    public List<Clazz> selectClassList(Clazz clazz) {
        return clazzDao.queryAll(clazz);
    }

    @Override
    public Integer deleteByIds(String ids) {
        return clazzDao.deleteByIds(Convert.toIntArray(ids));
    }


}
