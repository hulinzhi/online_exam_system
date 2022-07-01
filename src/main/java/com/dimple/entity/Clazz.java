package com.dimple.entity;

import com.dimple.utils.BaseEntity;
import lombok.Data;

import java.io.Serializable;
@Data
public class Clazz extends BaseEntity implements Serializable{


    private Integer classId;

    private String className;

    private Boolean clazzCheckFlag = false;;

}
