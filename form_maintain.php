<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Dream Kingdom - Yume 100 VN</title>
</head>
<body style="overflow-x: hidden;">
<div class="container">
    <h1 style="text-align: center">Form maintain</h1>
    <form action="#" method="post">
        <textarea  class="form-control" rows="10" name="content"></textarea><br>
        <input type="submit" class="btn">
    </form>
    <?php if(isset($_POST['content'])) {
            $_POST['content'] = str_replace("\n", "<br>", $_POST['content']);
            $link = new mysqli('125.212.233.97', 'root', 'Fuji@321@', 'landing_page');
            $query = "INSERT INTO maintain(content) value('" . $_POST['content'] . "')";
            echo $query;
            if($link->query($query) == true){
                echo "Thêm thành công";
            }
            else echo "Thêm thất bại";

}?>
</div>
</body>
</html>