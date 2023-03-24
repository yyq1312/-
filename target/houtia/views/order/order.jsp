<%@ page import="com.item.model.orders" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022/7/6
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>订单管理</title>
    <!-- 图标-->
    <link rel="stylesheet" href="./views/vendor/bootstrap-icons/font/bootstrap-icons.css">
    <!-- 图标-->
    <link href="./views/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="./views/css/weiz.css" />

    <!-- 此模板的自定义样式 -->
    <link href="./views/css/nb-admin-2.min.css" rel="stylesheet">

    <!-- 此页面的自定义样式 -->
    <link href="./views/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- 页面包装 -->
<div id="wrapper">

    <!-- 侧边栏 -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- 侧边栏--->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href=#">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">轻薄荷管理系统<sup></sup></div>
        </a>

        <!-- 除法器-->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
            <a class="nav-link" href="./views/start/index.html">
                <i class="bi bi-house-door"></i>
                <span>回到首页</span></a>
        </li>



        <!-- 除法器-->
        <hr class="sidebar-divider">

        <div class="sidebar-heading">
            界面
        </div>

        <!-- 标题-->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
               aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-wrench"></i>
                <span>用户管理</span>
            </a>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">高级选项</h6>
                    <a class="collapse-item" href="/GetInfo">用户管理</a>

                </div>
            </div>
        </li>

        <!-- 导航项-实用程序折叠菜单-->



        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsestatistics"
               aria-expanded="true" aria-controls="collapsestatistics">
                <i class="fas fa-fw fa-wrench"></i>
                <span>商品管理</span>
            </a>
            <div id="collapsestatistics" class="collapse" aria-labelledby="headingUtilities"
                 data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">高级选项</h6>
                    <a class="collapse-item" href="/Gtinfocommodity">减脂商品信息管理</a>
                </div>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsesSenior"
               aria-expanded="true" aria-controls="collapsesSenior">
                <i class="fas fa-fw fa-wrench"></i>
                <span>健康百科管理</span>
            </a>
            <div id="collapsesSenior" class="collapse" aria-labelledby="headingUtilities"
                 data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">高级选项</h6>
                    <a class="collapse-item" href="../video/video set.html">健康百科设置</a>
                </div>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsesSeni"
               aria-expanded="true" aria-controls="collapsesSeni">
                <i class="fas fa-fw fa-wrench"></i>
                <span>订单管理管理</span>
            </a>
            <div id="collapsesSeni" class="collapse" aria-labelledby="headingUtilities"
                 data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">高级选项</h6>
                    <a class="collapse-item" href="/Gtinforders">订单管理设置</a>
                </div>
            </div>
        </li>
        <hr class="sidebar-divider">




        <!-- 侧边栏切换器（侧边栏）-->

        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

        <!-- 边栏消息-->



    </ul>
    <!-- 侧边栏结束-->

    <!-- 内容包装 -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- 主要内容 -->
        <div id="content">

            <!-- 顶部条 -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!--侧边栏状态切换 (顶部条) -->
                <form class="form-inline">
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>
                </form>

                <!-- 顶部条搜索 -->
                <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-0 small"
                               placeholder="搜索" aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>
                    </div>
                </form>

                <!-- 顶部条导航条 -->
                <ul class="navbar-nav ml-auto">

                    <!-- 导航项目-搜索下拉菜单 (看得见只有插座) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- 下拉-消息 -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                             aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small"
                                           placeholder="搜索" aria-label="Search"
                                           aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>

                    <!-- 导航项目-报警 -->


                    <!-- 导航项目-消息 -->


                    <div class="topbar-divider d-none d-sm-block"></div>

                    <!-- 导航项-用户信息 -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">汪汪队管理员</span>
                            <img style="height: 2rem;width: 2rem" class="../img-profile rounded-circle"
                                 src="./views/img/undraw_profile.svg">
                        </a>
                        <!-- 下拉菜单-用户信息 -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">

                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModa2">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                设置密码
                            </a>

                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                登出
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>


            <!-- 结束顶部条 -->

            <!-- 开始页面内容 -->
            <div class="container-fluid">



                <!-- 表单顶部 -->

                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">订单列表</h6>
                    </div>


                    <%List<orders> list= (List<orders>) request.getAttribute("list");%>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>订单编号</th>
                                    <th>收货人</th>
                                    <th>联系方式</th>
                                    <th>商品名称</th>
                                    <th>订单金额</th>
                                    <th>收货地址</th>
                                    <td>备注</td>
                                    <th>订单状态</th>
                                    <th>编辑</th>
                                    <th>操作</th>
                                </tr>
                                </thead>

                                <tbody>
                                <%
                                    for (int i=0;i<list.size();i++){
                                        orders o= list.get(i);
                                %>
                                <tr>
                                    <td><%=o.getBianhao()%></td>
                                    <td><%=o.getName()%></td>
                                    <td><%=o.getPhone()%></td>
                                    <td><%=o.getShopname()%></td>
                                    <td><%=o.getTotal()%></td>
                                    <td><%=o.getAddress()%></td>
                                    <td><%=o.getRemarks()%></td>
                                    <td><%=o.getStatus()%></td>
                                    <td><a id="<%=i%>" onclick="xiugai(this)"
                                           class="btn btn-sm btn-success	 btn-icon-split" data-toggle="modal" data-target="#Edit">
															<span class="icon text-white-50">
																<i class="bi bi-gear"></i>
															</span>
                                        <input type="hidden" name="Bianhao" value="<%=o.getBianhao()%>">
                                        <input type="hidden" name="Name" value="<%=o.getName()%>">
                                        <input type="hidden" name="Phone" value="<%=o.getPhone()%>">
                                        <input type="hidden" name="Address" value="<%=o.getAddress()%>">
                                        <input type="hidden" name="Shopname" value="<%=o.getShopname()%>">
                                        <span class="text">编辑</span>
                                    </a>
                                    </td>
                                    <td><a href="/DeleteOrders?bianhao=<%=o.getBianhao()%>" class="btn btn-sm btn-danger btn-icon-split">
															<span class="icon text-white-50">
																<i class="fas fa-trash"></i>
															</span>
                                        <span class="text">删除</span>
                                    </a>
                                    </td>

                                </tr>

                                <%}%>




                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>





            </div>
            <!-- /全屏-->

        </div>
        <!-- 主要内容结束 -->

        <!-- 页尾 -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>广西轻薄何科技公司</span>
                </div>
            </div>
        </footer>
        <!-- 页脚-结束 -->

    </div>
    <!-- 内容包装器结束 -->

