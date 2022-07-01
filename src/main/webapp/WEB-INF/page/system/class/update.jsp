<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="../../common/include-header.jsp" %>
<body>
<div class="form-content">
    <form id="form-notice-update" class="form-horizontal">
        <h4 class="form-header h4">基本信息</h4>
        <input type="hidden" name="classId" value="${clazz.classId}"/>
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="col-sm-4 control-label"><span style="color: red; ">*</span>班级名字：</label>
                    <div class="col-sm-8">
                        <input name="className" autocomplete="off" placeholder="请输入" class="form-control" type="text"
                               value="${clazz.className}"
                               maxlength="30" required>
                    </div>
                </div>
            </div>
        </div>


<%@include file="../../common/include-footer.jsp" %>

<script src="/static/plugin/select/select2.js"></script>
<script>
    var prefix = "/system/class";

    function submitHandler() {
        var data = $("#form-notice-update").serializeArray();
        $.operate.savePut(prefix + "/update", data);
    }

</script>
</body>
</html>
