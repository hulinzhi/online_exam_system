package com.dimple.dao;

import com.dimple.entity.Clazz;
import com.dimple.entity.SysUser;

import java.util.List;

public interface ClazzDao {
     List<Clazz> getClazzList();

     Integer insert(Clazz clazz);

     Clazz selectSysClassById(Integer classId);

     Integer update(Clazz clazz);

     List<Clazz> queryAll(Clazz clazz);

     Integer deleteByIds(Integer[] ids);
}
