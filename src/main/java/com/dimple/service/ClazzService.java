package com.dimple.service;

import com.dimple.entity.Clazz;
import com.dimple.entity.SysUser;

import java.util.List;

public interface ClazzService {
    public List<Clazz> getClazzList();
    public Integer insert(Clazz clazz);
    public Clazz selectSysClassById(Integer classId);
    public Integer update(Clazz clazz);
    public List<Clazz> selectClassList(Clazz clazz);
    public Integer deleteByIds(String ids);
}
