<html>
<head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
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
</style>
<div class="containers" style="background-image: url(<?php echo get_template_directory_uri()?>/img/mobile/background.png);width:100%; background-repeat: no-repeat;background-size: 100% 100%;margin: 0">
    <div id="menu" style="display: none" >
        <!-- Modal content-->
        <div style="position: absolute; padding: 0;top: 0;z-index: 3;" class="col-sm-8 col-sm-offset-4 col-xs-8 col-xs-offset-4">

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
                    <div style="font-size: 3vw"><a onclick="back()" href="#hotro">LIÊN HỆ</a></div>
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
            <div><a href="#"><img width="100%" style="margin-bottom: 6%" src="<?php echo get_template_directory_uri()?>/img/mobile/download/ios.png"></a></div>
            <div><a href="#"><img width="100%"  src="<?php echo get_template_directory_uri()?>/img/mobile/download/android.png"></a></div>
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
                <a href="#" data-toggle="modal" data-target="#video"><img src="<?php echo get_template_directory_uri()?>/img/mobile/topbanner/yume100.png" alt="Chicago" style="width:100%;"></a>
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

        <div id="noiDungThongBao" style="position: absolute;top: 20%; overflow: auto; height: 75%" class="col-xs-10 col-xs-offset-1">
            <?php
            global $wpdb;
            $thongbao = $wpdb->get_results("SELECT * FROM wp_posts");
            $total = count($thongbao);
            if($total > 0 && $total < 10){
            for( $i = $total-1; $i >= 0; $i--){ ?>
            <div class="row">
                <div class="col-xs-2"  style="padding: 0;margin: 0">
                    <img width="100%" src="<?php echo get_template_directory_uri()?>/img/trangchu/thongbao/avatar.png">
                </div>
                <div class="col-xs-10" style="color: white">
                    <div style=""><a href="#" data-toggle="modal" data-target="#Tbao<?php echo $thongbao[$i]->ID?>"><p style=" font-size: 3vw"><?php echo $thongbao[$i]->post_title?></p></a></div>
                    <div style="font-size: 2vw;"><?php
                        if(strlen($thongbao[$i]->post_content) > 150){
                            $thongbao[$i]->post_content = substr($thongbao[$i]->post_content,0,150)."...";
                        }
                        echo $thongbao[$i]->post_content?></div>

                </div>
            </div>
                <?php if($i > 0){?>
            <hr style="margin: 2vw">
            <?php }}}
            if($total >= 10){
            for( $i = $total - 1; $i >= $total - 10; $i--){

                ?>
            <div class="row">
                <div class="col-xs-2"  style="padding: 0;margin: 0">
                    <img width="100%" src="<?php echo get_template_directory_uri()?>/img/trangchu/thongbao/avatar.png">
                </div>
                <div class="col-xs-10" style="color: white">
                    <div style=""><a href="#" data-toggle="modal" data-target="#Tbao<?php echo $thongbao[$i]->ID?>"><p style=" font-size: 3vw"><?php echo $thongbao[$i]->post_title?></p></a></div>
                    <div style="font-size: 2vw;"><?php
                                            if(strlen($thongbao[$i]->post_content) > 150){
                                                $thongbao[$i]->post_content = substr($thongbao[$i]->post_content,0,150)."...";
                                            }echo $thongbao[$i]->post_content?></div>

                </div>
            </div>
                <?php if($i > count($thongbao)-10){ ?>
            <hr style="margin: 2vw">
            <?php }}}?>
        </div>

    </div>
    <div id="gioithieu" style="margin-top: 5%;position: relative">
        <img src="<?php echo get_template_directory_uri()?>/img/mobile/gioithieu.png" width="90%" style="margin-left: 5%;">
        <div class="col-xs-12" style="position: absolute; top: 3%; text-align: center; color: white" class="title"><p style=" font-size: 4vw;">GIỚI THIỆU</p></div>
        <p style="color: white;position: absolute; top: 43%;  font-size: 2.5vw; text-align: justify" class="col-xs-10 col-xs-offset-1">
            Hiệp Khách H5 thuộc thể loại game nhập vai chơi ngay trên máy tính hoặc
            điện thoại do VNG độc quyền phát hành tại Việt Nam. Những chú Mimi xinh xắn trong một lần mải chơi đã
            không may bị mắc kẹt vào nhau mà không có cách nào thoát ra được.
            Hãy tham gia chơi game để giải cứu các chú Mimi đang bị mắc kẹt nhé!</p>
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
            <a href="#"><img src="<?php echo get_template_directory_uri()?>/img/mobile/hotro/ios.png" style = "position: absolute; top:35%;left: 25%;width: 50%"></a>
            <a href="#"><img src="<?php echo get_template_directory_uri()?>/img/mobile/hotro/android.png" style = "position: absolute; top:65%;left: 25%;width: 50%"></a>
        </div>
    </div>
    <div id="footer" style="position: relative">
        <img src="<?php echo get_template_directory_uri()?>/img/mobile/footer.png" width="100%" style="margin-top: 5%">
        <div class="col-xs-12" style="color: white; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); overflow: hidden">
            <p style="text-align: center; font-size: 2vw">Điều khoản sử dụng | Quy định NPH</p>
            <p style="text-align: center; font-size: 3vw">FUJI GAME ĐỘC QUYỀN PHÁT HÀNH TẠI VIỆT NAM</p>
            <p style="text-align: center; font-size: 2vw"> Tầng 7 tòa nhà Việt Tower, số 1 Thái Hà, phường Trung Liệt, quận Đống Đa, TP Hà Nội.
                Giấy phép số 165/GP-BTTTT do Bộ Thông tin và Truyền thông cấp ngày 20/04/2017
                © GCREST, Inc. All rights reserved
            </p>
        </div>
    </div>

    <?php
        $thongbao = $wpdb->get_results("SELECT * FROM wp_posts");
        $total = count($thongbao);
        if($total > 0 && $total < 10){
        for( $i = count($thongbao)-1; $i >= 0; $i--){ ?>

    <div class="modal fade" id="Tbao<?php echo $thongbao[$i]->ID?>" role="dialog">

        <!-- Modal content-->
        <div class=" col-xs-12 col-sm-12">
            <button style="border: 0;background-color: #808080" data-dismiss="modal">
                <img style="width:5%; position: absolute; top:2%; right:2%;z-index: 2" src="<?php echo get_template_directory_uri()?>/img/thongbao/icon_back.png">
            </button>
            <div style="overflow: auto">
            <img style="position: relative;width: 100%;z-index: 1" src="<?php echo get_template_directory_uri()?>/img/thongbao/thongbao.png">
            <img style="width:50%; position: absolute; z-index: 2;top:20%; left:25%" src="<?php echo get_template_directory_uri()?>/img/thongbao/avatar.png">
            <div style="color: white; position: absolute; z-index: 2; top:60%;height: 30%; overflow: auto" id="scrollThongBao"  class="col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1">
                <div>
                    <p style="text-align: center; font-size: 3vw"><?php echo $thongbao[$i]->post_title;?></p>
                    <p style="text-align: justify;font-size: 2vw" ><?php echo $thongbao[$i]->post_content;?></p>
                </div>
            </div>
            </div>
        </div>
    </div>
    <?php }} if($total >= 10){
        for( $i = $total; $i >= $total - 10; $i--){ ?>
            <div style="" class="modal fade" id="Tbao<?php echo $thongbao[$i]->ID?>" role="dialog">

                <!-- Modal content-->
                <div class=" col-xs-12 col-sm-12">
                    <button style="border: 0;background-color: #808080" data-dismiss="modal">
                        <img style="width:5%; position: absolute; top:2%; right:2%;z-index: 2" src="<?php echo get_template_directory_uri()?>/img/thongbao/icon_back.png">
                    </button>
                    <div >
                        <img style="position: relative;width: 100%;z-index: 1" src="<?php echo get_template_directory_uri()?>/img/thongbao/thongbao.png">
                        <img style="width:50%; position: absolute; z-index: 2;top:20%; left:25%" src="<?php echo get_template_directory_uri()?>/img/thongbao/avatar.png">
                        <div style="color: white; position: absolute; z-index: 2; top:55%;height: 30%; overflow: auto" id="scrollThongBao"  class="col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1">
                            <div >
                                <p style="text-align: center; font-size: 3vw"><?php echo $thongbao[$i]->post_title;?></p>
                                <p style="text-align: justify;font-size: 2vw" ><?php echo $thongbao[$i]->post_content;?></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php }}?>

    <div class="modal fade" id="cotTruyen" role="dialog">
        <!-- Modal content-->
        <div class="col-xs-12 col-sm-12">
            <button style="border: 0;background-color: #808080" data-dismiss="modal">
                <img style="width:5%; position: absolute; top:7%; right:13%;z-index: 2" src="<?php echo get_template_directory_uri()?>/img/cottruyen/icon_back.png">
            </button>
            <img style="position: relative;width: 100%;z-index: 1" src="<?php echo get_template_directory_uri()?>/img/cottruyen/cottruyen.png">
            <div id="scrollCottruyen" style="color: black; position: absolute; z-index: 2;top:25%;left:20%;height: 30%;overflow: auto" class="col-xs-8 col-sm-8">
                <p id="textcottruyen" style="text-align: justify;font-size: 2vw; " >
                    Hiệp Khách H5 thuộc thể loại game nhập vai chơi ngay trên máy tính hoặc điện thoại do VNG độc quyền phát
                    hành tại Việt Nam.Hiệp Khách H5 thuộc thể loại game nhập vai chơi ngay trên máy tính hoặc điện thoại do VNG
                    độc quyền phát hành tại Việt Nam. Những chú Mimi xinh xắn trong một lần mải chơi đã không may bị mắc kẹt vào
                    nhau mà không có cách nào thoát ra được. Hãy tham gia chơi game để giải cứu các chú Mimi đang bị mắc kẹt nhé!
                    Hiệp Khách H5 thuộc thể loại game nhập vai chơi ngay trên máy tính hoặc điện thoại do VNG độc quyền phát hànhi Việt Nam.
                    Hiệp Khách H5 thuộc thể loại game nhập vai chơi ngay trên máy tính hoặc điện thoại do VNG độc quyền phát hànhi Việt Nam.
                    độc quyền phát hành tại Việt Nam. Những chú Mimi xinh xắn trong một lần mải chơi đã không may bị mắc kẹt vào
                    nhau mà không có cách nào thoát ra được. Hãy tham gia chơi game để giải cứu các chú Mimi đang bị mắc kẹt nhé!
                    Hiệp Khách H5 thuộc thể loại game nhập vai chơi ngay trên máy tính hoặc điện thoại do VNG độc quyền phát hành
                </p>
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
                <form action="#" method="post">
                    <div style="position: absolute;top:20%;" class="col-xs-8 col-xs-offset-2">
                        <p style="font-weight: bold; color: #670f11; font-size: 2.5vw">Email</p>
                        <input type="text" name="email" class="form-control" style="border-radius: 20px" placeholder="Nhập email">
                        <p style="font-weight: bold; color: #670f11; font-size: 2.5vw">Số điện thoại</p>
                        <input type="text" name="email" class="form-control" style="border-radius: 20px" placeholder="Nhập số điện thoại">
                    </div>
                    <div style="position: absolute; text-align: center;top:52%;" class="col-xs-12"><a href="#" data-toggle="modal" data-target="#giftcode2" style="
                     width: 10%" type="submit" data-dismiss="modal"><img width="30%" src="<?php echo get_template_directory_uri()?>/img/mobile/submit.png"></a></div>
                </form>
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
                <div style="position: absolute; top: 29%; left: 50%;transform: translateX(-50%);font-weight: bold; color:white; font-size: 2vw">FKDIFFFJG</div>
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
            <iframe width="100%" height="60%" src="https://www.youtube.com/embed/-sdYvmpy2cg?autoplay=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen aut></iframe>
        </div>
    </div>

</div>



<script>
    function back() {
        $("#menu").css('display','none');
    }
    function menu() {
        $("#menu").css('display','block');
    }
</script>
</body>

</html>