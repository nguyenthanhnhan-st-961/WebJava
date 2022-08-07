<%-- 
    Document   : insert
    Created on : Aug 7, 2022, 11:12:32 AM
    Author     : ABC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" 
              integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" 
              crossorigin="anonymous"/>

        <link rel="stylesheet" href="content/css/base.css">
        <link rel="stylesheet" href="content/css/grid.css">
        <link rel="stylesheet" href="content/css/admin/header.css">
        <link rel="stylesheet" href="content/css/admin/sidebar.css">
        <link rel="stylesheet" href="content/css/admin/insert.css">

        <title>Thêm và Cập Nhật</title>
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
                                    <i class="sidebar__chooses-item__icon far fa-chart-bar"></i>
                                </div>
                                <div class="sidebar__chooses-item">
                                    <i class="sidebar__chooses-item__icon fas fa-pen"></i>
                                </div>
                                <div class="sidebar__chooses-item">
                                    <i class="sidebar__chooses-item__icon fas fa-mask"></i>
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
                                <label for = 'check-sidebar-list' class="sidebar__item">
                                    <i class="sidebar__item-icon fas fa-ellipsis-v"></i>
                                    <a  href="./subcategory.html" class="sidebar__item-link">Danh mục sản phẩm</a>
                                </label>


                                <li class="sidebar__item">
                                    <i class="fas fa-mobile-alt"></i>
                                    <a href="./products.html" class="sidebar__item-link">Sản phẩm</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col l-9">
                            <div class="direct"><span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160; &#62; &#160; Thêm hoặc sửa </div>
                            <form action="" class="form">
                                <h2 class="form__title">THÊM SẢN PHẨM</h2>
                                <div class="form-group">
                                    <lable class="form__label">Tên sản phẩm:</lable>
                                    <input id="product-name" type="text" class="form__input" placeholder="Samsung Galaxy Z Fold3 5G">
                                </div>
                                <div class="form-group">
                                    <lable class="form__label">Giá sản phẩm (VND):</lable>
                                    <input id="product-price" type="text" class="form__input" placeholder="41.990.000">
                                </div>
                                <div class="form-group">
                                    <lable class="form__label">Số lượng:</lable>
                                    <input id="product-quantity" type="text" class="form__input" placeholder="10">
                                </div>
                                <div class="form-group">
                                    <lable class="form__label">Phần trăm giảm giá (nếu có):</lable>
                                    <input id="product-sale" type="text" class="form__input" placeholder="5">
                                </div>
                                <div class="form-group">
                                    <lable class="form__label">Loại sản phẩm:</lable>
                                    <select id="product-sale" class="form__input">
                                        <option value="">Chọn loại sản phẩm</option>
                                        <option value="">iPhone</option>
                                        <option value="">Samsung</option>
                                        <option value="">Oppo</option>
                                        <option value="">Vivo</option>
                                    </select>
                                </div>
                                <label for="" class="form__label">Chọn ảnh:</label>
                                <div class="form-group-img">
                                    <div class="form__img-wrap">
                                        <label for = 'img1' class="form__img-icon fas fa-plus"></label>
                                        <img id="form__img1" src="https://tse1.explicit.bing.net/th?id=OIP.f5HFfATvhFIhdbj2mQeAKwHaEo&pid=Api&P=0&w=244&h=153" alt="" class="form__img">
                                    </div>
                                    <div class="form__img-wrap">
                                        <label for="img2" class="form__img-icon fas fa-plus"></label>
                                        <img id="form__img2" src="https://tse1.explicit.bing.net/th?id=OIP.f5HFfATvhFIhdbj2mQeAKwHaEo&pid=Api&P=0&w=244&h=153" alt="" class="form__img">
                                    </div>
                                    <input hidden id="img1" type="file" class="form__input">
                                    <input hidden id="img2" type="file" class="form__input">
                                </div>
                                <div class="form-group-button">
                                    <input id="reset" class="form__btn" type="reset" value = 'Nhập lại'>
                                    <input class="form__btn" type="submit" value = 'Tạo mới'>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            const img1 = document.getElementById('form__img1');
            const img2 = document.getElementById('form__img2');
            const inputImg1 = document.getElementById('img1');
            const inputImg2 = document.getElementById('img2');
            const btnReset = document.getElementById('reset');

            let file1, file2;

            inputImg1.onchange = e => {
                file1 ? URL.revokeObjectURL(file1) : undefined;
                file1 = URL.createObjectURL(e.target.files[0]);
                img1.setAttribute('src', file1);
            }
            inputImg2.onchange = e => {
                file2 ? URL.revokeObjectURL(file2) : undefined;
                file2 = URL.createObjectURL(e.target.files[0]);
                img2.setAttribute('src', file2);
            }
            btnReset.onclick = e => {
                URL.revokeObjectURL(file1);
                URL.revokeObjectURL(file2);
                img1.setAttribute('src', 'https://tse1.explicit.bing.net/th?id=OIP.f5HFfATvhFIhdbj2mQeAKwHaEo&pid=Api&P=0&w=244&h=153');
                img2.setAttribute('src', 'https://tse1.explicit.bing.net/th?id=OIP.f5HFfATvhFIhdbj2mQeAKwHaEo&pid=Api&P=0&w=244&h=153');
            }

        </script>
    </body>
</html>