</div>
<!-- 页面包装器结束 -->

<!-- 返回顶部-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- 退出-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">汪汪管理员</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">您确定要登出吗？</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>
                <a class="btn btn-primary" href="./views/login.html">登出</a>
            </div>
        </div>
    </div>
</div>

<!-- 编辑-->
<form action="/Updateorders" method="post">


<div class="modal fade" id="Edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">编辑订单</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body"><table class="tableStyle" formmode="transparent" usecolor="false" usehover="false" useclick="false" style="border: none; background-color: transparent;">
                <tbody>
                <tr style="border: none; background-color: transparent;">
                    <td width="100" style="text-align: right; padding-top: 3px; padding-bottom: 3px; border: none;">
                        订单编号：</td>
                    <td style="padding-top: 3px; padding-bottom: 3px; border: none;">
                        <input type="text"  name="bianhao" id="bianhao1" class="form-control" readonly="readonly">
                    <input type="hidden" name="shopname" value="" id="shopname1"></td>

                </tr>
                <tr style="border: none; background-color: transparent;">
                    <td style="text-align: right; padding-top: 3px; padding-bottom: 3px; border: none;">
                        收货人：</td>
                    <td style="padding-top: 3px; padding-bottom: 3px; border: none;">
                        <input type="text" name="name" id="name1" class="form-control" >
                    </td>
                </tr>
                <tr style="border: none; background-color: transparent;">
                    <td style="text-align: right; padding-top: 3px; padding-bottom: 3px; border: none;">
                        联系方式：</td>
                    <td style="padding-top: 3px; padding-bottom: 3px; border: none;">
                        <input type="text" name="phone" class="form-control" id="phone1" >
                    </td>
                </tr>
                <tr style="border: none; background-color: transparent;">
                    <td style="text-align: right; padding-top: 3px; padding-bottom: 3px; border: none;">
                        收货地址：</td>
                    <td style="padding-top: 3px; padding-bottom: 3px; border: none;">
                        <input type="text" name="address" class="form-control" id="address1" >
                    </td>
                </tr>
                <tr style="border: none; background-color: transparent;">
                    <td style="text-align: right; padding-top: 3px; padding-bottom: 3px; border: none;">
                        订单状态：</td>
                    <td style="padding-top: 3px; padding-bottom: 3px; border: none;">
                        <select class="form-control" name="status" aria-label="Default select example">
                            <option selected>请选择你的订单状态</option>
                            <option value="未发货">未发货</option>
                            <option value="已发货">已发货</option>
                            <option value="完成退货">完成退货</option>
                        </select>
                    </td>
                </tr>
                </tbody>
            </table></div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>
                <button class="btn btn-primary" type="submit" >保存</button>
            </div>
        </div>
    </div>
</div>
</form>
<!-- 引导核心JavaScript -->
<script src="./views/vendor/jquery/jquery.min.js"></script>
<%--<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>--%>
<script src="./views/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- 核心插件JavaScript-->
<script src="./views/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- 所有页面的自定义脚本-->
<script src="./views/js/nb-admin-2.min.js"></script>

<!-- 页面级别的插件 -->
<script src="./views/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="./views/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- 页面级自定义脚本 -->
<script src="./views/js/demo/datatables-demo.js"></script>
<script>
    function xiugai(a) {
        var leng=a.id;
        var Bianhao=document.getElementsByName("Bianhao")[leng].value
        var shopname1=document.getElementsByName("Shopname")[leng].value
        var Name=document.getElementsByName("Name")[leng].value
        var Phone=document.getElementsByName("Phone")[leng].value
        var Address=document.getElementsByName("Address")[leng].value
        document.getElementById("bianhao1").value=Bianhao
        document.getElementById("name1").value=Name
        document.getElementById("phone1").value=Phone
        document.getElementById("address1").value=Address
        document.getElementById("shopname1").value=shopname1

    }
</script>
</body>

</html>

