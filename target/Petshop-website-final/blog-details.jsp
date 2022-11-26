<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Pet Shop</title>

    <!-- Google Font -->
    <!-- <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" type="image/png" sizes="16x16"  href="img/favicons/favicon-16x16.png">
    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>

     <!-- Floatting -->
     <div class="add-button">
        <div class="sub-button tl">
            <i class="fa-solid fa-phone"></i>
        </div>
        <div class="sub-button tr">
            <i class="fa-brands fa-facebook-messenger"></i>
        </div>
        <div class="sub-button bl">
            <i class="fa-brands fa-facebook"></i>
        </div>
        <div class="sub-button br">
            <i class="fa-brands fa-instagram"></i>
        </div>
      </div>

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Đăng nhập</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="index.jsp">Home</a></li>
                <li><a href="all-products.jsp">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="product-details.jsp">Shop Details</a></li>
                        <li><a href="shoping-cart.jsp">Shoping Cart</a></li>
                        <li><a href="checkout.jsp">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="blog.jsp">Blog</a></li>
                <li><a href="contact.jsp">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> LTW_nhom10@gmail.com</li>
                                <li>Hệ thống cửa hàng thú cưng</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook" title="Our Facebook"></i></a>
                                <a href="#"><i class="fa fa-instagram" title="Our Instagram"></i></a>
                            </div>

                            <div class="header__top__right__auth">
                                <a href="login.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="index.jsp"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="index.jsp">Trang Chủ</a></li>
                            <li><a href="all-products.jsp">Thú Cưng</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="products-dog.jsp">Chó</a></li>
                                    <li><a href="products-cat.jsp">Mèo</a></li>
                                    <li><a href="products-accessory.jsp">Phụ Kiện</a></li>
                                </ul>
                            </li>
                            <li><a href="blog.jsp">Tin Tức</a></li>
                            <li><a href="contact.jsp">Liên Hệ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="like-product.jsp"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="shoping-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <div class="header__cart__price">Giỏ hàng: <span>85.000.000 Đồng</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>Danh mục</span>
                        </div>
                        <ul>
                            <li><a href="#">Chó Alaska</a></li>
                            <li><a href="#">Chó Beagle</a></li>
                            <li><a href="#">Chó Corgi</a></li>
                            <li><a href="#">Chó Golden Retriever</a></li>
                            <li><a href="#">Chó Husky</a></li>
                            <li><a href="#">Chó Phốc sóc</a></li>
                            <li><a href="#">Mèo Anh</a></li>
                            <li><a href="#">Mèo lông ngắn</a></li>
                            <li><a href="#">Mèo chân ngắn</a></li>
                            <li><a href="#">Mèo tai cụp</a></li>
                            <li><a href="#">Mèo tam thể</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
