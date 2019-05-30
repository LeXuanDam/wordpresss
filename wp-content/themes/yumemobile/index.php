<html>
<head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body style="padding: 0; margin: 0">
<style>
    a{
        color:white;
        text-decoration: none;
    }
    a:hover{
        color: white;
        font-weight: bold;
        text-decoration: none;
    }
    a:visited{
        color: white;
        text-decoration: none;
    }
    /* width */
    #noiDungThongBao::-webkit-scrollbar {
        width: 1%;
    }

    /* Track */
    #noiDungThongBao::-webkit-scrollbar-track {
        background: #ee5d67;
        box-shadow: inset 0 0 5px grey;
        border-radius: 10px;
    }

    /* Handle */
    #noiDungThongBao::-webkit-scrollbar-thumb {
        background: #9c4488;
        border-radius: 10px;
    }

    #scrollCottruyen::-webkit-scrollbar {
        position: absolute;
        left:-100px;
        width: 1%;
    }

    /* Track */
    #scrollCottruyen::-webkit-scrollbar-track {
        background: #ee5d67;
        box-shadow: inset 0 0 5px grey;
        border-radius: 10px;
    }

    /* Handle */
    #scrollCottruyen::-webkit-scrollbar-thumb {
        background: #9c4488;
        border-radius: 10px;
    }

    #scrollThongBao::-webkit-scrollbar {
        width: 1%;
    }

    /* Track */
    #scrollThongBao::-webkit-scrollbar-track {
        background: #ee5d67;
        box-shadow: inset 0 0 5px grey;
        border-radius: 10px;
    }

    /* Handle */
    #scrollThongBao::-webkit-scrollbar-thumb {
        background: #9c4488;
        border-radius: 10px;
    }
    img.alignright { float: right; margin: 0 0 1em 1em; }
    img.alignleft { float: left; margin: 0 1em 1em 0; }
    img.aligncenter { display: block; margin-left: auto; margin-right: auto; }
    .alignright { float: right; }
    .alignleft { float: left; }
    .aligncenter { display: block; margin-left: auto; margin-right: auto; }
