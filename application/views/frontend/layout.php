<!DOCTYPE html>
<html lang="en">
  <head>
    <base href="<?php echo base_url(); ?>"></base>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>
        FAHASA.COM
    </title>
    <link href="public/images/icon.png" rel="shortcut icon" type="image/png">
    <link href="public/css/bootstrap.css" rel="stylesheet">
    <link href="public/css/font-awesome.css" rel="stylesheet">
    <link href="public/css/lte.css" rel="stylesheet">
    <link href="public/css/AdminLTE.min.css" rel="stylesheet">
    <link href="public/css/owl.carousel.min.css" rel="stylesheet">
    <link href="public/css/owl.theme.default.css" rel="stylesheet">
    <link rel="stylesheet" href="public/css/style-jc.css">
    <link href="public/css/menu-tab.css" rel="stylesheet">
    <link href="public/css/jquery.bxslider.css" rel="stylesheet" />
    <link href="public/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="top">
            <style type="text/css" media="screen">
                .top{
                    width: 100%;
                }
            </style>
            <img width="100%" src=".\public\images\banner\banner.jpg" alt="">
        </div>
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0&appId=617188348962621&autoLogAppEvents=1";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
        <!-- TOPBAR -->
        <?php 
            $this->load->view('frontend/modules/topbar');
        ?>
        <!-- LOGO + SEARCH -->
        <?php 
            $this->load->view('frontend/modules/logo-search');
        ?>
        <section id="menu-slider">
            <?php 
                $this->load->view('frontend/modules/panel-left');
            ?>
        </section>
        <!--PRODUCT-->
        <?php 
            if(isset($com,$view)){
                $this->load->view('frontend/components/'.$com.'/'.$view);
            }
            else
                $this->load->view('frontend/components/Error404/index');
        ?>
        <!--FOOTER-->
        <?php 
            $this->load->view('frontend/modules/footer');
        ?>
        <script src="public/js/jquery-2.2.3.min.js"></script>
        <script src="public/js/bootstrap.js"></script>
        <script src="public/js/app.min.js"></script>
        <script src="public/js/owl.carousel.js"></script>
        <script src="public/js/jquery.jcarousel.js"></script>
        <script src="public/js/jquery.bxslider.js"></script>
        <script src="public/js/jcarousel.connected-carousels.js"></script>
        <script src="public/js/menu-tab.js"></script>
    </body>
</html>
