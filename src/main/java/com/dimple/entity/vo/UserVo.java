package com.dimple.entity.vo;

import com.dimple.utils.BaseEntity;
import lombok.Data;

@Data
public class UserVo extends BaseEntity {

    private String className;

    private static final long serialVersionUID = 421015445214579434L;
    //用户ID
    private Integer id;
    //登录名
    private String loginName;
    //昵称
    private String nickName;

    private String icon;
    //密码
    private String password;
    //shiro加密盐
    private String salt;
    //手机号码
    private String tel;
    //邮箱地址
    private String email;
    //是否锁定
    private Boolean locked;
    //用户类型
    private String userType;

    private Integer classId;
}
