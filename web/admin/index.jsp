<%-- 
    Document   : index
    Created on : Aug 7, 2022, 10:58:06 AM
    Author     : ABC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link rel="stylesheet" href="content/css/base.css">
    <link rel="stylesheet" href="content/css/grid.css">
    <link rel="stylesheet" href="content/css/admin/header.css">
    <link rel="stylesheet" href="content/css/admin/sidebar.css">
    <title>Admin</title>
</head>

<body>
    <div class="app">
        <header class="header">
            <div class="grid wide">
                <div class="header-wrap">
                    <div class="header__logo">
                        <i class="header__logo-icon fas fa-leaf"></i>
                        <span class="header__logo-text">Quản trị</span>
                    </div>
                    <div class="header__welcome">
                        <div class="header__welcome-item">
                            <i class="header__welcome-icon far fa-list-alt"></i>
                        </div>
                        <div class="header__welcome-item">
                            <i class="header__welcome-icon fas fa-bell"></i>
                        </div>
                        <div class="header__welcome-item">
                            <i class="header__welcome-icon fas fa-envelope"></i>
                        </div>
                        <div class="header__welcome-item">
                            xin chào NguyenTrieuTien
                            <ul class="header__welcome-item__board">
                                <li class="header__welcome-item__board-row">
                                    <a href="" class="header__welcome-item__board-link">
                                        <i class="header__welcome-item__board-icon fas fa-users-cog"></i>
                                        Cài đặt tài khoản
                                    </a>
                                </li>
                                <li class="header__welcome-item__board-row">
                                    <a href="" class="header__welcome-item__board-link">
                                        <i class="header__welcome-item__board-icon fas fa-user-plus"></i>
                                        Tạo tài khoản
                                    </a>
                                </li>
                                <li class="header__welcome-item__board-row">
                                    <a href="" class="header__welcome-item__board-link">
                                        <i class="header__welcome-item__board-icon fas fa-sign-out-alt"></i>
                                        Đăng xuất
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="container">
            <div class="grid wide">
                <div class="row">
                    <div class="col l-3">
                        <div class="sidebar__chooses">
                            <div class="sidebar__chooses-item">
                                <i class="sidebar__chooses-item__icon fas fa-border-all"></i>
                            </div>
                            <div class="sidebar__chooses-item">
                                <i class="sidebar__chooses-item__icon fas fa-edit"></i>
                               
                            </div>
                            <div class="sidebar__chooses-item">
                                <i class="sidebar__chooses-item__icon fas fa-border-all"></i>
                            </div>
                            <div class="sidebar__chooses-item">
                                <i class="sidebar__chooses-item__icon fas fa-cogs"></i>
                            </div>
                        </div>
                        <ul class="sidebar">
                            <li class="sidebar__item">
                                <i class="far fa-chart-bar"></i>
                                <a href="./index.html" class="sidebar__item-link">Thống kê</a>
                            </li>
                            <label for='check-sidebar-list' class="sidebar__item">
                                <i class="fas fa-ellipsis-v"></i>
                                <a href="./subcategory.html" class="sidebar__item-link">Danh mục sản phẩm</a>
                            </label>
                            <li class="sidebar__item">
                                <i class="fas fa-mobile-alt"></i>
                                <a href="./products.html" class="sidebar__item-link">Sản phẩm</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col l-9">
                        <div class="direct"><span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160; &#62;
                            &#160; Thống kê </div>
                        <div class="chart">
                            <div class="row">
                                <div class="col l-6">
                                    <div class="char-main" style="margin-bottom: 24px">
                                        <canvas id="chart1" style="width: 100%; height: 400px;"></canvas>
                                    </div>
                                </div>
                                <div class="col l-6">
                                    <div class="char-main" style="margin-bottom: 24px">
                                        <canvas id="chart2" style="width: 100%; height: 400px;"></canvas>
                                    </div>
                                </div>
                                <div class="col l-6">
                                    <div class="char-main" style="margin-bottom: 24px">
                                        <canvas id="chart3" style="width: 100%; height: 400px;"></canvas>
                                    </div>
                                </div>
                                <div class="col l-6">
                                    <div class="char-main" style="margin-bottom: 24px">
                                        <canvas id="chart4" style="width: 100%; height: 400px;"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
    <script src="../chart.js"></script>
</body>

</html>
