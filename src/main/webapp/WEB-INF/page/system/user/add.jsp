<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<%@include file="../../common/include-header.jsp" %>
<body>
<div class="form-content">
    <form id="form-user-add" class="form-horizontal">
        <h4 class="form-header h4">基本信息</h4>
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="col-sm-4 control-label"><span style="color: red; ">*</span>用户名称：</label>
                    <div class="col-sm-8">
                        <input name="nickName" autocomplete="off" placeholder="请输入用户名称" class="form-control" type="text"
                               maxlength="30" required>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="col-sm-4 control-label"><span style="color: red; ">*</span>手机号码：</label>
                    <div class="col-sm-8">
                        <input name="tel" autocomplete="off" placeholder="请输入手机号码" class="form-control"
                               type="text" maxlength="11" required>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">

            <div class="col-sm-6">
                <div class="form-group">
                    <label class="col-sm-4 control-label"><span style="color: red; ">*</span>邮箱：</label>
                    <div class="col-sm-8">
                        <input name="email" autocomplete="off" class="form-control email" type="text" maxlength="50"
                               placeholder="请输入邮箱" required>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="col-sm-4 control-label"><span style="color: red; ">*</span>登录账号：</label>
                    <div class="col-sm-8">
                        <input name="loginName" placeholder="请输入登录账号" autocomplete="off" class="form-control required"
                               type="text" maxlength="30" required>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="col-sm-4 control-label"><span style="color: red; ">*</span>登录密码：</label>
                    <div class="col-sm-8">
                        <input name="password" placeholder="请输入登录密码" autocomplete="off" class="form-control"
                               value="123456"
                               type="password" required>
                    </div>
                </div>
            </div>
            <div class="col-sm-6" id="class_show">
                <label class="col-sm-4 control-label">学生班级：</label>
                <div class="col-sm-8">
                    <select name="classId"  id="clazzIds" class="form-control select2-hidden-accessible required" required>
                        <option value="">请选择</option>
                        <c:forEach items="${clazzList}" var="i">
                            <option value="${i.classId}">${i.className}</option>
                        </c:forEach>
                    </select>
                </div>

            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="col-xs-4 control-label">角色：</label>
                    <div class="col-xs-8">
                        <label class="radio-box" id="admin">
                            <input name="userType" id="admin2"  type="radio" value="1">管理员
                        </label>
                        <label class="radio-box" id="teacher">
                            <input name="userType" id="teacher2" type="radio" value="2">教师
                        </label>
                        <label class="radio-box" id="student">
                            <input name="userType" id="student2" type="radio" value="3" checked>学生
                        </label>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">

        </div>
        <h4 class="form-header h4">其他信息</h4>
        <div class="row">
            <div class="col-sm-12">
                <div class="form-group">
                    <label class="col-xs-2 control-label">备注：</label>
                    <div class="col-xs-10">
                        <textarea name="remark" autocomplete="off" maxlength="500" class="form-control"
                                  rows="3"></textarea>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<%@include file="../../common/include-footer.jsp" %>

<script src="/static/plugin/select/select2.js"></script>
<script>
    $("#admin").click(function (){
        $("#class_show").hide(1000)
    })
    $("#teacher").click(function (){
        $("#class_show").hide(1000)
    })
    $("#student").click(function (){
        $("#class_show").show(1000)
    })

    var prefix = "/system/user";

    function submitHandler() {
        var data = $("#form-user-add").serializeArray();
        var status = $("input[id='status']").is(':checked') == true ? 0 : 1;
        var flag =$("#student2").val()
        console.log(data)

        if (flag==3){
            $.operate.save(prefix + "/add", data);
        }else {
            data.splice(6,1)
            console.log(data)
            $.operate.save(prefix + "/add", data);
        }

    }



</script>
</body>
</html>
