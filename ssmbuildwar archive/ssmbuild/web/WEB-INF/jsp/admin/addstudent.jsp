<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--BootStrap美化界面--%>
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<html>
<head>
    <title>Title</title>
    <script>
        getDates();
        function getDates(){
            //设置当前时间
            var date = new Date();
            var year = date.getFullYear();//月份从0~11，所以加一
            var dateArr = [date.getMonth() + 1,date.getDate(),date.getHours(),date.getMinutes(),date.getSeconds()];
            for(var i=0;i<dateArr.length;i++){
                if (dateArr[i] >= 1 && dateArr[i] <= 9) {
                    dateArr[i] = "0" + dateArr[i];
                }
            }
            var strDate = year+'-'+dateArr[0]+'-'+dateArr[1]+' '+dateArr[2]+':'+dateArr[3]+':'+dateArr[4];
            document.getElementById("dates").value = strDate.toString();
        }
    </script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>学员列表------新增学员</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/admin_stu/addstudent" method="post">
        <div class="form-group">
            <label for="subject_s">学科:</label>
            <input type="text" class="form-control" name="subject_s" id="subject_s" required>
        </div>
        <div class="form-group">
            <label for="sex_s">学员性别:</label>
            <input type="text" class="form-control" name="sex_s" id="sex_s" required>
        </div>
        <div class="form-group">
            <label for="city">市:</label>
            <input type="text" class="form-control" name="city" id="city" value="温州市" required>
        </div>
        <div class="form-group">
            <label for="plot">区:</label>
            <input type="text" class="form-control" name="plot" id="plot" value="龙湾区" required>
        </div>
        <div class="form-group">
            <label for="address">详细地址:</label>
            <input type="text" class="form-control" name="address" id="address" required>
        </div>
        <div class="form-group">
            <label for="condition_s">接单情况:</label>
            <input type="text" class="form-control" name="condition_s" id="condition_s" value="未接单" required>
        </div>
        <div class="form-group">
            <label for="need_sex">所需教员性别:</label>
            <input type="text" class="form-control" name="need_sex" id="need_sex" required>
        </div>
        <div class="form-group">
            <label for="need_work">工作内容与需求:</label>
            <input type="text" class="form-control" name="need_work" id="need_work" required>
        </div>
        <div class="form-group">
            <label for="salary">薪资:</label>
            <input type="text" class="form-control" name="salary" id="salary" required>
        </div>
        <div class="form-group">
            <label for="date">日期:</label>
            <input type="text" class="form-control" name="date" id="date"  required>
            <SCRIPT LANGUAGE="JavaScript">
                var now = new Date();
                date.value=now.getFullYear() + "-"+ (now.getMonth()+1)+"-"+now.getDate();
            </SCRIPT>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>
    </form>
</div>

</body>
</html>
