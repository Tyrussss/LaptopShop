<%-- 
    Document   : index
    Created on : Sep 6, 2021, 6:45:45 PM
    Author     : TuyenTyrusNg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    
    <link rel='shortcut icon' type='image/x-icon' href='/favicon.png' />

    <title>LaptopShop Website</title>
    
    <link rel="canonical" href="https://trongtuyen.xyz" />
    <meta property="og:image" content="https://khoavang.vn/resources/uploads/data/logo-new-v1.jpg" />


    <!-- <meta property="og:image:width" content="200" />
<meta property="og:image:height" content="200" /> -->
    <meta name="theme-color" content="#317EFB" />
    <link rel="manifest" href="/manifest.json">

    <meta property="fb:app_id" content="" />
    <meta name="geo.region" content="VN-SG" />
    <meta name="geo.placename" content="Hồ Chí Minh" />
    <meta name="geo.position" content="" />
    <meta name="ICBM" content="" />
    <meta id="MetaCopyright" name="COPYRIGHT" content="" />
    <meta id="MetaGenerator" name="GENERATOR" content="" />
    <meta id="MetaAuthor" name="AUTHOR" content="" />
    <meta name="RESOURCE-TYPE" content="DOCUMENT" />
    <meta name="DISTRIBUTION" content="GLOBAL" />
    <meta name="REVISIT-AFTER" content="1 DAYS" />
    <meta name="dc.language" content="VN">
    <meta name="dc.source" content="">
    <meta name="google-site-verification" content="G1fkaqn3gSDqwZ1l_Qko5yU5ZK6mUOc0Gi9oVmo7Skc" />
    <meta name="dc.creator" content="" />
    <link rel="author" href="" />
    <link rel="publisher" href="" />
    <meta property="article:author" content="">
    <!-- Google Tag Manager -->
    <script>(function (w, d, s, l, i) {
            w[l] = w[l] || []; w[l].push({
                'gtm.start':
                    new Date().getTime(), event: 'gtm.js'
            }); var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
                    'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-K5QPV74');</script>
    <!-- End Google Tag Manager -->

    <link rel="dns-prefetch" href="https://trongtuyen.xyz">


    


    <link as="style" onload="this.rel='stylesheet'" rel="preload" type="text/css" rel="stylesheet"
        href="CSS/style.css">

    <link type="text/css" rel="stylesheet" href="CSS/style.css">



    <script type="text/javascript">
        var base_url = '';
        var customer_id = 0;
        var module = 'home';
        var isMobile = '';
        var urlcate = '';
        var url_current = '';
        var cart_count = 0;
    </script>



    <script type="text/javascript">
        WebFontConfig = {
            google: { families: ['Roboto Condensed:400,700'] },
        };
        (function () {
            var wf = document.createElement('script');
            wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
            wf.type = 'text/javascript';
            wf.async = 'true';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(wf, s);
        })();
    </script>

</head>


<body>


    <header id="header">
<!--        header  -->
        <jsp:include page="header.jsp"/> 
               

        <div class="header-main">
            <div class="container">
                <div class="row no-gutters align-items-end">
                    <div class="header-logo col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3"> <a href="" class="logo"><img
                                src="logo.jpg" width="232" alt=""></a>
                        <div class="action-mobile">
                            <div class="cart-mobile"><a href="/checkout/cart"><i class="ico ico-cart"></i><span
                                        class="num">0</span></a></div>
                            <div class="burger-mobile">
                                <div class="burger-icon"></div>
                            </div>
                        </div>
                    </div>
                    <div class="header-search col-12 col-sm-12 col-md-12 col-lg-7 col-xl-7">
                        <div class="box-form-search">
                            <form action="/search" method="get" autocomplete="off"> <input type="text" name="q"
                                    class="form-control input-keyword" placeholder="Nhập tên sản phẩm muốn tìm kiếm">
                                <button type="submit" class="search-submit-btn"><i class="ico ico-search"></i></button>
                            </form>
                            <div class="most-keywords">
                                <div class="wrap-keyword">
                                    <div class="keyword"></div>
                                </div>
                                <div class="keywords">
                                    <div class="tit">Từ khóa được tìm kiếm nhiều nhất</div>
                                    <div class="item-key"><a href="">X1 Carbon Gen 3</a></div>
                                    <div class="item-key"><a href="">HP EliteBook 840 G3</a></div>
                                    <div class="item-key"><a href="">HP Z400 Workstation</a></div>
                                    <div class="item-key"><a href="">Microsoft Surface Pro 4</a></div>
                                    <div class="item-key"><a href="">Dell Latitude 7480</a></div>
                                    <div class="item-key"><a href="">Dell Precision 7510</a></div>
                                    <div class="item-key"><a href="">Dell Precision 5530</a></div>
                                    <div class="item-key"><a href="">ThinkPad X260</a></div>
                                    <div class="item-key"><a href="">Máy tính để bàn</a></div>
                                    <div class="item-key"><a href="/search?q=Workstation">Workstation</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="box-hotline"><a href="tel:1800 6820"><span>HOTLINE</span> +1 949 666 3839</a></div>
                    </div>
                    <div class="header-app col-2">
                        <div class="download-app"><br> <a href="#"> </div>
                        <div class="qr-code"><img src="images/barcode.png" width="52" alt="QR Code"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-navbar">
            <div class="container">
                <div class="row">
                    <div class="header-menu">
                        <div class="overlay"></div>
                        <div class="header-burger">
                            <div class="burger-icon" style="pointer-events: none;"></div> <span>All Categories</span>
                        </div>
                        
                        
                        <jsp:include page="/MenuPageServlet"/> 
                        
                        
                        
                        
                    </div>
                    <div class="header-service">
                        <div class="service-list row no-gutters">
                            <div class="item-service col-6 col-md-3"><a href="/san-pham-khuyen-mai"><i
                                        class="ico ico-flashsale"></i>
                                    <div class="txt"><span>FLASHSALE</span><small>Khuyến mãi giá sốc</small></div>
                                </a></div>
                            <div class="item-service col-6 col-md-3"><a href="/mua-tra-gop"><i
                                        class="ico ico-installment"></i>
                                    <div class="txt"><span>MUA TRẢ GÓP</span><small>Thủ tục nhanh gọn</small></div>
                                </a></div>
                            <div class="item-service col-6 col-md-3"><a href="/ho-tro/giao-hang-thanh-toan-p393.html"><i
                                        class="ico ico-shipping"></i>
                                    <div class="txt"><span>GIAO HÀNG SIÊU TỐC</span><small>Áp dụng COD toàn quốc</small>
                                    </div>
                                </a></div>
                            <div class="item-service col-6 col-md-3"><a href="/ho-tro/quy-dinh-bao-hanh-p391.html"><i
                                        class="ico ico-service"></i>
                                    <div class="txt"><span>DỊCH VỤ KHÁC</span><small>Các dịch vụ theo yêu cầu</small>
                                    </div>
                                </a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>



            </div>
            <section class="section-top-flashsale">
                <div class="container">
                    <div class="row">
                        <div class="flashsale-info col-12 col-sm-12 col-md-4 col-lg-3 col-xl-2">
                            <h2 class="flashsale-title"><i>LaptopShop</i><span>Flash Sale</span></h2>
                            <div class="flashsale-datetime">
                                <div class="date-title"><i class="ico ico-history"></i>Thời gian còn:</div>
                                <div class="date-countdown" id="countdown" data-date="2021-08-27T01:05">
                                    <div class="count-item"><span class="num" id="day">00</span><span
                                            class="text">Ngày</span></div>
                                    <div class="count-item"><span class="num" id="hours">00</span><span
                                            class="text">Giờ</span></div>
                                    <div class="count-item"><span class="num" id="minutes">00</span><span
                                            class="text">Phút</span></div>
                                    <div class="count-item"><span class="num" id="seconds">00</span><span
                                            class="text">Giây</span></div>
                                </div>
                            </div>
                        </div>
                        <div class="flashsale-products col-12 col-sm-12 col-md-8 col-lg-9 col-xl-10">
                            <div class="flashsale-products-wrap">
                                <div class="flashsale-slider owl-carousel">
                                    <div class="slide-item">
                                        <div class="product-item">
                                            <div class="pro-info">
                                                <div class="pro-img"> <a
                                                        href="">
                                                        <img class="lazy"
                                                            src="https://khoavang.vn/resources/cache/400x400x3/data/dell/Latitude-9410-2-in-1/9410-ava-khoavang-1629011729.jpg"
                                                            width="222" alt=""> </a> </div>
                                                <div class="pro-meta">
                                                    <h3 class="pro-name"><a
                                                            href="">Dell
                                                            Latitude 9410 Core i7 Touch X360 2-in-1</a></h3>
                                                    <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình
                                                    </div>
                                                </div>
                                                <div class="pro-price"> <span class="promotion-price">29.500.000
                                                        đ</span> </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-item">
                                        <div class="product-item">
                                            <div class="pro-info">
                                                <div class="pro-img"> <a
                                                        href="">
                                                        <img class="lazy"
                                                            src="https://khoavang.vn/resources/cache/400x400x3/ADDO/NewFolder/Pavilion-14-2021-1629451730.jpg"
                                                            width="222" alt=""> </a> </div>
                                                <div class="pro-meta">
                                                    <h3 class="pro-name"><a
                                                            href="">Hp
                                                            Pavilion 14 2021 Ryzen 5</a></h3>
                                                    <div class="pro-version">Có <strong>2</strong> phiên bản cấu hình
                                                    </div>
                                                </div>
                                                <div class="pro-price"> <span class="promotion-price">19.000.000
                                                        đ</span> </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-item">
                                        <div class="product-item">
                                            <div class="pro-info">
                                                <div class="pro-img"> <a
                                                        href="">
                                                        <img class="lazy"
                                                            src="https://khoavang.vn/resources/cache/400x400x3/data/hinh_content_laptop_dell/lenovo-thinkpad-x1-carbon-gen5-review-10.jpg"
                                                            width="222" alt=""> </a> </div>
                                                <div class="pro-meta">
                                                    <h3 class="pro-name"><a
                                                            href="">Lenovo
                                                            ThinkPad X1 Carbon Gen 5 Core i7</a></h3>
                                                    <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình
                                                    </div>
                                                </div>
                                                <div class="pro-price"> <span class="promotion-price">16.000.000
                                                        đ</span> </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-item">
                                        <div class="product-item">
                                            <div class="pro-info">
                                                <div class="pro-img"> <a
                                                        href="">
                                                        <img class="lazy"
                                                            src="https://khoavang.vn/resources/cache/400x400x3/ADDO/NewFolder/Dell-7210-core-i5-1629521662.jpg"
                                                            width="222" alt=""> </a> </div>
                                                <div class="pro-meta">
                                                    <h3 class="pro-name"><a
                                                            href="">Dell
                                                            Latitude 7210 2-in-1 Touchsreen X360 ...</a></h3>
                                                </div>
                                                <div class="pro-price"> <span class="promotion-price">22.000.000
                                                        đ</span> </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-item">
                                        <div class="product-item">
                                            <div class="pro-info">
                                                <div class="pro-img"> <a
                                                        href="">
                                                        <img class="lazy"
                                                            src="https://khoavang.vn/resources/cache/400x400x3/data/dell/Precision-5530/5530-ava-khoavangvn-1628880818.jpg"
                                                            width="222" alt=""> </a> </div>
                                                <div class="pro-badge">-17%</div>
                                                <div class="pro-meta">
                                                    <h3 class="pro-name"><a
                                                            href="">Dell
                                                            Precision 5530 Core i7 - P2000</a></h3>
                                                    <div class="pro-version">Có <strong>2</strong> phiên bản cấu hình
                                                    </div>
                                                </div>
                                                <div class="pro-price"> <span class="promotion-price">28.500.000
                                                        đ</span> <span class="regular-price">34.500.000 đ</span> </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-item">
                                        <div class="product-item">
                                            <div class="pro-info">
                                                <div class="pro-img"> <a
                                                        href="">
                                                        <img class="lazy"
                                                            src="https://khoavang.vn/resources/cache/400x400x3/ADDO/NewFolder/Dell-7210-1629450608.jpg"
                                                            width="222" alt=""> </a> </div>
                                                <div class="pro-meta">
                                                    <h3 class="pro-name"><a
                                                            href="">Dell
                                                            Latitude 7210 2 in 1 Core i7 Touchsreen ...</a></h3>
                                                </div>
                                                <div class="pro-price"> <span class="promotion-price">26.500.000
                                                        đ</span> </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-item">
                                        <div class="product-item">
                                            <div class="pro-info">
                                                <div class="pro-img"> <a
                                                        href="">
                                                        <img class="lazy"
                                                            src="https://khoavang.vn/resources/cache/400x400x3/data/dell/Precision-7720/7720-ava2khoavangvn-1627547662.jpg"
                                                            width="222" alt=""> </a> </div>
                                                <div class="pro-meta">
                                                    <h3 class="pro-name"><a
                                                            href="">Dell
                                                            Precision 7720 i7 7820HQ P3000 17 inch</a></h3>
                                                    <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình
                                                    </div>
                                                </div>
                                                <div class="pro-price"> <span class="promotion-price">28.000.000
                                                        đ</span> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="top-block-viewall section-top-best-selling">
                <div class="container">
                    <h2 class="primary-title">SẢN PHẨM <span class="color">BÁN CHẠY</span></h2>
                    <div class="products-list">
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href="">
                                            <img class="lazy"
                                                src="https://khoavang.vn/resources/cache/400x400x3/data/lenovo/x1-gen-4/x1-gen4-avatar-khoavang-1609407824.jpg"
                                                width="222" alt=""> </a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Thinkpad
                                                X1 Carbon Core i7 ram 16G gen 4</a></h3>
                                        <div class="pro-version">Có <strong>2</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">17.000.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a href=""> <img
                                                class="lazy"
                                                src="https://khoavang.vn/resources/cache/400x400x3/data/dell/XPS-7390/Xps-7390-khoavangvn-2-1627096425.jpg"
                                                width="222" alt=""> </a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Dell XPS 13 9305
                                                Core i5 BrandNew</a></h3>
                                        <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">24.500.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""> <img
                                                class="lazy"
                                                src="https://khoavang.vn/resources/cache/400x400x3/data/dell/xps_/Dell-XPS-9500-1628672576.jpg"
                                                width="222" alt=""> </a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Dell XPS
                                                15 9500 Core i9 - 4K touch</a></h3>
                                        <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">63.000.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href="">
                                            <img class="lazy"
                                                src="https://khoavang.vn/resources/cache/400x400x3/data/Asus/Zephyrus-G14-GA401IV/Zephyrus-G14-GA401IV-khoavangvn-3-1627124103.jpg"
                                                width="222" alt=""> </a></div>
                                    <div class="pro-badge">-16%</div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Asus
                                                Zephyrus GA401 AMD Ryzen 9 5900HS 16 GB ...</a></h3>
                                        <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">42.000.000 đ</span> <span
                                            class="regular-price">49.900.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""> <img
                                                class="lazy"
                                                src="https://khoavang.vn/resources/cache/400x400x3/data/Asus/Zephyrus-G15-GA503Q/Zephyrus-G15-GA503Q-khoavangvn-17-1627117242.jpg"
                                                width="222" alt=""> </a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Asus
                                                ROG Zephyrus G15 GA503 Ryzen 9 RTX3070</a></h3>
                                        <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">49.500.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                    </div> <a href="/san-pham-ban-chay" class="viewall-button">XEM TẤT CẢ <i
                            class="ico ico-grid"></i></a>
                </div>
            </section>
            <div class="section-top-large-banner">
                <div class="container">
                    <div class="row"> </div>
                </div>
            </div>
            <section class="top-block-viewall section-top-new-products">
                <div class="container">
                    <h2 class="primary-title">HÀNG MỚI VỀ</h2>
                    <div class="products-list">
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a href=""> <img
                                                class="lazy"
                                                src="https://khoavang.vn/resources/cache/400x400x3/data/dell/XPS-7390/Xps-7390-khoavangvn-22-1627096425.jpg"
                                                width="222" alt=""> </a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Dell XPS 13 9310
                                                Core i7-1165G7/ 8 GB RAM/ ...</a></h3>
                                        <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">31.000.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""> <img
                                                class="lazy"
                                                src="https://khoavang.vn/resources/cache/400x400x3/data/dell/Precision-5520/avatar-5520-khoavangvn-1616154354.jpg"
                                                width="222" alt=""> </a></div>
                                    <div class="pro-badge">-18%</div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Dell
                                                Precision 5520 Core i7 Quadro M1200 15 ...</a></h3>
                                        <div class="pro-version">Có <strong>2</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">23.800.000 đ</span> <span
                                            class="regular-price">28.990.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""> <img
                                                class="lazy"
                                                src="https://khoavang.vn/resources/cache/400x400x3/data/dell/Alienware-M17-R3/Alienware-M17-R3-ava-white-khoavang-1627097768.jpg"
                                                width="222" alt=""> </a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Dell
                                                Alienware M17 R3 RTX 2070</a></h3>
                                        <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">46.000.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""> <img
                                                class="lazy"
                                                src="https://khoavang.vn/resources/cache/400x400x3/data/dell/xps-9710/XPS-17-9710-khoavangvn-5-1627035204.jpg"
                                                width="222" alt=""> </a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Dell XPS
                                                17 9700 Core i7 GTX1650 Ti</a></h3>
                                        <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">51.000.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""> <img
                                                class="lazy"
                                                src="https://khoavang.vn/resources/cache/400x400x3/data/dell/Latitude-5320/5320-ava-khoavangvn-1629102857.jpg"
                                                width="222" alt=""> </a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Dell
                                                Latitude 5320 i7 - 16G - 256Gb</a></h3>
                                        <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">28.000.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""> <img
                                                class="lazy"
                                                src="https://khoavang.vn/resources/cache/400x400x3/data/macbook/mbp16touch-silver-gallery1-201911-1628668906.jpg"
                                                width="222" alt=""> </a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Macbook
                                                16 - i9 32G 1Tb card 8G</a></h3>
                                        <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">65.000.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a href=""> <img
                                                class="lazy"
                                                src="https://khoavang.vn/resources/cache/400x400x3/data/Hinh-content-blog/dellmojthoidai/7390-1623921442.png"
                                                width="222" alt=""> </a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Dell XPS 13 9310
                                                Core i7 BrandNew</a></h3>
                                        <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">31.000.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""> <img
                                                class="lazy"
                                                src="https://khoavang.vn/resources/cache/400x400x3/data/dell/xps_/Dell-XPS-9500-1628672576.jpg"
                                                width="222" alt=""> </a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Dell XPS
                                                15 9500 Core i9 - 4K touch</a></h3>
                                        <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">63.000.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""> <img
                                                class="lazy"
                                                src="https://khoavang.vn/resources/cache/400x400x3/data/dell/xps_/dell-xps-15-9500-1600172546.jpg"
                                                width="222" alt=""> </a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Dell XPS
                                                15 9500</a></h3>
                                        <div class="pro-version">Có <strong>2</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">40.000.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""> <img
                                                class="lazy"
                                                src="https://khoavang.vn/resources/cache/400x400x3/data/dell/xps_/dell-xps-15-9500-1600172546.jpg"
                                                width="222" alt=""> </a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Dell XPS
                                                15 9500 Core i7-10750H/ 16 GB RAM/ ...</a></h3>
                                        <div class="pro-version">Có <strong>2</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">46.000.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                    </div> <a href="/san-pham" class="viewall-button">XEM TẤT CẢ <i class="ico ico-grid"></i></a>
                </div>
            </section>
            <section class="top-block-viewall section-top-promotion-products">
                <div class="container">
                    <h2 class="primary-title">SẢN PHẨM KHUYẾN MÃI</h2>
                    <div class="products-list">
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""><img
                                                class="lazy"
                                                data-src="https://khoavang.vn/resources/cache/400x400x3/data/lenovo/Lenovo_AIO/M73z/M73z-avatar-khoavang-1609326025.jpg"
                                                width="222" alt=""></a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">All-in-One
                                                Lenovo ThinkCentre M73z</a></h3>
                                        <div class="pro-version">Có <strong>3</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">5.900.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""><img
                                                class="lazy"
                                                data-src="https://khoavang.vn/resources/cache/400x400x3/data/hp_workstation/HP-Worstation-Z2302-1621583735.jpg"
                                                width="222" alt=""></a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">HP Z230
                                                CMT Workstation - CAD 3D PTS</a></h3>
                                        <div class="pro-version">Có <strong>5</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">7.550.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""><img class="lazy"
                                                data-src="https://khoavang.vn/resources/cache/400x400x3/data/hp/zbook-17-G2/Zbook-17-avatar-khoavang-1608201774.jpg"
                                                width="222" alt=""></a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">HP ZBook 17
                                                G2 K4100M core i7 17 inch</a></h3>
                                        <div class="pro-version">Có <strong>2</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">14.900.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""><img
                                                class="lazy"
                                                data-src="https://khoavang.vn/resources/cache/400x400x3/data/lenovo/laptop-lenovo-thinkpad-p51-workstation-khoavang-1.jpg"
                                                width="222" alt=""></a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Lenovo
                                                Thinkpad P50 M2000M Core i7</a></h3>
                                        <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">20.000.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""><img
                                                class="lazy"
                                                data-src="https://khoavang.vn/resources/cache/400x400x3/data/dell/Alienware-M17-R3/black/Alienware-M17-R3-ava-black-khoavang-1627098301.jpg"
                                                width="222" alt=""></a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Dell
                                                Alienware M17 R3 GTX 1660Ti</a></h3>
                                        <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">39.900.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""><img
                                                class="lazy"
                                                data-src="https://khoavang.vn/resources/cache/400x400x3/data/dell/7510-khoavang.vn-2.jpg"
                                                width="222" alt=""></a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Dell
                                                Precision 7520 M2200M</a></h3>
                                        <div class="pro-version">Có <strong>3</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">25.000.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""><img
                                                class="lazy"
                                                data-src="https://khoavang.vn/resources/cache/400x400x3/data/dell/Precision-7720/7720-ava-khoavang-1627543760.jpg"
                                                width="222" alt=""></a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Dell
                                                Precision 7720 i7 6820HQ - P3000</a></h3>
                                        <div class="pro-version">Có <strong>2</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">24.000.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""><img
                                                class="lazy"
                                                data-src="https://khoavang.vn/resources/cache/400x400x3/data/Asus/Zephyrus-G14-GA401IV/Zephyrus-G14-GA401IV-khoavangvn-3-1627124103.jpg"
                                                width="222" alt=""></a></div>
                                    <div class="pro-badge">-16%</div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Asus
                                                Zephyrus GA401 AMD Ryzen 9 5900HS 16 GB ...</a></h3>
                                        <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">42.000.000 đ</span> <span
                                            class="regular-price">49.900.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href=""><img
                                                class="lazy"
                                                data-src="https://khoavang.vn/resources/cache/400x400x3/ADDO/NewFolder/Pavilion-14-2021-1629451730.jpg"
                                                width="222" alt=""></a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="">Hp
                                                Pavilion 14 2021 Ryzen 5</a></h3>
                                        <div class="pro-version">Có <strong>2</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">19.000.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-wrap-item">
                            <div class="product-item">
                                <div class="pro-info">
                                    <div class="pro-img"><a
                                            href="https://khoavang.vn/dell-latitude-e7280-core-i5-p868.html"><img
                                                class="lazy"
                                                data-src="https://khoavang.vn/resources/cache/400x400x3/data/dell/e7270-khoavang.vn-6.jpg"
                                                width="222" alt=""></a></div>
                                    <div class="pro-meta">
                                        <h3 class="pro-name"><a
                                                href="https://khoavang.vn/dell-latitude-e7280-core-i5-p868.html">Dell
                                                Latitude 7280 Core i5</a></h3>
                                        <div class="pro-version">Có <strong>1</strong> phiên bản cấu hình</div>
                                    </div>
                                    <div class="pro-price"> <span class="promotion-price">10.500.000 đ</span> </div>
                                </div>
                            </div>
                        </div>
                    </div> <a href="/san-pham-khuyen-mai" class="viewall-button">XEM TẤT CẢ <i
                            class="ico ico-grid"></i></a>
                </div>
            </section>
            <div class="section-top-categories">
                <div class="container">
                    <div class="row"> </div>
                </div>
            </div>
            <section class="top-block-viewall section-top-blog">
                <div class="container">
                    <h2 class="primary-title">BLOG CÔNG NGHỆ</h2>
                    <div class="blog-slider-wrap">
                        <div class="blog-slider owl-carousel">
                            <div class="blog-item-wrap">
                                <div class="blog-item">
                                    <div class="img"><a
                                            href="https://khoavang.vn/blog/danh-gia-lenovo-thinkpad-x1-nano-p1721.html"><img
                                                class="lazyss"
                                                src="https://khoavang.vn/resources/cache/370x205x3/data/Hinh-content-blog/x1-nano/29092020_en_launch_X1Nano_20Euro-1627024872.png"
                                                width="370" alt=""></a></div>
                                    <div class="ctn">
                                        <h3 class="blog-tit"><a
                                                href="https://khoavang.vn/blog/danh-gia-lenovo-thinkpad-x1-nano-p1721.html">Đánh
                                                giá Lenovo ThinkPad X1 Nano</a></h3>
                                        <div class="date">23-07-2021</div>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-item-wrap">
                                <div class="blog-item">
                                    <div class="img"><a
                                            href="https://khoavang.vn/blog/windows-11-phat-sung-moi-nhat-trong-cuoc-chien-ngay-cang-cang-thang-giua-microsoft-va-apple-p1707.html"><img
                                                class="lazyss"
                                                src="https://khoavang.vn/resources/cache/370x205x3/data/Hinh-content-blog/win11/Manh-me-se-mang-lai-tu-do-1625450142.png"
                                                width="370" alt=""></a></div>
                                    <div class="ctn">
                                        <h3 class="blog-tit"><a
                                                href="https://khoavang.vn/blog/windows-11-phat-sung-moi-nhat-trong-cuoc-chien-ngay-cang-cang-thang-giua-microsoft-va-apple-p1707.html">WINDOWS
                                                11 PHÁT SÚNG MỚI NHẤT TRONG CUỘC CHIẾN NGÀY CÀNG CĂNG THẲNG GIỮA
                                                MICROSOFT VÀ APPLE</a></h3>
                                        <div class="date">05-07-2021</div>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-item-wrap">
                                <div class="blog-item">
                                    <div class="img"><a
                                            href="https://khoavang.vn/blog/y-nghia-cac-hau-to-cua-bo-xu-ly-intel-core--p1701.html"><img
                                                class="lazyss"
                                                src="https://khoavang.vn/resources/cache/370x205x3/data/Hinh-content-blog/hau-to/Manh-me-se-mang-lai-tu-do-1624851825.png"
                                                width="370" alt=""></a></div>
                                    <div class="ctn">
                                        <h3 class="blog-tit"><a
                                                href="https://khoavang.vn/blog/y-nghia-cac-hau-to-cua-bo-xu-ly-intel-core--p1701.html">Ý
                                                NGHĨA CÁC HẬU TỐ CỦA BỘ XỬ LÝ CPU INTEL?</a></h3>
                                        <div class="date">28-06-2021</div>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-item-wrap">
                                <div class="blog-item">
                                    <div class="img"><a
                                            href="https://khoavang.vn/blog/o-cung-ngoai-vi-va-ssd-tot-nhat-2021-cho-mac-pc-ps4-and-xbox-p1698.html"><img
                                                class="lazyss"
                                                src="https://khoavang.vn/resources/cache/370x205x3/data/Hinh-content-blog/laptop10tr/Manh-me-se-mang-lai-tu-do-1624520337.png"
                                                width="370" alt=""></a></div>
                                    <div class="ctn">
                                        <h3 class="blog-tit"><a
                                                href="https://khoavang.vn/blog/o-cung-ngoai-vi-va-ssd-tot-nhat-2021-cho-mac-pc-ps4-and-xbox-p1698.html">Ổ
                                                CỨNG NGOẠI VI VÀ SSD TỐT NHẤT 2021 CHO MAC, PC, PS4 VÀ XBOX</a></h3>
                                        <div class="date">24-06-2021</div>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-item-wrap">
                                <div class="blog-item">
                                    <div class="img"><a
                                            href="https://khoavang.vn/blog/duoi-10-trieu-co-mua-duoc-laptop-xin-so-de-phuc-vu-van-phong-hoc-tap-va-lam-viec-top-5-mau-laptop-duoi-10-trieu-dang-mua-nhat-p1693.html"><img
                                                class="lazyss"
                                                src="https://khoavang.vn/resources/cache/370x205x3/data/Hinh-content-blog/laptop10tr/The-State-of-Tech-1624352899.png"
                                                width="370" alt=""></a></div>
                                    <div class="ctn">
                                        <h3 class="blog-tit"><a
                                                href="https://khoavang.vn/blog/duoi-10-trieu-co-mua-duoc-laptop-xin-so-de-phuc-vu-van-phong-hoc-tap-va-lam-viec-top-5-mau-laptop-duoi-10-trieu-dang-mua-nhat-p1693.html">DƯỚI
                                                10 TRIỆU CÓ MUA ĐƯỢC LAPTOP XỊN SÒ ĐỂ PHỤC VỤ VĂN PHÒNG, HỌC TẬP VÀ LÀM
                                                VIỆC? TOP 5 MẪU LAPTOP DƯỚI 10 TRIỆU ĐÁNG MUA NHẤT</a></h3>
                                        <div class="date">22-06-2021</div>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-item-wrap">
                                <div class="blog-item">
                                    <div class="img"><a
                                            href="https://khoavang.vn/blog/dell-huyen-thoai-trong-cac-huyen-thoai-dau-la-mau-laptop-dell-dang-mua-nhat-moi-thoi-dai-p1689.html"><img
                                                class="lazyss"
                                                src="https://khoavang.vn/resources/cache/370x205x3/data/Hinh-content-blog/dellmojthoidai/Manh-me-se-mang-lai-tu-do-1623921822.png"
                                                width="370" alt=""></a></div>
                                    <div class="ctn">
                                        <h3 class="blog-tit"><a
                                                href="https://khoavang.vn/blog/dell-huyen-thoai-trong-cac-huyen-thoai-dau-la-mau-laptop-dell-dang-mua-nhat-moi-thoi-dai-p1689.html">DELL-
                                                HUYỀN THOẠI TRONG CÁC HUYỀN THOẠI- ĐÂU LÀ MẪU LAPTOP DELL ĐÁNG MUA NHẤT
                                                MỌI THỜI ĐẠI</a></h3>
                                        <div class="date">17-06-2021</div>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-item-wrap">
                                <div class="blog-item">
                                    <div class="img"><a
                                            href="https://khoavang.vn/blog/dell-precision-15-inch-moi-nhat-2021-p1688.html"><img
                                                class="lazyss"
                                                src="https://khoavang.vn/resources/cache/370x205x3/data/Hinh-content-blog/Dell-Precision-7550/Seafood--Blue-Photo-Food-Facebook-Post-1623903183.png"
                                                width="370" alt=""></a></div>
                                    <div class="ctn">
                                        <h3 class="blog-tit"><a
                                                href="https://khoavang.vn/blog/dell-precision-15-inch-moi-nhat-2021-p1688.html">5
                                                Mẫu Dell Precision 15 Inch Mới Nhất 2021</a></h3>
                                        <div class="date">16-06-2021</div>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-item-wrap">
                                <div class="blog-item">
                                    <div class="img"><a
                                            href="https://khoavang.vn/blog/dell-xps-13-9310-dong-may-moi-nhat-tu-nha-dell-p1686.html"><img
                                                class="lazyss"
                                                src="https://khoavang.vn/resources/cache/370x205x3/data/Hinh-content-blog/DELL-XPS-13-9310/wwwkhoavangvn-1623733684.png"
                                                width="370" alt=""></a></div>
                                    <div class="ctn">
                                        <h3 class="blog-tit"><a
                                                href="https://khoavang.vn/blog/dell-xps-13-9310-dong-may-moi-nhat-tu-nha-dell-p1686.html">DELL
                                                XPS 13 9310 – DÒNG MÁY MỚI NHẤT TỪ NHÀ DELL</a></h3>
                                        <div class="date">15-06-2021</div>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-item-wrap">
                                <div class="blog-item">
                                    <div class="img"><a
                                            href="https://khoavang.vn/blog/top-5-phan-mem-cap-nhat-driver-mien-phi-hieu-qua-nhat-cho-laptop-may-tinh-cua-ban-p1685.html"><img
                                                class="lazyss"
                                                src="https://khoavang.vn/resources/cache/370x205x3/data/Hinh-content-blog/driver/TOP-5-PHaN-MeM-CaP-NHaT-DRIVER-MIeN-PHi-HIeU-QUa-NHaT-CHO-LAPTOP-MaY-TiNH-CuA-BaN-1623662763.png"
                                                width="370" alt=""></a></div>
                                    <div class="ctn">
                                        <h3 class="blog-tit"><a
                                                href="https://khoavang.vn/blog/top-5-phan-mem-cap-nhat-driver-mien-phi-hieu-qua-nhat-cho-laptop-may-tinh-cua-ban-p1685.html">TOP
                                                5 PHẦN MỀM CẬP NHẬT DRIVER MIỄN PHÍ, HIỆU QUẢ NHẤT CHO LAPTOP, MÁY TÍNH
                                                CỦA BẠN</a></h3>
                                        <div class="date">14-06-2021</div>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-item-wrap">
                                <div class="blog-item">
                                    <div class="img"><a
                                            href="https://khoavang.vn/blog/17-inch-co-phai-la-kich-thuoc-tieu-chuan-cho-1-chiec-laptop-top-5-mau-laptop-co-man-h-nh-17-inch-gia-tot-nhat-2021-p1679.html"><img
                                                class="lazyss"
                                                src="https://khoavang.vn/resources/cache/370x205x3/data/Hinh-content-blog/17inch/TOP-5-MaU-LAPTOP-Co-MaN-H%C3%8CNH-17-INCH-GIa-ToT-NHaT-2021-1623482603.png"
                                                width="370" alt=""></a></div>
                                    <div class="ctn">
                                        <h3 class="blog-tit"><a
                                                href="https://khoavang.vn/blog/17-inch-co-phai-la-kich-thuoc-tieu-chuan-cho-1-chiec-laptop-top-5-mau-laptop-co-man-h-nh-17-inch-gia-tot-nhat-2021-p1679.html">17
                                                INCH CÓ PHẢI LÀ KÍCH THƯỚC TIÊU CHUẨN CHO 1 CHIẾC LAPTOP? TOP 5 MẪU
                                                LAPTOP CÓ MÀN HÌNH 17 INCH GIÁ TỐT NHẤT 2021</a></h3>
                                        <div class="date">12-06-2021</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="owl-nav-custom"> <button type="button" role="presentation" id="blog-arr-prev"
                                class="owl-prev-custom disabled"><span aria-label="Previous">‹</span></button> <button
                                type="button" role="presentation" id="blog-arr-next" class="owl-next-custom"><span
                                    aria-label="Next">›</span></button> </div>
                    </div> <a href="/blog" class="viewmore-button">XEM THÊM</a>
                </div>
            </section>
            <section class="section-top-customer">
                <div class="container">
                    <h2 class="primary-title">Feedback</h2>
                    
                </div>
            </section>
        </main>
    </div>




<!--    footer-->
    <jsp:include page="footer.jsp"/> 



    <div style="display: none" class="ajax-loader"><img alt="ajax-loader"
            src="https://khoavang.vn/public/v2/images/default/ajax-loader.svg"></div>



    <script as="script" src="https://khoavang.vn/public/v2/js/common.js"></script>

    <link href="https://khoavang.vn/public/v2/css/jquery.fancybox.min.css" rel="stylesheet"
        onload="this.rel='stylesheet'" rel="preload">


    <!-- <script src="https://khoavang.vn/public/v2/js/jquery.fancybox.min.js"></script> -->

    <script async="" src="https://khoavang.vn/public/v2/js/page/top.js?v=1231231"></script>

    <!-- <script src="https://khoavang.vn/resources/assets/frontend/js/jquery.elevatezoom.js"></script> -->
    <!-- <script src="https://khoavang.vn/resources/assets/frontend/js/jquery.sticky.js"></script> -->

    <script async="" src="https://khoavang.vn/resources/assets/frontend/js/jquery.lazy.min.js" async></script>

    <script async="" src="https://khoavang.vn/public/v2/js/function.js?v=1231231"></script>


    <link as="style" onload="this.rel='stylesheet'" rel="preload"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



    <!-- harafunnel -->
    <script src="//harafunnel.com/widget/269827146468476.js" async="async"></script>
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-K5QPV74" height="0" width="0"
            style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->

    <!-- Facebook Pixel Code -->
    <script>
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return; n = f.fbq = function () {
                n.callMethod ?
                n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n; n.push = n; n.loaded = !0; n.version = '2.0';
            n.queue = []; t = b.createElement(e); t.async = !0;
            t.src = v; s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '293518028207257');
        fbq('track', 'PageView');
    </script>
    <noscript><img height="1" width="1" style="display:none"
            src="https://www.facebook.com/tr?id=293518028207257&ev=PageView&noscript=1" /></noscript>
    <!-- End Facebook Pixel Code -->
    <!-- Facebook Pixel Code -->
    <script>
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return; n = f.fbq = function () {
                n.callMethod ?
                n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n; n.push = n; n.loaded = !0; n.version = '2.0';
            n.queue = []; t = b.createElement(e); t.async = !0;
            t.src = v; s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '1018125185230008');
        fbq('track', 'PageView');
    </script>
    <noscript><img height="1" width="1" style="display:none"
            src="https://www.facebook.com/tr?id=1018125185230008&ev=PageView&noscript=1" /></noscript>
    <!-- End Facebook Pixel Code -->
    <!-- Facebook Pixel Code -->
    <script>
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return; n = f.fbq = function () {
                n.callMethod ?
                n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n; n.push = n; n.loaded = !0; n.version = '2.0';
            n.queue = []; t = b.createElement(e); t.async = !0;
            t.src = v; s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '2885073121769860');
        fbq('track', 'PageView');
    </script>
    <noscript><img height="1" width="1" style="display:none"
            src="https://www.facebook.com/tr?id=2885073121769860&ev=PageView&noscript=1" /></noscript>
    <!-- End Facebook Pixel Code -->
</body>

</html>