</style>
<div class="containers" style="background-image: url(<?php echo get_template_directory_uri()?>/img/mobile/background.png);width:100%; background-repeat: no-repeat;background-size: 100% 100%;margin: 0; padding: 0">
    <div id="menu" style="display: none">
        <div style="position: absolute;z-index: 2; width: 1000px; height:100%"><button style="background-color:rgba(156, 39, 176, 0); width: 100%; height: 100%" onclick="back()"></button></div>
        <!-- Modal content-->
        <div style="position: absolute; padding: 0;top: 0;z-index: 3" class="col-sm-8 col-sm-offset-4 col-xs-8 col-xs-offset-4">
            <div><button onclick="back()" style="background: none;border: none"><img style="position: absolute; padding: 0;top: 0;right: 0; z-index: 4" width="10%"
                                                                                     src="<?php echo get_template_directory_uri()?>/img/mobile/menu/iconback.png"></button></div>
            <div>
                <img style="padding: 0" class="col-xs-12 col-sm-12" width="100%" src="<?php echo get_template_directory_uri()?>/img/mobile/menu/menu.png">
                <div style="color: white; position: absolute;top:5%" class="col-xs-12">
                    <div style="font-size: 3vw"><a onclick="back()" href="#">TRANG CHỦ</a></div>
                    <hr>
                    <div style="font-size: 3vw"><a onclick="back()" href="#" data-toggle="modal" data-target="#cotTruyen">CỐT TRUYỆN</a></div>
                    <hr>
                    <div style="font-size: 3vw"><a onclick="back()" href="#thongbao">THÔNG BÁO</a></div>
                    <hr>
                    <div style="font-size: 3vw"><a onclick="back()" href="#gioithieu">GIỚI THIỆU</a></div>
                    <hr>
                    <div style="font-size: 3vw"><a onclick="back()" href="#">NHÂN VẬT</a></div>
                    <hr>
                    <div style="font-size: 3vw"><a onclick="back()" href="https://fujigame.vn/helpNapthe">NẠP NGAY</a></div>
                </div>
            </div>
        </div>
    </div>
    <div id="header" style="position: relative;z-index: 1">
        <img src="<?php echo get_template_directory_uri()?>/img/mobile/dautrang.png" width="100%">
        <div id="trangchu" style="position: absolute; top:30%;text-align: center;" class="col-xs-12"><p style="color: white; font-size: 4vw;">TRANG CHỦ</p></div>
        <div onclick="menu()" style="position: absolute; top:30%;left:90%;"> <a href="#"><img src="<?php echo get_template_directory_uri()?>/img/mobile/menu.png" style="width: 1.3vw"></a></div>
    </div>
    <div id="dreamKingdom">
        <img src="<?php echo get_template_directory_uri()?>/img/mobile/dreamKingdom.png" width="100%">
    </div>
    <div id="download" class="row" style="margin-top: 5%">
        <div class="col-xs-2"></div>
        <div class="col-xs-8 row">
            <div class="col-xs-5">
                <img width="100%" src="<?php echo get_template_directory_uri()?>/img/mobile/download/avatar.png">
            </div>
            <div class="col-xs-7">
                <div><a href="https://goo.gl/8n8FSm"><img width="100%" style="margin-bottom: 6%" src="<?php echo get_template_directory_uri()?>/img/mobile/download/ios.png"></a></div>
                <div><a href="https://goo.gl/Gtrkv8"><img width="100%"  src="<?php echo get_template_directory_uri()?>/img/mobile/download/android.png"></a></div>
            </div>
        </div>
    </div>


    <div id="myCarousel" class="carousel slide" data-ride="carousel"  style="width: 90%;margin-left: 5%; margin-top: 5%">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <a href="#" data-toggle="modal" data-target="#giftcode"><img src="<?php echo get_template_directory_uri()?>/img/mobile/topbanner/giftcode.png" alt="Los Angeles" style="width:100%;"></a>
            </div>

            <div class="item">
                <a href="#" id="playvideo" data-toggle="modal" data-target="#video"><img src="<?php echo get_template_directory_uri()?>/img/mobile/topbanner/yume100.png" alt="Chicago" style="width:100%;"></a>
            </div>

            <div class="item">
                <a href="http://fujigame.vn"><img src="<?php echo get_template_directory_uri()?>/img/mobile/topbanner/dangky.png" alt="New york" style="width:100%;"></a>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div id="thongbao" style="position: relative;margin-top: 5%">
        <img src="<?php echo get_template_directory_uri()?>/img/mobile/thongbao/background.png" width="90%" style="margin-left: 5%">
        <div style="position: absolute; top: 4%;text-align: center;color: white" class="col-xs-12"><p style=" font-size: 4vw;">THÔNG BÁO</p></div>

        <div id="noiDungThongBao" style="position: absolute;top: 20%; overflow: auto; height: 75%; overflow-x: hidden" class="col-xs-10 col-xs-offset-1">
            <?php
            $args = array('cat' => 1, 'orderby' => 'id', 'order' => 'desc', 'posts_per_page' => 10, 'post_status' => 'publish');
            $myposts = get_posts($args);
            $total = count($myposts);
            foreach ($myposts as $key => $post){
                setup_postdata($post);
                ?>
                <div class="row">
                    <div class="col-xs-2"  style="padding: 0;margin: 0; margin-bottom: 3%">
                        <?php if (get_field('thumb_img') != null) { ?>
                            <img src="<?= get_field('thumb_img')?>" width="140px" height="130px" class="row">
                        <?php } else {
                            ?>
                            <img src="<?php echo get_template_directory_uri() ?>/img/trangchu/thongbao/avatar.png"
                                 width="140px" height="130px" height="" class="row">
                            <?php
                        } ?>
                    </div>
                    <div class="col-xs-10" style="color: white; margin-top: -1%">
                        <div style=""><a href="#" data-toggle="modal" data-target="#Tbao<?php echo $post->ID?>"><p style=" font-size: 3vw"><?php echo $post->post_title?></p></a></div>
                        <div style="font-size: 2vw;"><?php
                            the_excerpt();?></div>

                    </div>
                </div>
                <?php if($key >= 0 && $key < $total -1){?>
                    <hr style="margin: 2vw">
                <?php }} ?>

        </div>

    </div>
    <div id="gioithieu" style="margin-top: 5%;position: relative">
        <img src="<?php echo get_template_directory_uri()?>/img/mobile/gioithieu.png" width="90%" style="margin-left: 5%;">
        <div class="col-xs-12" style="position: absolute; top: 3%; text-align: center; color: white" class="title"><p style=" font-size: 4vw;">GIỚI THIỆU</p></div>
        <p style="color: white;position: absolute; top: 43%;  font-size: 2.5vw; text-align: justify" class="col-xs-10 col-xs-offset-1">
            "Đang chờ đón bạn tại vương quốc Giấc Mơ,là 100 chàng hoàng tử!
            Cùng vẽ nên câu chuyện tình yêu lãng mạn với các chàng hoàng tử nhé!
            Game kim cương đơn giản, dễ chơi sẽ mang đến cho bạn những câu chuyện tình lãng mạn nhất!"</p>
    </div>
    <div id="hotro" style="margin-top: 5%">
        <div style="position: relative">
            <img src="<?php echo get_template_directory_uri()?>/img/mobile/hotro/hotro.png" width="80%" style="margin-left: 10%;">
            <p class="col-xs-12" style="color:white; position: absolute; top: 25%;text-align: center;  font-size: 7vw">Hỗ trợ</p>
            <p class="col-xs-6 phone" style="color:white; position: absolute; top:47%;left: 30%; font-size: 7vw">0946.153.466</p>
            <p class="col-xs-6 mail" style="color:white; position: absolute; top:72%;left: 30%; font-size: 5vw">support@fujigame.vn</p>
        </div>
        <div><a href="https://www.facebook.com/vn.yume100"><img src="<?php echo get_template_directory_uri()?>/img/mobile/hotro/facebook.png" width="75%" style="margin-left: 12.5%;margin-top: 2.5%"></a></div>
        <div style="position: relative">
            <img src="<?php echo get_template_directory_uri()?>/img/mobile/hotro/download.png" width="75%" style="margin-left: 12.5%;margin-top: 2.5%">
            <p class="col-xs-12" style="color:white; position: absolute; text-align: center;top:14%; font-size: 7vw">TẢI GAME NGAY</p>
            <a href="https://goo.gl/8n8FSm"><img src="<?php echo get_template_directory_uri()?>/img/mobile/hotro/ios.png" style = "position: absolute; top:35%;left: 25%;width: 50%"></a>
            <a href="https://goo.gl/Gtrkv8"><img src="<?php echo get_template_directory_uri()?>/img/mobile/hotro/android.png" style = "position: absolute; top:65%;left: 25%;width: 50%"></a>
        </div>
    </div>
    <div id="footer" style="position: relative">
        <img src="<?php echo get_template_directory_uri()?>/img/mobile/footer.png" width="100%" style="margin-top: 5%">
        <div class="col-xs-12" style="color: white; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); overflow: hidden">
            <p style="text-align: center; font-size: 2vw"><a href="#" data-toggle="modal" data-target="#dieu_khoan">Điều khoản sử dụng</a> | <a href="#" data-toggle="modal" data-target="#quy_dinh">Quy định NPH</a></p>
            <p style="text-align: center; font-size: 3vw">FUJI GAME ĐỘC QUYỀN PHÁT HÀNH TẠI VIỆT NAM</p>
            <p style="text-align: center; font-size: 2vw"> Tầng 7 tòa nhà Việt Tower, số 1 Thái Hà, phường Trung Liệt, quận Đống Đa, TP Hà Nội.
                Giấy phép số 165/GP-BTTTT do Bộ Thông tin và Truyền thông cấp ngày 20/04/2017
                © GCREST, Inc. All rights reserved
            </p>
        </div>
    </div>

    <?php
    $args = array('cat' => 1, 'orderby' => 'id', 'order' => 'desc', 'posts_per_page' => 10, 'post_status' => 'publish');
    $myposts = get_posts($args);
    $total = count($myposts);
    foreach ($myposts as $post){
        setup_postdata($post);
        ?>
        <div class="modal fade" id="Tbao<?php echo $post->ID?>" role="dialog">

            <!-- Modal content-->
            <div class=" col-xs-12 col-sm-12">
                <button style="border: 0;background-color: #808080" data-dismiss="modal">
                    <img style="width:5%; position: absolute; top:2%; right:2%;z-index: 2" src="<?php echo get_template_directory_uri()?>/img/thongbao/icon_back.png">
                </button>
                <img style="position: relative;width: 100%;z-index: 1" src="<?php echo get_template_directory_uri()?>/img/thongbao/thongbao.png">
                <div style="position: absolute; z-index: 2;top:20%;height: 75%;overflow: auto" class="col-xs-10 col-xs-offset-1" id="scrollThongBao">
                    <?php if(get_field('thumb_img') != null)  { ?>
                        <img  style="width:100%; height: 60%;" class="col-xs-6 "
                              src="<?= get_field('thumb_img') ?>">
                    <?php } else {
                        ?>
                        <img style="width:100%; height: 60%;" class="col-xs-6 "
                             src="<?php echo get_template_directory_uri() ?>/img/thongbao/avatar.png">
                        <?php
                    } ?>
                    <div style="color: white; margin-top: 2%"  class="col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1">
                        <div>
                            <p style="text-align: center; font-size: 3vw"><?php echo $post->post_title;?></p>
                            <p style="text-align: justify;overflow: auto;font-size: 2vw"> <?php the_content(); ?></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php }?>

    <div class="modal fade" id="cotTruyen" role="dialog">
        <!-- Modal content-->
        <div class="col-xs-12 col-sm-12">
            <button style="border: 0;background-color: #808080" data-dismiss="modal">
                <img style="width:5%; position: absolute; top:7%; right:13%;z-index: 2" src="<?php echo get_template_directory_uri()?>/img/cottruyen/icon_back.png">
            </button>
            <img style="position: relative;width: 100%;z-index: 1" src="<?php echo get_template_directory_uri()?>/img/cottruyen/cottruyen.png">
            <div id="scrollCottruyen" style="color: black; position: absolute; z-index: 2;top:25%;left:20%;height: 30%;overflow: auto" class="col-xs-8 col-sm-8">
                <div id="textcottruyen" style="text-align: center;font-size: 2vw;">
                    <p>Bỏ lại bạn bè, công việc và tất cả mọi thứ sau lưng<br>
                        Đột nhiên một ngày, nhân vật chính chợt nhận ra<br>
                        mình đã ở một thế giới khác.</p><br>

                    <p>Nơi đây là "Thế Giới Giấc Mơ"<br>
                        nơi mọi người sống từ sức mạnh của giấc mơ.<br>
                        Và nhân vật chính là công chúa của thế giới này!</p><br>

                    <p>Thế Giới Giấc Mơ giờ đây đang run sợ bởi sự tồn tại<br>
                        của loài quái vật ăn mất những giấc mơ: "Quỷ Giấc Mơ".</p><br>

                    <p>Ở thế giới này, mất đi giấc mơ...<br>
                        biết bao người chìm trong giấc ngủ không bao giờ tỉnh.<br>
                        Và cũng có biết bao chàng hoàng tử mất đi giấc mơ của chính mình.</p><br>

                    <p>Dù còn lưỡng lự, dù có lúc tưởng như sẽ nản lòng,<br>
                        Bạn vẫn tiếp tục đánh thức các chàng hoàng tử<br>
                        Và cùng họ, lấy lại những giấc mơ cho thế giới này.</p><br>

                    <p>Những giấc mơ bị quên lãng…<br>
                        Những giấc mơ đã bị mất đi…<br>
                        Và những giấc mơ vẫn còn chưa hé mở…<br>
                        Tất cả, chắc chắn sẽ giúp được cho ai đó…</p><br>

                    <p>Và đó là nơi…<br>
                        Câu chuyện của bạn bắt đầu.</p>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="giftcode" role="dialog">

        <!-- Modal content-->
        <div class="col-sm-8 col-sm-offset-2 col-xs-8 col-xs-offset-2">
            <button style="border: 0;background-color: #808080" data-dismiss="modal">
                <img style="width:5%; position: absolute; top:5%; right:4%; z-index: 2" src="<?php echo get_template_directory_uri()?>/img/mobile/iconBack.png">
            </button>
            <div style="position: relative">
                <img style="width: 100%" src="<?php echo get_template_directory_uri()?>/img/mobile/linkGiftcode.png">
                <p style="position: absolute; text-align: center;top: 5%; color: white; font-size: 3vw" class="col-xs-12">GIFTCODE</p>
                <div style="position: absolute;top:20%;" class="col-xs-12">
                    <form action="#" method="post">
                        <div style="" class="col-xs-8 col-xs-offset-2">
                            <p style="font-weight: bold; color: #670f11; font-size: 2.5vw">Email</p>
                            <div id="email_rong" style="color: red;display: none">Chưa nhâp email</div>
                            <input type="text" id="email" name="email" class="form-control" style="border-radius: 20px" placeholder="Nhập email">
                            <p style="font-weight: bold; color: #670f11; font-size: 2.5vw">Số điện thoại</p>
                            <input id="phone" type="text" name="phone" class="form-control" style="border-radius: 20px" placeholder="Nhập số điện thoại">
                            <div style="text-align: center;margin-top: 3%" class="col-xs-12"><a href="#" id="submit" style="
                     width: 10%" type="submit"><img width="30%" src="<?php echo get_template_directory_uri()?>/img/mobile/submit.png"></a></div>
                            <button style="display: none" id="giftcode1" data-toggle="modal" data-target="#giftcode2"
                                    data-dismiss="modal"></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="giftcode2" role="dialog">

        <!-- Modal content-->
        <div class="col-sm-8 col-sm-offset-2 col-xs-8 col-xs-offset-2">
            <button style="border: 0;background-color: #808080" data-dismiss="modal">
                <img style="width:5%; position: absolute; top:5%; right:4%; z-index: 2" src="<?php echo get_template_directory_uri()?>/img/mobile/iconBack.png">
            </button>
            <div style="position: relative">
                <img style="width: 100%" src="<?php echo get_template_directory_uri()?>/img/mobile/giftcode/giftcode2.png">
                <p style="position: absolute; text-align: center;top: 5%; color: white; font-size: 3vw" class="col-xs-12">GIFTCODE</p>
                <div style="position: absolute; text-align: center;top:17%; font-weight: bold; color: #670f11;" class="col-xs-10 col-xs-offset-1">
                    <p>Chúc mừng bạn đã báo danh thành công</p>
                    <p>BQT xin tặng bạn mã Code VIP </p>
                </div>
                <div style="position: absolute; top: 29%; left: 50%;transform: translateX(-50%);font-weight: bold; color:white; font-size: 2vw">V4Q9ZUXA7A</div>
                <div style="position: absolute; text-align: center;top:37%; font-weight: bold; color: #670f11;" class="col-xs-10 col-xs-offset-1">
                    <p>Chúc bạn chơi game vui vẻ</p>
                    <p>Hãy tham gia fanpage để nhận những phần quà giá trị khác</p>
                    <p>https://www.facebook.com/vn.yume100</p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="video" role="dialog">
        <div class="col-xs-12">
            <iframe id="iframe" width="100%" height="60%" src="" frameborder="0" allow="autoplay; encrypted-media"
                    allowfullscreen></iframe>
        </div>
    </div>

