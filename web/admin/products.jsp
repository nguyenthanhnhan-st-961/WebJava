<%-- 
    Document   : products
    Created on : Aug 7, 2022, 11:13:24 AM
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
    integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" 
    crossorigin="anonymous"/>
    
     <link rel="stylesheet" href="content/css/base.css">
    <link rel="stylesheet" href="content/css/grid.css">
    <link rel="stylesheet" href="content/css/admin/header.css">
    <link rel="stylesheet" href="content/css/admin/sidebar.css">
    <link rel="stylesheet" href="content/css/admin/products.css">
    <link rel="stylesheet" href="content/css/admin/pagination.css">
    
    <title>Tất cả sản phẩm</title>
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
                    <div class="col l-3 m-3 c-12">
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
                    <div class="col l-9 m-9 c-12">
                        <div class="direct"><span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160; &#62; &#160; Tất cả sản phẩm </div>
                        <div class="action">
                            <form action="" class="action__form">
                                <input class="action__form-input" type="text" placeholder="Tìm kiếm sản phẩm...">
                                <input class="action__form-btn" type="submit" value="Tìm kiếm">
                            </form>
                            <div class="action__button">
                                <a title="Thêm sản phẩm" href="./insert.html" class="action__add">
                                    <i class="action-icon fas fa-plus"></i>
                                </a>
                                <a title="Xóa sản phẩm" href="" class="action__delete">
                                    <i class="action-icon far fa-trash-alt"></i>
                                </a>
                            </div>
                        </div>
                        <div class="products">
                            <div class="products__header">
                                <p class="products__header-column products__header-choose">Chọn</p>
                                <div class="products__header-column products__header-name">Tên sản phẩm</div>
                                <div class="products__header-column products__header-quantity">Số lượng</div>
                                <div class="products__header-column products__header-price">Giá</div>
                                <div class="products__header-column products__header-update">Chỉnh sửa</div>
                            </div>
                            <div class="products__body-wrap">
                                <div class="products__body">
                                    <div class="products__body-column products__body-choose">
                                        <input class="check-delete" type="checkbox">
                                    </div>
                                    <div class="products__body-column products__body-name">Samsung Galaxy Z Fold3 5G</div>
                                    <div class="products__body-column products__body-quantity">59</div>
                                    <div class="products__body-column products__body-price">42.000.000đ</div>
                                    <div class="products__body-column products__body-update">
                                        <a title="chỉnh sửa sản phẩm" href="./insert.html" class="Products__body-icon far fa-edit"></a>
                                    </div>
                                </div>
                                <div class="products__body">
                                    <div class="products__body-column products__body-choose">
                                        <input class="check-delete" type="checkbox">
                                    </div>
                                    <div class="products__body-column products__body-name">iPhone 12</div>
                                    <div class="products__body-column products__body-quantity">46</div>
                                    <div class="products__body-column products__body-price">20.490.000đ</div>
                                    <div class="products__body-column products__body-update">
                                        <a title="chỉnh sửa sản phẩm" href="" class="Products__body-icon far fa-edit"></a>
                                    </div>
                                </div>
                                <div class="products__body">
                                    <div class="products__body-column products__body-choose">
                                        <input class="check-delete" type="checkbox">
                                    </div>
                                    <div class="products__body-column products__body-name">OPPO Reno6 Z 5G</div>
                                    <div class="products__body-column products__body-quantity">33</div>
                                    <div class="products__body-column products__body-price">9.490.000đ</div>
                                    <div class="products__body-column products__body-update">
                                        <a title="chỉnh sửa sản phẩm" href="" class="Products__body-icon far fa-edit"></a>
                                    </div>
                                </div>
                                <div class="products__body">
                                    <div class="products__body-column products__body-choose">
                                        <input class="check-delete" type="checkbox">
                                    </div>
                                    <div class="products__body-column products__body-name">Vivo V23e</div>
                                    <div class="products__body-column products__body-quantity">28</div>
                                    <div class="products__body-column products__body-price">8.490.000đ</div>
                                    <div class="products__body-column products__body-update">
                                        <a title="chỉnh sửa sản phẩm" href="" class="Products__body-icon far fa-edit"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pagination">
                            <ul class="pagination__list">
                                <li class="pagination__list-item">
                                    <a href="" class="pagination__list-item__link active">1</a>
                                </li>
                                <li class="pagination__list-item">
                                    <a href="" class="pagination__list-item__link">2</a>
                                </li>
                                <li class="pagination__list-item">
                                    <a href="" class="pagination__list-item__link"><i class="fas fa-chevron-right"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        const btnDelete = document.querySelector('.action__delete');
        const checkDeletes = document.querySelectorAll('.check-delete');

        checkDeletes.forEach(check => {
            check.onclick = e => {
                const checkEl = [...checkDeletes].find(item => {
                    return item.matches('.check-delete:checked');
                })
                if(checkEl) {
                    btnDelete.style = `opacity: 1; pointer-events: all`;
                }else {
                    btnDelete.style = `opacity: 0.5; pointer-events: none`;
                }
            }
        })

    </script>
</body>
</html>