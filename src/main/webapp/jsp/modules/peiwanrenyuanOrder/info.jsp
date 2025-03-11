<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>

</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto" id="navUl">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑陪玩人员订单</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">陪玩人员订单管理</li>
                        <li class="breadcrumb-item active">陪玩人员订单登记</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">陪玩人员订单信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表所有字段 -->

                                        <div class="form-group col-md-6">
                                            <label>用户姓名</label>
                                            <input style="width: 450px" id="yonghuName" name="yonghuName" class="form-control"
                                                   v-model="ruleForm.yonghuName" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>陪玩人员姓名</label>
                                            <input style="width: 450px" id="peiwanrenyuanName" name="peiwanrenyuanName" class="form-control"
                                                   v-model="ruleForm.peiwanrenyuanName" readonly>
                                        </div>

                            <!-- 本表所有字段 -->



                                    <input id="updateId" name="id" type="hidden">

                                    <div class="form-group col-md-6">
                                        <label>订单号</label>
                                        <input style="width: 450px" id="peiwanrenyuanOrderUuidNumber" name="peiwanrenyuanOrderUuidNumber" class="form-control"
                                               v-model="ruleForm.peiwanrenyuanOrderUuidNumber" readonly>
                                    </div>

                                <input id="peiwanrenyuanId" name="peiwanrenyuanId" v-model="ruleForm.peiwanrenyuanId" readonly type="hidden">
                                <input id="yonghuId" name="yonghuId" v-model="ruleForm.yonghuId" readonly type="hidden">

                                <div class="form-group col-md-6">
                                    <label>陪玩游戏</label>
                                    <input style="width: 450px" id="youxiValue" name="youxiValue" class="form-control"
                                           v-model="ruleForm.youxiValue" readonly>
                                </div>

                                    <div class="form-group col-md-6">
                                        <label>开始时间</label>
                                        <input style="width: 450px" id="kaishiTime" name="kaishiTime" class="form-control"
                                               v-model="ruleForm.kaishiTime" readonly>
                                    </div>


                                    <div class="form-group col-md-6">
                                        <label>购买小时</label>
                                        <input style="width: 450px" id="buyNumber" name="buyNumber" class="form-control"
                                               v-model="ruleForm.buyNumber" readonly>
                                    </div>


                                    <div class="form-group col-md-6">
                                        <label>实付价格</label>
                                        <input style="width: 450px" id="peiwanrenyuanOrderTruePrice" name="peiwanrenyuanOrderTruePrice" class="form-control"
                                               v-model="ruleForm.peiwanrenyuanOrderTruePrice" readonly>
                                    </div>


                                <div class="form-group col-md-6">
                                    <label>订单类型</label>
                                    <input style="width: 450px" id="peiwanrenyuanOrderValue" name="peiwanrenyuanOrderValue" class="form-control"
                                           v-model="ruleForm.peiwanrenyuanOrderValue" readonly>
                                </div>

                                <div class="form-group col-md-6">
                                    <label>支付类型</label>
                                    <input style="width: 450px" id="peiwanrenyuanOrderPaymentValue" name="peiwanrenyuanOrderPaymentValue" class="form-control"
                                           v-model="ruleForm.peiwanrenyuanOrderPaymentValue" readonly>
                                </div>
                                <div class="form-group col-md-12 mb-3">
                                    <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

<script>
    <%@ include file="../../utils/menu.jsp"%>
            <%@ include file="../../static/setMenu.js"%>
            <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "peiwanrenyuanOrder";
    var pageType = "add-or-update";
    var updateId = "";

    var youxiTypesOptions = [];
    var peiwanrenyuanOrderTypesOptions = [];
    var peiwanrenyuanOrderPaymentTypesOptions = [];

    var ruleForm = {};
    var vm = new Vue({
        el: '#addOrUpdateForm',
        data: {
            ruleForm: {},
        },
        beforeCreate: function () {
            var id = window.sessionStorage.getItem("updateId");
            if (id != null && id != "" && id != "null") {
                $.ajax({
                    type: "GET",
                    url: baseUrl + "peiwanrenyuanOrder/info/" + id,
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function (res) {
                        if (res.code == 0) {
                            vm.ruleForm = res.data;
                            ruleForm = res.data;
                            showImg();
                            setContent();
                        } else if (res.code == 401) {
                        <%@ include file="../../static/toLogin.jsp"%>
                        } else {
                            alert(res.msg)
                        }
                    },
                });
            }
        },
        methods: {}
    });


    // 填充富文本框
    function setContent() {

    }

    //图片显示
    function showImg() {
        $("#yonghuPhotoImg").attr("src", ruleForm.yonghuPhoto);
        $("#peiwanrenyuanPhotoImg").attr("src", ruleForm.peiwanrenyuanPhoto);
    }

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addpeiwanrenyuanOrder');
        window.location.href = "list.jsp";
    }

    // 下载
    function download(fileName) {
        var url = baseUrl+'file/download?fileName='+fileName;
        window.open(url);
    }

    //设置下载
    function setDownloadBtn() {

    }

    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });


    <%@ include file="../../static/myInfo.js"%>
    });
    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