</div>
<div class="modal fade" id="dieu_khoan" role="dialog">
    <img style="width:5%; position: absolute; top:0; right:13%;z-index: 2"
         src="<?php echo get_template_directory_uri() ?>/img/cottruyen/icon_back.png">
    <!-- Modal content-->
    <div class=" col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1">
        <button style="border: 0;background-color: #808080" data-dismiss="modal">

        </button>
        <img style="position: relative;width: 100%;z-index: 1"
             src="<?php echo get_template_directory_uri() ?>/img/quydinh.png">
        <div style="color: white; position: absolute; z-index: 2;top:5%;left:20%; height: 80%;overflow: auto"
             id="scrollCottruyen" class="col-xs-8 col-sm-8 ">
            <p id="textcottruyen" style="text-align: justify;overflow: auto; font-size: 1.5vw">
            <p style="text-align: center;font-size: 2vw;color: white">Điều khoản sử dụng</p>
            <p id="textthongbao" style="text-align: justify;overflow: auto;font-size: 1vw"> <h4>Điều Khoản Sử Dụng Fuji Game</h4>
            Fujigame.vn là cổng thông tin trực tuyến cung cấp đến người dùng Internet các dịch vụ nội dung phong phú và đa dạng. Fuji Game là dịch vụ cho phép người dùng tạo ra một tài khoản dùng chung cho các dịch vụ được cung cấp bởi Cổng thông tin Fuji Game và các website đăng ký trở thành thành viên của Fuji Game . Sử dụng dịch vụ Fuji Game bạn không cần phải đăng ký và đăng nhập nhiều lần với nhiều tài khoản tại các site khác nhau, đồng thời thông tin cá nhân của bạn được quản lý tại một địa chỉ duy nhất. Cổng thông tin Fuji Game ý thức tính riêng tư và bảo mật thông tin cá nhân là hết sức quan trọng đối với người dùng. Do vậy Fuji Game cam kết bảo vệ tối đa sự riêng tư của người dùng. Fuji Game sử dụng thông tin bạn cung cấp để xử lý việc đăng ký. Mọi thông tin được thu thập trong quá trình xử lý được truyền đi an toàn và được bảo vệ bởi chúng tôi.
            <h4>Thoả thuận sử dụng giữa Fuji Game và thành viên:</h4>
            Với tư cách thành viên sử dụng dịch vụ cổng thanh toán Fuji Game , bạn buộc phải tuân thủ một cách nghiêm túc các nguyên tắc của Fuji Game . Người đứng tên đăng ký tài khoản sẽ phải hoàn toàn chịu trách nhiệm về các hoạt động của tài khoản do mình sở hữu thực hiện trên hệ thống.

            Fuji Game không chấp nhận bất cứ thông tin nào đi ngược lại với thuần phong mĩ tục, pháp luật và văn hoá Việt Nam, đi ngược lại đường lối của nhà nước CHXHCN Việt Nam, không được phép lưu truyền các sản phẩm phần mềm không có hoặc không rõ nguồn gốc về bản quyền và sở hữu trí tuệ.

            Fuji Game có thể tự cắt bỏ những nội dung của thành viên nếu không phù hợp với nội dung sinh hoạt hay quy định của Fuji Game , bất cứ thông tin nào của bạn thuộc loại cá nhân khi đăng ký sẽ đều được giữ bí mật (theo những điều khoản của Fuji Game ) tuy nhiên chúng tôi sẽ buộc phải thông báo những thông tin này cho các cơ quan pháp luật khi cần thiết.

            Những hành vi phá hoại, gây tổn hại đến hệ thống ảnh hưởng đến bộ mặt của Fuji Game hay cơ sở vật chất nếu bị phát hiện sẽ bị truy tố và xử lý trước pháp luật. Hãy nhớ rằng khi đã là thành viên trên Fuji Game tức là bạn đã hoàn toàn chấp nhận ở mức tối đa các điều khoản này!
            <h4>BQT Fuji Game</h4>
            <h4>Điều Khoản Sử Dụng Fuji Game</h4>
            Quy định khi tham gia game thuộc Fuji Game

            Khi tham gia chơi game, ngoài những thỏa thuận sử dụng dịch vụ với Fuji Game , Khách Hàng phải chấp nhận những Quy Định dưới đây:
            <h4>1. Các thay đổi về nội dung của Game:</h4>

            -Chúng tôi có thể - với toàn quyền hạn của mình và vào bất cứ lúc nào - bổ sung, sửa đổi hay xóa bỏ bất kỳ thông tin nào cũng như thay đổi sự trình bày, thành phần hoặc chức năng của hệ thống mà không cần báo trước.
            <h4>2. Thay đổi Quy định</h4>

            - Chúng tôi có toàn quyền thay đổi những điều khoản không còn phù hợp trong Quy định mà không cần báo trước. Với việc tiếp tục sử dụng hệ thống Game sau những sửa đổi đó, bạn mặc nhiên đồng ý chấp hành các sửa đổi trong quy định.
            <h4>3. Hành vi của người dùng</h4>

            <b>a. Tài khoản sử dụng (Account)</b>

            - Tên tài khoản phải được đặt theo đúng Quy định đặt tên và tạo biểu tượng của trò chơi.

            - Khi đăng ký tài khoản, Khách hàng phải cung cấp đầy đủ, chính xác các thông tin bắt buộc sau:

            + Chứng minh nhân dân (nếu có)

            + Email

            + Câu hỏi bảo mật và câu trả lời

            * Trường hợp có thể khai báo thêm các thông tin phụ như: Mã thẻ đã từng nạp , Họ và tên, địa chỉ, điện thoại, ngày sinh.
            Đây là yêu cầu bắt buộc và là căn cứ để giải quyết các tranh chấp, khiếu nại.. Các trường hợp điền thiếu thông tin tài khoản hoặc thông tin sai sự thật hay không có thông tin sẽ không được xem xét và giải quyết.

            <b>b. Mật khẩu (Password)</b>

            - Khách hàng cần phải bảo mật tuyệt đối mật khẩu của mình, không chia sẻ cho bất kỳ ai. Trong mọi trường hợp mất cắp, thất lạc mật khẩu, chúng tôi không chịu trách nhiệm khôi phục trừ khi thông tin về tài khoản được cung cấp trong giai đoạn đăng ký là hoàn toàn chính xác...
            <b>c. Tên nhân vật (Character)</b>

            - Tên của nhân vật phải phù hợp với Quy định đặt tên và tạo biểu tượng của trò chơi.

            <b>d. Những hành vi tuyệt đối nghiêm cấm</b>

            1- Xâm phạm, xâm nhập, tiếp cận, sử dụng hay tìm cách xâm phạm, xâm nhập, tiếp cận hoặc sử dụng bất kỳ phần nào trong máy chủ của , và/hoặc bất kỳ khu vực dữ liệu nào khác.

            2- Sử dụng bất kỳ chương trình, công cụ hay hình thức nào khác để can thiệp vào trò chơi hay làm thay đổi kết quả chơi bình thường (hack, cheat, bots…). Lợi dụng lỗi của hệ thống Game (nếu có) để phá hoại hoặc trục lợi.

            3- Mạo nhận là các thành viên khác, Admin, Game Master (GM), nhân viên … nhằm mục đích trục lợi. Hãy lưu ý rằng, trong bất cứ trường hợp nào, GM hoặc Admin cũng không yêu cầu Khách hàng cung cấp mật mã và các thông tin bảo mật cá nhân khác.

            4- Gửi lên hoặc truyền phát bất kỳ thông tin bất hợp pháp, lừa gạt, bôi nhọ, sỉ nhục, tục tĩu, khiêu dâm, xúc phạm, đe dọa, lăng mạ, thù hận, kích động… hoặc trái với chuẩn mực đạo đức chung của xã hội thuộc bất kỳ loại nào, bao gồm cả việc truyền bá hay khuyến khích những hành vi có thể cấu thành tội phạm hay vi phạm bất cứ điều khoản nào của Pháp luật.
            5- Gửi hoặc truyền bất kỳ dạng nào của quảng cáo, mời gọi, thư dây chuyền, cơ hội đầu tư hay bất kỳ dạng liên lạc có mục đích thương mại nào, trừ phi có sự cho phép bằng văn bản của .
            6- Gửi hoặc truyền bất kỳ thông tin hoặc phần mềm nào có chứa bất kỳ loại virus, Trojan, bọ hay các thành phần nguy hại nào.
            7- Gửi hoặc tải lên, xuất bản, truyền, tái sản xuất hoặc phân phối dưới bất cứ hình thức nào những nội dung được bảo vệ bởi luật bản quyền và luật sở hữu trí tuệ; hoặc tạo ra các biến thể của các nội dung đó mà không có sự đồng ý bằng văn bản của chủ nhân hoặc người giữ bản quyền.
            8- Khách hàng không có quyền sử dụng thông tin trong Game với bất cứ hình thức nào hoặc bất cứ mục đích nào, trừ những điều khoản được xác lập trong bản Quy định sử dụng này.
            9. Khách hàng có các hành vi lừa đảo, chiếm đoạt tài sản của người chơi khác khi không có sự đồng ý .

            <b>4. Cấm truy cập</b>
            - Chúng tôi có toàn quyền, vào bất cứ thời điểm nào, cấm hoặc từ chối truy cập của bạn vào trò chơi hoặc bất kỳ phần nào của hệ thống ngay lập tức và không cần báo trước nếu chúng tôi cho rằng khách hàng đã vi phạm bất cứ điều khoản nào trong bản Quy định hoặc các quy định của Pháp luật.
            - Trong những trường hợp nghiêm trọng, chúng tôi có thể phối hợp với nhà chức trách để truy cứu trách nhiệm hình sự với những đối tượng vi phạm.
            <h4>5. Quy tắc giải quyết tranh chấp:</h4>
            <b>Người chơi:</b>
            - Phải chứng minh được quyền sở hữu đối với tài khoản căn cứ vào các thông tin chính sau:
            + Chứng minh nhân dân (nếu có)
            + Email
            + Số điện thoại đăng ký :
            + Câu hỏi bảo mật và câu trả lời
            Trường hợp người chơi không chứng minh được quyền sở hữu đối với tài khoản thì các quyền lợi của người chơi sẽ không được xem xét giải quyết.
            - Cung cấp cho nhà phát hành đầy đủ các thông tin liên quan đến vấn đề tranh chấp, những thông tin phụ trong tài khoản của người chơi như Mã thẻ đã từng nạp, họ và tên, địa chỉ.

            <b>Nhà phát hành:</b>
            - Tiếp nhận và dựa trên kết quả kiểm tra hệ thống, cơ sở dữ liệu của trò chơi để giải quyết tranh chấp cho người chơi theo quy định.
            <h4>6. Liên kết đến và đi từ hệ thống các game thuộc cổng game Fuji Game</h4>
            - Các liên kết từ các hệ thống game trong quá trình tham gia có thể dẫn khách hàng tới các website khác. Khi khách hàng đồng ý truy cập vào các trang website đó đồng nghĩa với việc khách hàng thừa nhận và đồng ý rằng Fuji Game không chịu trách nhiệm về sự chính xác hoặc giá trị của bất kỳ thông tin nào do các website liên kết cung cấp.
            <h4>7. Quyền sở hữu trí tuệ</h4>
            - Tất cả quyền sở hữu trí tuệ tồn tại trong hệ thống game đều thuộc về Fuji Game hoặc cấp phép hợp pháp cho Fuji Game sử dụng tại hệ thống này. Theo đó, tất cả các quyền hợp pháp đều được đảm bảo. Trừ phi được sự đồng ý bằng văn bản của Fuji Game , bạn không được phép tải lên, gửi, xuất bản, tái sản xuất, truyền hoặc phân phát bằng bất cứ hình thức nào, bất cứ thành phần nào của hệ thống game hoặc tạo ra những bản sửa đổi của nội dung cung cấp trong game.
            - Khách hàng đồng ý để chúng tôi tự do sử dụng, công bố, áp dụng và sửa đổi bất kỳ ý tưởng, khái niệm, cách thức, đề xuất, gợi ý, bình luận hoặc liên lạc nào khác và thông tin được bạn cung cấp cho chúng tôi (“Phản hồi”) có liên quan và/hoặc dịch vụ của game một cách hoàn toàn miễn phí. Bạn từ bỏ và đồng ý từ bỏ bất kỳ quyền và sự đòi hỏi với bất kỳ khoản tiền thưởng, phí, nhuận bút, lệ phí và/ hoặc các kiểu chi trả khác liên quan đến việc chúng tôi sử dụng, công bố, áp dụng, và/hoặc chỉnh sửa bất kỳ thành phần hoặc tất cả Phản hồi của bạn.
            <h4>8. Thông tin người dùng</h4>
            - Với một số dịch vụ, hệ thống game yêu cầu người dùng phải đăng ký. Chúng tôi có thể dùng thông tin này để gửi thông báo cho Khách hàng về các sản phẩm và dịch vụ hoặc chương trình khuyến mại thông qua thư điện tử hoặc thư bưu chính (Ví dụ: thông báo thay đổi dịch vụ trong hệ thống, thông báo về các chương trình khuyến mại hay các hành động nhân đạo và xã hội khác). Chúng tôi cũng có thể sử dụng các thông tin này để cung cấp cho các cơ quan chức năng (nếu được yêu cầu) phục vụ cho công tác điều tra. Chúng tôi duy trì chính sách "KHÔNG GỬI THƯ RÁC" và không chia sẻ, bán hay để lọt email của khách hàng cho các bên thứ ba khi không có sự chấp thuận của Khách hàng (trừ trường hợp theo yêu cầu của cơ quan chức năng).
            - Fuji Game sẽ chỉ đưa ra các thông tin cá nhân và/hoặc địa chỉ IP của người dùng khi được các cơ quan chức năng yêu cầu và để làm các việc thực sự cần thiết như sau:
            + Phối hợp với cơ quan điều tra để tìm ra những hoạt động bất hợp pháp liên quan đến việc phát tán thông tin và an ninh mạng.
            + Bảo vệ quyền và tài sản liên quan đến hệ thống và khách khi truy cập vào các sản phẩm.
            + Nhận dạng những người cố tình vi phạm luật thông tin và an ninh mạng.
            + Thỏa mãn yêu cầu của bản thân người dùng.
            - Chúng tôi chỉ chịu trách nhiệm khi thông tin đang được giữ kín bởi Fuji Game . Khi thông tin đã được chuyển qua bên thứ ba đúng theo các thỏa thuận trên của bản Quy định, việc bảo mật thông tin là nằm ngoài khả năng của chúng tôi và hoàn toàn không phải là trách nhiệm của .
            <h4>9. Giới hạn trách nhiệm pháp lý và bảo đảm</h4>
            - Truy cập của khách hàng tới và sử dụng hệ thống do khách hàng hoàn toàn chịu trách nhiệm và được cung cấp như hiện có. Toàn bộ trách nhiêm pháp lý của chúng tôi nằm trong dịch vụ đang cung cập và bị giới hạn bởi pháp luật. Chúng tôi không và sẽ không phải là một thành phần tham gia vào bất kỳ giao dịch nào giữa khách hàng và một bên thứ ba.
            - Khách hàng sẽ chịu trách nhiệm về hành xử và tin tưởng hoàn toàn vào kỹ năng và khả năng đánh giá của bản thân đối với việc sử dụng và hiểu thông tin trong hệ thống game. Khách hàng chịu trách nhiệm đảm bảo rằng việc sử dụng thông tin của mình tuân thủ tất cả các yêu cầu của pháp luật hiện hành.
            - Giới hạn nghĩa vụ pháp lý trong Quy định sẽ được áp dụng với quy mô đầy đủ nhất được pháp luật hiện hành cho phép.
            <h4>10. Khuyến cáo đối với người chơi:</h4>
            - Chơi Game quá nhiều có thể ảnh hưởng đến sức khỏe, tâm sinh lý của người chơi, ảnh hưởng đến thời gian học tập và công tác của người chơi. Fuji Game khuyến cáo người chơi chỉ nên chơi tối đa từ 3 - 5giờ/ ngày.
            - Người chơi đang là học sinh hoặc sinh viên nên sắp xếp thời gian chơi hợp lý. Không bỏ học để chơi Game hoặc không thức khuya để chơi Game.
            - BQT khuyến cáo người chơi không thực hiện các giao dịch bên ngoài game, các giao dịch với vật phẩm có nguồn gốc không rõ ràng. Nếu xảy ra các trường hợp tranh chấp , BQT sẽ căn cứ các dữ liệu trên hệ thống để hỗ trợ.
            <h4>11. Luật áp dụng</h4>
            - Quy định trên đây được thực thi theo pháp luật của nước Cộng hòa Xã hội Chủ nghĩa Việt Nam. Khi sử dụng dịch vụ trong cổng game Fuji Game , bạn đã mặc nhiên chấp nhận điều khoản trong bản Quy định này. Chúng tôi hoạt động hoàn toàn trong khuôn khổ luật pháp Viêt Nam và cam kết tuân thủ các pháp chế của Nhà nước Cộng hòa Xã hội Chủ nghĩa Việt Nam. Các điều khoản trên là phù hợp với luật pháp hiện hành và đảm bảo quyền lợi cao nhất cho người sử dụng dịch vụ. Muốn biết thêm thông tin, vui lòng liên lạc với chúng tôi qua kênh hỗ trợ: support@fujigame.vn và Hotline 0946153466 .
            <h4>PHẦN PHỤ LỤC</h4>
            <b>I. Quy định về cách đặt tên và tạo biểu tượng</b>
            * Khi đặt tên cho:
            - Tên nhân vật trong trò chơi.
            - Tên tài khoản đăng nhập.
            - Tên bang hội.
            - Tên trên diễn đàn.

            <b>Người chơi cần tuân theo những quy định sau:</b>
            1. Không được đặt tên và tạo biểu tượng liên quan đến các danh nhân, tên của các vị lãnh đạo Đảng và Nhà Nước.
            2. Không được đặt tên và tạo biểu tượng có nội dung phản động, bài xích tôn giáo, khiêu dâm, bạo lực, đi ngược lại thuần phong mỹ tục, truyền thống và văn hóa Việt Nam.
            3. Không được đặt tên và tạo biểu tượng tên kẻ xấu (trùm khủng bố, phát xít…).
            4. Nghiêm cấm việc đặt tên và tạo biểu tượng liên quan đến tôn giáo, kỳ thị chủng tộc, giới tính.
            5. Không được đặt tên và tạo biểu tượng ám chỉ hoặc có ý ám chỉ đến những phần kín của cơ thể.
            6. Không được đặt tên và tạo biểu tượng có nội dung xúc phạm, khích bác đến người khác dưới bất kỳ hình thức nào.
            7. Không được đặt tên và tạo biểu tượng có nội dung phá rối hay làm mất uy tín của game, Fuji Game cũng như của các thành viên trong cộng đồng.
            8. Và tất cả những tên và biểu tượng mà GM, Admin cho là không phù hợp.

            <b>II. Văn Hóa Game</b>
            Khi tham gia vào game, Khách hàng cần thực hiện những điều khoản sau:
            - Không được gõ liên tục các dòng chữ vô nghĩa trên các kênh chat gây cản trở hoặc quấy rối các thành viên khác.
            - Không được có thái độ đe dọa hoặc các hành vi quấy rối, ức chế tâm lý, … các thành viên khác.
            - Không được sử dụng những từ ngữ, lời lẽ, dấu hiệu, ký tự không lành mạnh, tục tĩu, phỉ báng, xúc phạm, … nhân viên Fuji Game , , GM, Admin, người chơi và các tổ chức khác.
            - Không được gây rối, cản trở, phá hoại các sự kiện được tổ chức trong trò chơi.
            - Không được có những hành động, thái độ kỳ thị chủng tộc, tôn giáo, tín ngưỡng, giới tính, …
            - Không được đề cập, truyền bá, quảng cáo các sản phẩm có nội dung vi phạm pháp luật, độc hại, hình ảnh khiếm nhã, khiêu dâm, bạo lực… mang biểu tượng không lành mạnh.

            <b>III. Quy định về tặng đồ, trao đổi đồ</b>
            - Game Master (GM) không can thiệp vào việc tặng đồ, trao đổi đồ trong game.
            - Món đồ được tặng, trao đổi phải được sự đồng ý của bên được tặng, trao đổi.

            <b>IV. Khuyến cáo về việc chống gian lận</b>
            - Game Master (GM) SẼ KHÔNG YÊU CẦU người chơi cung cấp mật khẩu, thông tin cá nhân và các món đồ trong bất kỳ trường hợp nào. Người chơi cũng không nên cung cấp thông tin cá nhân cho bất kỳ ai kể cả GM.
            - Người chơi nào giả mạo nhân viên , GM hay bất kỳ người nào khác sẽ bị khóa tài khoản ngay lập tức.
            - Người chơi báo hack giả, lợi dụng việc hỗ trợ của để trục lợi, làm liên lụy đến người chơi khác sẽ bị khóa tài khoản tùy mức độ để cảnh cáo.

            <b>V. Khuyến cáo về chống hack account (tài khoản)</b>
            - Tránh tình trạng bị mất tên và mật khẩu, người chơi nên thường xuyên thay đổi mật khẩu của mình.
            - Người chơi nên cẩn thận trước các chương trình logger, keylog (theo dõi hoạt động của bàn phím, chuột, màn hình...). Các chương trình này có thể cho phép người khác lấy tên và mật khẩu của tài khoản.
            - Người chơi phải đặc biệt cẩn thận khi chơi ở nơi công cộng. Chương trình key logger sẽ quan sát tất cả mọi thứ bạn gõ từ bàn phím.
            - Nếu bạn nghi ngờ account của mình bị hack, vui lòng thông báo ngay đến Admin, GM. Nếu bạn thông báo quá chậm, các món đồ trong nhân vật của bạn có thể sẽ bị mất.
            - Chúng tôi có quyền tạm khóa tất cả những account để kiểm tra, nếu liên quan đến việc hack giao dịch bạc và vật phẩm trong game khi bị người chơi khác tố cáo.
            - Trong trường hợp account bị hack, người chơi nên báo cáo tốt nhất trong vòng 48giờ (mô tả đầy đủ và chi tiết). Nếu quá trời gian 3 ngày kể từ lúc tài khoản bị hack, chúng tôi sẽ không hỗ trợ với bất kỳ lý do nào.
            - Account bị hack đã được báo cáo sẽ chỉ được phục hồi tối đa là 3 lần. Các bản báo cáo sẽ được lưu giữ.
            - Account được báo cáo sẽ được xem xét và ngưng tạm thời. Mỗi bản báo cáo sẽ được xem xét trong vòng 2 ngày từ khi cung cấp đủ thông tin chi tiết.

            <b>VI. Quy định đối với đội ngũ GM quản trị game</b>
            - Không tham gia nhóm, bang hội của người chơi khác.
            - Không mua bán, trao đổi đồ vật với người chơi khác.
            - Không có quyền tạo đồ, chỉnh sửa chỉ số ở trong Game.
            - Bảo mật mọi thông tin cá nhân về Game Master, Admin,… và các thông tin bí mật của Game, chiến lược phát triển,…
            - Không có hành vi gây hấn tới người chơi

            <b>VII. Quy định xử lý vi phạm</b>
            Xử phạt trong Game:
            <img class="img-responsive" src="https://fujigame.vn/assets/img/qd_demo.jpg" />

            <b>VIII. Tố giác người chơi vi phạm</b> Khi phát hiện người dùng khác có một trong các hành vi sau:
            - Sử dụng phần mềm hoặc chương trình làm thay đổi kết quả trong game như sử dụng hack tốc độ, hack đồ,...
            - Phát tán lỗi của game (game bugs) dưới bất kỳ hình thức nào.
            - Những phương thức chơi bị nghiêm cấm khác được thông báo tại trang web của game.
            - Quấy rối người chơi khác.
            Bạn vui lòng thông báo về Email hỗ trợ: support@fujigame.vn hoặc qua Hotline 0946-153-466. đồng thời ghi rõ chi tiết về các hành vi vi phạm, có kèm theo hình ảnh chụp màn hình để minh chứng, chúng tôi sẽ có biện pháp xử lý kiên quyết và thích đáng.
            <h4>BQT Fuji Game</h4>
            </p>
            </p>
        </div>
    </div>
