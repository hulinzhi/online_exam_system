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
                    <label class="col-sm-4 control-label"><span style="color: red; ">*</span>班级名称：</label>
                    <div class="col-sm-8">
                        <input name="className" autocomplete="off" placeholder="请输入用户名称" class="form-control" type="text"
                               maxlength="30" required>
                    </div>
                </div>
            </div>
        </div>




    </form>
</div>

<%@include file="../../common/include-footer.jsp" %>

<script src="/static/plugin/select/select2.js"></script>
<script>


    var prefix = "/system/class";

    function submitHandler() {
        var data = $("#form-user-add").serializeArray();

        console.log(data)


            $.operate.save(prefix + "/add", data);




    }



</script>
</body>
</html>
