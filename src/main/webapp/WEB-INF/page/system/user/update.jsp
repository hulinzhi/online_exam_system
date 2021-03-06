<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<%@include file="../../common/include-header.jsp" %>
<body>
<div class="form-content">
    <form id="form-user-update" class="form-horizontal">
        <h4 class="form-header h4">基本信息</h4>
        <input type="hidden" name="id" value="${user.id}">
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="col-sm-4 control-label"><span style="color: red; ">*</span>用户名称：</label>
                    <div class="col-sm-8">
                        <input name="nickName" autocomplete="off" placeholder="请输入用户名称" class="form-control" type="text"
                               value="${user.nickName}"
                               maxlength="30" required>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="col-sm-4 control-label"><span style="color: red; ">*</span>手机号码：</label>
                    <div class="col-sm-8">
                        <input name="tel" autocomplete="off" placeholder="请输入手机号码" class="form-control"
                               value="${user.tel}"
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
                               value="${user.email}"
                               placeholder="请输入邮箱" required>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="col-sm-4 control-label"><span style="color: red; ">*</span>登录账号：</label>
                    <div class="col-sm-8">
                        <input placeholder="请输入登录账号" autocomplete="off" class="form-control required"
                               value="${user.loginName}"
                               readonly
                               type="text" maxlength="30" required>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="col-xs-4 control-label">角色：</label>
                    <div class="col-xs-8">
                        <label class="radio-box" id="admin">
                            <input name="userType" type="radio" value="1" ${("1" eq user.userType)?"checked":""  }>管理员
                        </label>
                        <label class="radio-box" id="teacher">
                            <input name="userType" type="radio" value="2" ${("2" eq user.userType)?"checked":""  }>教师
                        </label>
                        <label class="radio-box" id="student">
                            <input name="userType" id="student2" type="radio" value="3" ${("3" eq user.userType)?"checked":""  }>学生
                        </label>
                    </div>
                </div>
            </div>
            <div class="col-sm-6" id="class_show">
                <label class="col-sm-4 control-label">学生班级：</label>
                <div class="col-sm-8">
                    <select name="classId"  id="clazzIds" class="form-control select2-hidden-accessible required" required>
                        <option value="">请选择</option>
                        <c:forEach items="${clazzList}" var="i">
                            <option value="${i.classId}"  <c:if test="${i.classId==user.classId}">selected="selected"</c:if>>${i.className}</option>
                        </c:forEach>
                    </select>
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

    $(document).ready(function () {
        // console.log("ssss",$("#student2").val(),$("#student2")[0].defaultChecked)
        if(!$("#student2")[0].defaultChecked) {
            $("#class_show").hide(0)
        }
    })

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
        var data = $("#form-user-update").serializeArray();
        var status = $("input[id='status']").is(':checked') == true ? 0 : 1;
        // $.operate.savePut(prefix + "/update", data);
        var flag =$("#student2").val()
        // console.log(data)

        if (flag==3){
            $.operate.savePut(prefix + "/update", data);
        }else {
            data.splice(6,1)
            console.log(data)
            $.operate.savePut(prefix + "/update", data);
        }
    }

</script>
</body>
</html>
