<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>在线考试系统-后台管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" href="favicon.ico">
    <link rel="stylesheet" href="/static/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="/static/css/index.css" media="all"/>
</head>
<body class="main_body">
<div class="layui-layout layui-layout-admin">

    <input type="hidden" id="userType" value="${sessionScope.user.userType}"/>
    <!-- 顶部 -->
    <div class="layui-header header">
        <div class="layui-main mag0">
            <a href="#" class="logo">在线考试系统</a>
            <!-- 显示/隐藏菜单 -->
            <a href="javascript:;" class="seraph hideMenu icon-caidan"></a>
            <!-- 顶级菜单 -->
            <ul class="layui-nav mobileTopLevelMenus" mobile>
                <li class="layui-nav-item" data-menu="contentManagement">
                    <a href="javascript:;"><i class="seraph icon-caidan"></i><cite>exam system</cite></a>
                    <dl class="layui-nav-child">
                        <shiro:hasRole name="student">
                            <dd class="layui-this" data-menu="contentManagement">
                                <a href="javascript:;"><i class="layui-icon" data-icon="&#xe63c;">&#xe63c;</i>
                                    <cite>在线考试</cite>
                                </a>
                            </dd>
                        </shiro:hasRole>
                        <shiro:hasAnyRoles name="admin,teacher">
                            <dd data-menu="memberCenter">
                                <a href="javascript:;">
                                    <i class="seraph icon-icon10" data-icon="icon-icon10"></i>
                                    <cite>考试管理</cite>
                                </a>
                            </dd>
                        </shiro:hasAnyRoles>
                        <shiro:hasRole name="admin">
                            <dd data-menu="systemeSttings">
                                <a href="javascript:;"><i class="layui-icon" data-icon="&#xe620;">&#xe620;</i>
                                    <cite>系统管理</cite>
                                </a>
                            </dd>
                        </shiro:hasRole>
                    </dl>
                </li>
            </ul>

            <ul class="layui-nav topLevelMenus" pc>
                <shiro:hasRole name="student">
                    <li class="layui-nav-item layui-this" data-menu="contentManagement">
                        <a href="javascript:;"><i class="layui-icon" data-icon="&#xe63c;">&#xe63c;</i>
                            <cite>在线考试</cite>
                        </a>
                    </li>
                </shiro:hasRole>
                <shiro:hasAnyRoles name="admin,teacher">
                    <li class="layui-nav-item" data-menu="memberCenter" pc>
                        <a href="javascript:;">
                            <i class="seraph icon-icon10" data-icon="icon-icon10"></i>
                            <cite>考试管理</cite>
                        </a>
                    </li>
                </shiro:hasAnyRoles>
                <shiro:hasRole name="admin">
                    <li class="layui-nav-item" data-menu="systemeSttings" pc>
                        <a href="javascript:;">
                            <i class="layui-icon" data-icon="&#xe620;">&#xe620;</i>
                            <cite>系统设置</cite>
                        </a>
                    </li>
                </shiro:hasRole>
            </ul>
            <!-- 顶部右侧菜单 -->
            <ul class="layui-nav top_menu">
                <li class="layui-nav-item" id="userInfo">
                    <a href="javascript:;">
                        <img src="/static/images/face.jpg" class="layui-nav-img userAvatar" width="35" height="35">
                        <cite class="adminName">${sessionScope.user.nickName}</cite>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" data-url="/userInfo">
                                <i class="seraph icon-ziliao" data-icon="icon-ziliao"></i>
                                <cite>个人资料</cite>
                            </a>
                        </dd>
                        <dd>
                            <a href="javascript:;" data-url="/changePassword">
                                <i class="seraph icon-xiugai" data-icon="icon-xiugai"></i>
                                <cite>修改密码</cite>
                            </a>
                        </dd>
                        <dd>
                            <a href="/logout" class="signOut">
                                <i class="seraph icon-tuichu"></i>
                                <cite>退出</cite>
                            </a>
                        </dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
    <!-- 左侧导航 -->
    <div class="layui-side layui-bg-black">
        <div class="user-photo">
            <a class="img" title="我的头像"><img src="/static/images/face.jpg" class="userAvatar"></a>
            <p>你好！<span class="userName">${sessionScope.user.nickName}</span>, 欢迎登录</p>
        </div>
        <div class="navBar layui-side-scroll" id="navBar">
            <ul class="layui-nav layui-nav-tree">
                <li class="layui-nav-item layui-this">
                    <a href="javascript:;" data-url="/main">
                        <i class="layui-icon" data-icon=""></i>
                        <cite>后台首页</cite>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!-- 右侧内容 -->
    <div class="layui-body layui-form">
        <div class="layui-tab mag0" lay-filter="bodyTab" id="top_tabs_box">
            <ul class="layui-tab-title top_tab" id="top_tabs">
                <li class="layui-this" lay-id="">
                    <i class="layui-icon">&#xe68e;</i>
                    <cite>后台首页</cite>
                </li>
            </ul>
            <ul class="layui-nav closeBox">
                <li class="layui-nav-item">
                    <a href="javascript:;">
                        <i class="layui-icon caozuo">&#xe643;</i> 页面操作
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" class="refresh refreshThis">
                                <i class="layui-icon">&#x1002;</i>
                                刷新当前</a>
                        </dd>
                        <dd>
                            <a href="javascript:;" class="closePageOther">
                                <i class="seraph icon-prohibit"></i> 关闭其他
                            </a>
                        </dd>
                        <dd>
                            <a href="javascript:;" class="closePageAll">
                                <i class="seraph icon-guanbi"></i> 关闭全部
                            </a>
                        </dd>
                    </dl>
                </li>
            </ul>
            <div class="layui-tab-content clildFrame">
                <div class="layui-tab-item layui-show">
                    <iframe src="/main"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- 底部 -->
    <div class="layui-footer footer">
        <p>
            <span> @2022 在线考试系统</span>
        </p>
    </div>
</div>

<!-- 移动导航 -->
<div class="site-tree-mobile"><i class="layui-icon">&#xe602;</i></div>
<div class="site-mobile-shade"></div>
<script src="/static/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/layui/layui.js"></script>
<script type="text/javascript" src="/static/js/index.js"></script>
</body>
</html>