</div>

<div class="modal fade" id="quy_dinh" role="dialog">
    <button style="border: 0;background-color: #808080" data-dismiss="modal">
        <img style="width:5%; position: absolute; top:0; right:13%;z-index: 2"
             src="<?php echo get_template_directory_uri() ?>/img/cottruyen/icon_back.png">
    </button>
    <!-- Modal content-->
    <div class=" col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1">

        <img style="position: relative;width: 100%;z-index: 1"
             src="<?php echo get_template_directory_uri() ?>/img/quydinh.png">
        <div style="color: white; position: absolute; z-index: 2;top:5%;left:20%; height: 80%;overflow: auto"
             id="scrollCottruyen" class="col-xs-8 col-sm-8 ">
            <p id="textcottruyen" style="text-align: justify;overflow: auto; font-size: 1.5vw">
            <p style="text-align: center;font-size: 2vw;color: white">Điều khoản sử dụng</p>
            <p id="textthongbao" style="text-align: justify;overflow: auto;font-size: 1vw">
            <p>Khi tham gia chơi game, ngoài những thỏa thuận sử dụng dịch vụ với Fuji Game , Khách Hàng đã mặc nhiên chấp nhận những Quy Định dưới đây:</p>

            <b>1. Các thay đổi về nội dung của Game:</b>

            <p>- Chúng tôi có thể - với toàn quyền hạn của mình và vào bất cứ lúc nào - bổ sung, sửa đổi hay xóa bỏ bất kỳ thông tin nào cũng như thay đổi sự trình bày, thành phần hoặc chức năng của hệ thống mà không cần báo trước.</p>

            <b>2. Thay đổi Quy định</b>

            <p>- Chúng tôi có toàn quyền thay đổi những điều khoản không còn phù hợp trong Quy định mà không cần báo trước. Với việc tiếp tục sử dụng hệ thống Game sau những sửa đổi đó, bạn mặc nhiên đồng ý chấp hành các sửa đổi trong quy định.</p>

            <b>3. Hành vi của người dùng</b>

            a. Tài khoản sử dụng (Account)
            <p>- Tên tài khoản phải được đặt theo đúng Quy định đặt tên và tạo biểu tượng của trò chơi.</p>
            <p>- Khi đăng ký tài khoản, Khách hàng phải cung cấp đầy đủ, chính xác các thông tin bắt buộc sau:</p>
            <p>+ Chứng minh nhân dân (nếu có)</p>
            <p>+ Email</p>
            <p>+ Câu hỏi bảo mật và câu trả lời</p>
            <p> * Trường hợp có thể khai báo thêm các thông tin phụ như: Mã thẻ đã từng nạp , Họ và tên, địa chỉ, điện thoại, ngày sinh.</p>
            <p>Đây là yêu cầu bắt buộc và là căn cứ để giải quyết các tranh chấp, khiếu nại.. Các trường hợp điền thiếu thông tin tài khoản hoặc thông tin sai sự thật hay không có thông tin sẽ không được xem xét và giải quyết.</p>

            b. Mật khẩu (Password)
            <p>- Khách hàng cần phải bảo mật tuyệt đối mật khẩu của mình, không chia sẻ cho bất kỳ ai. Trong mọi trường hợp mất cắp, thất lạc mật khẩu, chúng tôi không chịu trách nhiệm khôi phục trừ khi thông tin về tài khoản được cung cấp trong giai đoạn đăng ký là hoàn toàn chính xác...</p>

            c. Tên nhân vật (Character)
            <p>- Tên của nhân vật phải phù hợp với Quy định đặt tên và tạo biểu tượng của trò chơi.</p>

            d. Những hành vi tuyệt đối nghiêm cấm
            <p>1- Xâm phạm, xâm nhập, tiếp cận, sử dụng hay tìm cách xâm phạm, xâm nhập, tiếp cận hoặc sử dụng bất kỳ phần nào trong máy chủ của NPH, và/hoặc bất kỳ khu vực dữ liệu nào khác.</p>
            <p>2- Sử dụng bất kỳ chương trình, công cụ hay hình thức nào khác để can thiệp vào trò chơi hay làm thay đổi kết quả chơi bình thường (hack, cheat, bots…). Lợi dụng lỗi của hệ thống Game (nếu có) để phá hoại hoặc trục lợi.</p>
            <p>3- Mạo nhận là các thành viên khác, Admin, Game Master (GM), nhân viên NPH … nhằm mục đích trục lợi. Hãy lưu ý rằng, trong bất cứ trường hợp nào, GM hoặc Admin cũng không yêu cầu Khách hàng cung cấp mật mã và các thông tin bảo mật cá nhân khác.</p>
            <p>4- Gửi lên hoặc truyền phát bất kỳ thông tin bất hợp pháp, lừa gạt, bôi nhọ, sỉ nhục, tục tĩu, khiêu dâm, xúc phạm, đe dọa, lăng mạ, thù hận, kích động… hoặc trái với chuẩn mực đạo đức chung của xã hội thuộc bất kỳ loại nào, bao gồm cả việc truyền bá hay khuyến khích những hành vi có thể cấu thành tội phạm hay vi phạm bất cứ điều khoản nào của Pháp luật.</p>
            <p>5- Gửi hoặc truyền bất kỳ dạng nào của quảng cáo, mời gọi, thư dây chuyền, cơ hội đầu tư hay bất kỳ dạng liên lạc có mục đích thương mại nào, trừ phi có sự cho phép bằng văn bản của NPH.</p>
            <p>6- Gửi hoặc truyền bất kỳ thông tin hoặc phần mềm nào có chứa bất kỳ loại virus, Trojan, bọ hay các thành phần nguy hại nào.</p>
            <p>7- Gửi hoặc tải lên, xuất bản, truyền, tái sản xuất hoặc phân phối dưới bất cứ hình thức nào những nội dung được bảo vệ bởi luật bản quyền và luật sở hữu trí tuệ; hoặc tạo ra các biến thể của các nội dung đó mà không có sự đồng ý bằng văn bản của chủ nhân hoặc người giữ bản quyền.</p>
            <p>8- Khách hàng không có quyền sử dụng thông tin trong Game với bất cứ hình thức nào hoặc bất cứ mục đích nào, trừ những điều khoản được xác lập trong bản Quy định sử dụng này.</p>
            9. Khách hàng có các hành vi lừa đảo, chiếm đoạt tài sản của người chơi khác khi không có sự đồng ý .

            <b>4. Cấm truy cập</b>

            <p> - Chúng tôi có toàn quyền, vào bất cứ thời điểm nào, cấm hoặc từ chối truy cập của bạn vào trò chơi hoặc bất kỳ phần nào của hệ thống ngay lập tức và không cần báo trước nếu chúng tôi cho rằng khách hàng đã vi phạm bất cứ điều khoản nào trong bản Quy định hoặc các quy định của Pháp luật.</p>
            <p>- Trong những trường hợp nghiêm trọng, chúng tôi có thể phối hợp với nhà chức trách để truy cứu trách nhiệm hình sự với những đối tượng vi phạm.</p>

            <b>5. Quy tắc giải quyết tranh chấp:</b>

            Người chơi:
            <p>- Phải chứng minh được quyền sở hữu đối với tài khoản căn cứ vào các thông tin chính sau:</p>
            <p>+ Chứng minh nhân dân (nếu có)</p>
            <p>+ Email</p>
            <p>+ Câu hỏi bảo mật và câu trả lời</p>
            Trường hợp người chơi không chứng minh được quyền sở hữu đối với tài khoản thì các quyền lợi của người chơi sẽ không được xem xét giải quyết.
            <p>- Cung cấp cho nhà phát hành đầy đủ các thông tin liên quan đến vấn đề tranh chấp, những thông tin phụ trong tài khoản của người chơi như Mã thẻ đã từng nạp, họ và tên, số điện thoại, địa chỉ.</p>
            Nhà phát hành:
            <p>- Tiếp nhận và dựa trên kết quả kiểm tra hệ thống, cơ sở dữ liệu của trò chơi để giải quyết tranh chấp cho người chơi theo quy định.</p>

            <b>6. Liên kết đến và đi từ hệ thống các game thuộc cổng game Fuji Game</b>

            <p>- Các liên kết từ các hệ thống game trong quá trình tham gia có thể dẫn khách hàng tới các website khác. Khi khách hàng đồng ý truy cập vào các trang website đó đồng nghĩa với việc khách hàng thừa nhận và đồng ý rằng Fuji Game không chịu trách nhiệm về sự chính xác hoặc giá trị của bất kỳ thông tin nào do các website liên kết cung cấp.</p>

            <b>7. Quyền sở hữu trí tuệ</b>

            <p>- Tất cả quyền sở hữu trí tuệ tồn tại trong hệ thống game đều thuộc về Fuji Game hoặc cấp phép hợp pháp cho Fuji Game sử dụng tại hệ thống này. Theo đó, tất cả các quyền hợp pháp đều được đảm bảo. Trừ phi được sự đồng ý bằng văn bản của Fuji Game , bạn không được phép tải lên, gửi, xuất bản, tái sản xuất, truyền hoặc phân phát bằng bất cứ hình thức nào, bất cứ thành phần nào của hệ thống game hoặc tạo ra những bản sửa đổi của nội dung cung cấp trong game.</p>
            <p>- Khách hàng đồng ý để chúng tôi tự do sử dụng, công bố, áp dụng và sửa đổi bất kỳ ý tưởng, khái niệm, cách thức, đề xuất, gợi ý, bình luận hoặc liên lạc nào khác và thông tin được bạn cung cấp cho chúng tôi (“Phản hồi”) có liên quan và/hoặc dịch vụ của game một cách hoàn toàn miễn phí. Bạn từ bỏ và đồng ý từ bỏ bất kỳ quyền và sự đòi hỏi với bất kỳ khoản tiền thưởng, phí, nhuận bút, lệ phí và/ hoặc các kiểu chi trả khác liên quan đến việc chúng tôi sử dụng, công bố, áp dụng, và/hoặc chỉnh sửa bất kỳ thành phần hoặc tất cả Phản hồi của bạn.</p>

            <b>8. Thông tin người dùng</b>

            <p>- Với một số dịch vụ, hệ thống game yêu cầu người dùng phải đăng ký. Chúng tôi có thể dùng thông tin này để gửi thông báo cho Khách hàng về các sản phẩm và dịch vụ hoặc chương trình khuyến mại thông qua thư điện tử hoặc thư bưu chính (Ví dụ: thông báo thay đổi dịch vụ trong hệ thống, thông báo về các chương trình khuyến mại hay các hành động nhân đạo và xã hội khác). Chúng tôi cũng có thể sử dụng các thông tin này để cung cấp cho các cơ quan chức năng (nếu được yêu cầu) phục vụ cho công tác điều tra. Chúng tôi duy trì chính sách "KHÔNG GỬI THƯ RÁC" và không chia sẻ, bán hay để lọt email của khách hàng cho các bên thứ ba khi không có sự chấp thuận của Khách hàng (trừ trường hợp theo yêu cầu của cơ quan chức năng).</p>
            <p>- Fuji Game sẽ chỉ đưa ra các thông tin cá nhân và/hoặc địa chỉ IP của người dùng khi được các cơ quan chức năng yêu cầu và để làm các việc thực sự cần thiết như sau:</p>
            + Phối hợp với cơ quan điều tra để tìm ra những hoạt động bất hợp pháp liên quan đến việc phát tán thông tin và an ninh mạng.
            + Bảo vệ quyền và tài sản liên quan đến hệ thống và khách khi truy cập vào các sản phẩm.
            + Nhận dạng những người cố tình vi phạm luật thông tin và an ninh mạng.
            + Thỏa mãn yêu cầu của bản thân người dùng.
            <p>- Chúng tôi chỉ chịu trách nhiệm khi thông tin đang được giữ kín bởi Fuji Game . Khi thông tin đã được chuyển qua bên thứ ba đúng theo các thỏa thuận trên của bản Quy định, việc bảo mật thông tin là nằm ngoài khả năng của chúng tôi và hoàn toàn không phải là trách nhiệm của NPH.</p>

            <b>9. Giới hạn trách nhiệm pháp lý và bảo đảm</b>

            <p>- Truy cập của khách hàng tới và sử dụng hệ thống do khách hàng hoàn toàn chịu trách nhiệm và được cung cấp như hiện có. Toàn bộ trách nhiêm pháp lý của chúng tôi nằm trong dịch vụ đang cung cập và bị giới hạn bởi pháp luật. Chúng tôi không và sẽ không phải là một thành phần tham gia vào bất kỳ giao dịch nào giữa khách hàng và một bên thứ ba.</p>
            <p>- Khách hàng sẽ chịu trách nhiệm về hành xử và tin tưởng hoàn toàn vào kỹ năng và khả năng đánh giá của bản thân đối với việc sử dụng và hiểu thông tin trong hệ thống game. Khách hàng chịu trách nhiệm đảm bảo rằng việc sử dụng thông tin của mình tuân thủ tất cả các yêu cầu của pháp luật hiện hành.</p>
            <p>- Giới hạn nghĩa vụ pháp lý trong Quy định sẽ được áp dụng với quy mô đầy đủ nhất được pháp luật hiện hành cho phép.</p>

            <b>10. Khuyến cáo đối với người chơi:</b>

            <p>- Chơi Game quá nhiều có thể ảnh hưởng đến sức khỏe, tâm sinh lý của người chơi, ảnh hưởng đến thời gian học tập và công tác của người chơi. Fuji Game khuyến cáo người chơi chỉ nên chơi tối đa từ 3 - 5giờ/ ngày.</p>
            <p>- Người chơi đang là học sinh hoặc sinh viên nên sắp xếp thời gian chơi hợp lý. Không bỏ học để chơi Game hoặc không thức khuya để chơi Game.</p>
            <p>- BQT khuyến cáo người chơi không thực hiện các giao dịch bên ngoài. Nếu xảy ra các trường hợp tranh chấp , BQT sẽ căn cứ các dữ liệu trên hệ thống để hỗ trợ.</p>

            <b>11. Luật áp dụng</b>

            <p>- Quy định trên đây được thực thi theo pháp luật của nước Cộng hòa Xã hội Chủ nghĩa Việt Nam. Khi sử dụng dịch vụ trong cổng game Fuji Game , bạn đã mặc nhiên chấp nhận điều khoản trong bản Quy định này. Chúng tôi hoạt động hoàn toàn trong khuôn khổ luật pháp Viêt Nam và cam kết tuân thủ các pháp chế của Nhà nước Cộng hòa Xã hội Chủ nghĩa Việt Nam. Các điều khoản trên là phù hợp với luật pháp hiện hành và đảm bảo quyền lợi cao nhất cho người sử dụng dịch vụ. Muốn biết thêm thông tin, vui lòng liên lạc với chúng tôi qua Hotline 0943731327</p>

            </p>
            </p>
        </div>
    </div>