<!--                                <div class="hero__search__categories">-->
<!--                                    Tất cả các loại-->
<!--                                    <span class="arrow_carrot-down"></span>-->
<!--                                </div>-->
                                <input type="text" placeholder="Bạn cần tìm gì ?">
                                <button type="submit" class="site-btn">Tìm Kiếm</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+84 987.145.145</h5>
                                <span>Hỗ trợ 24/7</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Blog Details Hero Begin -->
    <section class="blog-details-hero set-bg" data-setbg="img/blog/details/details-hero.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="blog__details__hero__text">
                        <h2>Hãy dừng lại nếu bạn đang cho chó mèo ăn chay</h2>
                        <ul>
                            <li>Tác giả: Admin</li>
                            <li>21/2/2022</li>
                            <li>0 Bình Luận</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Hero End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5 order-md-1 order-2">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__search">
                            <form action="#">
                                <input type="text" placeholder="Tìm kiếm...">
                                <button type="submit"><span class="icon_search"></span></button>
                            </form>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Thể loại</h4>
                            <ul>
                                <li><a href="#">Tất Cả</a></li>
                                <li><a href="#">Chó</a></li>
                                <li><a href="#">Mèo</a></li>
                                <li><a href="#">Life Style</a></li>
                                <li><a href="#">Chăm sóc</a></li>
                            </ul>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Tin mới nhất</h4>
                            <div class="blog__sidebar__recent">
                                <a href="#" class="blog__sidebar__recent__item">
                                    <div class="blog__sidebar__recent__item__pic">
                                        <img src="img/blog/sidebar/sr-1.jpg" alt="">
                                    </div>
                                    <div class="blog__sidebar__recent__item__text">
                                        <h6>Danh sách các thuốc tẩy giun<br> cho chó con an toàn</h6>
                                        <span>11/12/2021</span>
                                    </div>
                                </a>
                                <a href="#" class="blog__sidebar__recent__item">
                                    <div class="blog__sidebar__recent__item__pic">
                                        <img src="img/blog/sidebar/sr-2.jpg" alt="">
                                    </div>
                                    <div class="blog__sidebar__recent__item__text">
                                        <h6>Từng bước cách chăm sóc <br> chó mẹ sau sinh mổ đẻ</h6>
                                        <span>12/10/2021</span>
                                    </div>
                                </a>
                                <a href="#" class="blog__sidebar__recent__item">
                                    <div class="blog__sidebar__recent__item__pic">
                                        <img src="img/blog/sidebar/sr-3.jpg" alt="">
                                    </div>
                                    <div class="blog__sidebar__recent__item__text">
                                        <h6>Cách chăm sóc chó mang<br> thai tại nhà cần phải biết</h6>
                                        <span>20/08/ 2021</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Từ khóa</h4>
                            <div class="blog__sidebar__item__tags">
                                <a href="#">Chó</a>
                                <a href="#">Mèo</a>
                                <a href="#">Chăm sóc</a>
                                <a href="#">Đời Sống</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7 order-md-1 order-1">
                    <div class="blog__details__text">
                        <img src="img/blog/blog-2.jpg" alt="" height="400" width="800">
                        <h3>Hãy dừng lại nếu bạn đang cho chó mèo ăn chay</h3>
                        <p>Hãy dừng ngay lại việc cho chó mèo ăn chay hoặc rau củ quả với hàm lượng lớn trong một thời gian dài. Tại sao bạn phải cho chó mèo ăn thịt cá? Hãy chia sẻ nếu bạn là người yêu chó mèo chân chính. Bài viết dưới đây của Pet Shop sẽ phân tích đặc biệt vấn đề ăn chay dành riêng cho chó mèo.</p>
                        <strong>3 lý do khẳng định rằng chó mèo không ăn chay</strong>
                        <p>Thời gian gần đây chúng tôi có nhận được khá nhiều những ý kiến tranh luận về việc nên hay không cho chó mèo ăn rau củ. Ăn với hàm lượng như thế nào? Thời gian kéo dài ra sao? Và đặc biệt là có ý kiến còn khẳng định rằng chó mèo ăn chay và vẫn khỏe mạnh binh thường.</p>

                        <p>Theo Tiến sĩ Lisa Weeth, một chuyên gia dinh dưỡng thú y, nói rằng: Bà thường không khuyến cáo chế độ cho chó mèo ăn chay. Vấn đề về dinh dưỡng của chó mèo dù là thịt hoặc thực vật cũng cần phải cung cấp đủ dưỡng chất thiết yếu một cách cân bằng. Đảm bảo cho sự phát triển toàn diện của thú cưng . Đặc biệt là trong độ tuổi từ 2 – 15 tháng đầu đời. Điều này gần như không thể với chế độ cho chó mèo ăn chay hoàn toàn.</p>

                        <p>Trong bài viết này, chúng tôi sẽ tập hợp những kiến thức, tài liệu khoa học quốc tế và sự tư vấn của hội đồng bác sĩ thú y trong và ngoài nước để làm rõ tất cả các câu hỏi trên. Nếu các Sen lười đọc phần dẫn chứng có thể đi thẳng xuống phần kết luận ở cuối bài.
                        </p>
                        <b>Chó mèo ăn chay và rau củ có đủ chất không?
                        </b>
                        <p>Nếu các Sen đã cho chó mèo ăn chay (trộn cơm với rau củ) và khẳng định chúng sống bình thường. Xin thưa rằng tất cả động vật trên đời này đều “sống bình thường” cho đến khi phát bệnh và chết. Ăn chay sẽ dẫn đến thay đổi độ pH trong hệ tiết niệu, có thể dẫn đến sỏi thận.</p>
                        <p>Ngoài ra nếu không có hoặc có quá ít protein động vật trong thức ăn cho mèo con sẽ gây thiếu hụt trầm trọng Taurine. Có thể gây mù mắt cho mèo do giảm tế bào võng mạc. Nếu các bạn muốn thay đổi thế giới thì hãy làm một mình. Vì người là động vật ăn tạp còn mèo là động vật ăn thịt. Hãy dừng ngay tội ác trái tự nhiên này lại nhé các Sen.</p>
                        <p>Nếu cho mèo ăn một lượng Carbohydrate quá cao sẽ gây tiểu đường, béo phì, giảm sự hấp thu protein. Và hại đến nội quan do hệ tiêu hóa của mèo không được thiết kế để tiêu hóa quá nhiều tinh bột. Lưu ý rằng khoai tây có 20% carb, khoai lang là 21% và bí đỏ là 12%. Để bổ sung vitamin cho chó mèo, chúng ta có nguồn thức ăn giàu vitamin và khoáng chất như cá biển, hạt khô, cỏ lúa mạch (cỏ mèo), các loại thực phẩm bổ sung, và có thể từ rau củ.</p>
                        <b>Protein của động vật và thực vật không giống nhau</b>
                        <p>Nếu chủ vật nuôi là một người thuần chay hoặc ăn chay và muốn biến thú cưng của mình thành một chú chó ăn chay hoàn toàn là một điều khá dễ hiểu. Vậy, một chú chó, chú mèo khỏe mạnh đã trưởng thành dần dần chuyển sang chế độ ăn thuần chay liệu có tốt không? Trong một số trường hợp vẫn có thể, miễn là chó mèo được cung cấp nguồn dinh dưỡng cân bằng phù hợp theo từng giai đoạn sống của chúng. Tuy nhiên, việc này không hề đơn giản như bạn nghĩ.</p>
                        <p>Chế độ cho chó mèo ăn chay hoàn toàn có thể cung cấp một ít protein nhưng mức độ đó chưa đủ để chó phát triển. Ngoài ra, protein từ thực vật không có đủ lượng amino axit cần thiết. Nhằm đáp ứng nhu cầu chó cần như ở protein từ thịt động vật. Bác sĩ thú y nhìn vào chỉ số giá trị sinh học (BV), một phép đo được sử dụng để xác định hiệu quả của một loại protein cụ thể.</p>
                        <b>Tác hại của việc cho chó mèo ăn chay trong thời gian dài</b>
                        <p>Nếu lạm dụng rau củ với lý do bổ sung Vitamin và chất xơ với hàm lượng lớn và trong thời gian dài sẽ có những bất lợi sau đây:</p>
                        <p>-<b>Gây thừa Vitamin:</b> Không kiểm soát hoặc không tính toán tốt lượng rau củ sẽ dẫn tới tình trạng này. Ngoài ra, nếu sử dụng sản phẩm có rau củ được cấp đông và rã đông thì sẽ mất đi hầu hết các vitamin tan trong nước vô tác dụng. Vitamin tổng hợp có thể khó hấp thu hơn Vitamin tự nhiên nhưng sẽ đầy đủ hơn. Vì nó đã được thiết kế dành riêng cho chó mèo, đảm kiểm soát liều lượng không gây dư thừa, ngộ độc.</p>
                        <p>-<b>Gây dư thừa Carbonhydrate:</b> Như đã nói ở trên, khoai tây luộc có 20% Carb, khoai lang là 21% và bí đỏ là 12%. Vậy để bổ sung như thế nào để lượng Carb không vượt quá 2 – 5% khẩu phần ăn của mèo là một điều cần tính toán rất kỹ bằng toán học. Không thể dựa vào kinh nghiệm như một số Sen bảo rằng: “ăn từ đó đến giờ có chết đâu”.</p>
                        <p>-<b>Rau củ quả trộn không an toàn:</b> Các loại thức ăn cho mèo tươi trộn rau củ thường sử dụng thành phần nguyên liệu này để bán với giá rẻ. Kéo theo việc sử dụng những sản phẩm động vật có chất lượng thấp như đầu cổ gà, xương gà để giảm giá thành. Các loại sản phẩm này dù xay nhuyễn vẫn có thể có xương dăm gây hóc xương. Hoặc nếu là xương nhọn có thể ghim vào cổ họng gây nhiễm trùng. Rau củ xay nhuyễn là môi trường lý tưởng cho vi khuẩn có hại phát triển. Đó là lý do thức ăn tươi có rau củ luôn phải bảo quản cấp đông.</p>
                        <p>Các tài liệu đã được kiểm định có thể sử dụng chung cho người nuôi mèo ở khắp nơi trên thế giới. Nếu có sai biệt do môi trường sẽ không đáng kể.</p>
                    </div>
                    <div class="blog__details__content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="blog__details__author">
                                    <div class="blog__details__author__pic">
                                        <img src="img/blog/details/details-author.jpg" alt="">
                                    </div>
                                    <div class="blog__details__author__text">
                                        <h6>LTW_Nhom10</h6>
                                        <span>Admin</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="blog__details__widget">
                                    <ul>
                                        <li><span>Danh mục:</span> Chăm sóc</li>
<!--                                        <li><span>Tags:</span> Tất cả, Chó, Mèo</li>-->
                                    </ul>
                                    <div class="blog__details__social">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
<!--                                        <a href="#"><i class="fa fa-twitter"></i></a>-->
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
<!--                                        <a href="#"><i class="fa fa-linkedin"></i></a>-->
<!--                                        <a href="#"><i class="fa fa-envelope"></i></a>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

    <!-- Related Blog Section Begin -->
     <section class="related-blog spad">
         <div class="container">
             <div class="row">
                 <div class="col-lg-12">
                     <div class="section-title related-blog-title">
                         <h2>Bài viết bạn có thể thích</h2>
                     </div>
                 </div>
             </div>
             <div class="row">
                 <div class="col-lg-4 col-md-4 col-sm-6">
                     <div class="blog__item">
                         <div class="blog__item__pic">
                             <img src="img/blog/blog-1.jpg" alt="">
                         </div>
                         <div class="blog__item__text">
                             <ul>
                                 <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                 <li><i class="fa fa-comment-o"></i> 5</li>
                             </ul>
                             <h5><a href="blog-details2.html">Giống chó Alaskan Malamute: khổng lồ liệu giá có rẻ?</a></h5>
                             <p>Giống chó Alaskan Malamute hay chó Alaska, là một trong những giống chó kéo xe cổ xưa ...</p>
                         </div>
                     </div>
                 </div>
                 <div class="col-lg-4 col-md-4 col-sm-6">
                     <div class="blog__item">
                         <div class="blog__item__pic">
                             <img src="img/blog/blog-2.jpg" alt="">
                         </div>
                         <div class="blog__item__text">
                             <ul>
                                 <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                 <li><i class="fa fa-comment-o"></i> 5</li>
                             </ul>
                             <h5><a href="blog-details.jsp">Hãy dừng lại nếu bạn đang cho chó mèo ăn chay</a></h5>
                             <p>Hãy dừng ngay lại việc cho chó mèo ăn chay hoặc rau củ quả với hàm lượng lớn trong một ...</p>
                         </div>
                     </div>
                 </div>
                 <div class="col-lg-4 col-md-4 col-sm-6">
                     <div class="blog__item">
                         <div class="blog__item__pic">
                             <img src="img/blog/blog-3.jpg" alt="">
                         </div>
                         <div class="blog__item__text">
                             <ul>
                                 <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                 <li><i class="fa fa-comment-o"></i> 5</li>
                             </ul>
                             <h5><a href="blog-details1.html">Phải làm sao khi chó bị đau chân và đi khập khiễng ?</a></h5>
                             <p>Chó bị đau chân cà nhắc có thể do nhiều nguyên nhân bởi loài chó rất hiếu động ...</p>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </section>
    <!-- Related Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="index.jsp"><img src="img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Địa chỉ: TP.HCM, Việt Nam</li>
                            <li>Điện thoại: +85 987.145.xxx</li>
                            <li>Email: LTW_nhom10@gmail.com</li>
                      </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Các liên kết hữu ích</h6>
                        <ul>
                            <li><a href="#">Trang chủ</a></li>
                            <li><a href="#">Danh mục chó</a></li>
                            <li><a href="#">Danh mục mèo</a></li>
                            <li><a href="#">Nhập mail của bạn</a></li>
                            <li><a href="#">Tin tức</a></li>
                            <li><a href="#">Liên hệ</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Tham gia cộng đồng yêu thú cưng </h6>
                        <p>Để lại email để nhận được thông tin mới nhất về shop và thú cưng</p>
                         <form action="#">
                            <input type="text" placeholder="Nhập mail của bạn">
                            <button type="submit" class="site-btn">Đăng ký</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            &copy; Bản quyền trang web thuộc về <a href="" target="_blank">Pet shop </a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>



</body>

</html>