</div>

<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.1';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>
<script>
    function back() {
        $("#menu").css('display','none');
    }
    function menu() {
        $("#menu").css('display','block');
    }
</script>
<script>
    $(document).ready(function () {
        $('#video').on('click', function () {
            $("#iframe")[0].src = "https://www.youtube.com/embed/hiuyLPRinOk";
            $("iframe").each(function () {
                var src = $(this).attr('src');
                $(this).attr('src', src);
            });
        });

    });
</script>
<script>
    $(document).ready(function () {
        $('#playvideo').on('click', function () {
            $("#iframe")[0].src = "https://www.youtube.com/embed/hiuyLPRinOk?autoplay=1";
            ev.preventDefault();
        });
    });
</script>
<script>
    $(document).ready(function () {
        $('#submit').click(function (e) {
            e.preventDefault();
            if ($('#email').val() == "") {
                $('#email_rong').css('display', 'block');
            }
            else {
                $('#email_rong').css('display', 'none');
                $.ajax({
                    url: "http://kpi.yume100.vn/api/mail",
                    data: {
                        "email": $('#email').val(),
                        "phone": $('#phone').val()
                    },
                    error: function(error) {
                        // console.log(error)
                    },
                    dataType: 'json',
                    success: function(data) {
                        // console.log(data);
                    },
                    type: 'POST'
                });
                $('#giftcode1').trigger('click');
            }
        });
    });
</script>
</body>

</html>