<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $class; ?>" style="overflow-x: hidden">
<div class="row" id="top" style="background-color: #006341;padding: 3px">
    <div style="color:#f5f5f5;font-weight: bold;font-size: 14px " class="col-sm-5"><?=$comment?>
    <div align="center" id="blink1"><?=$store_name?></div>
    </div>
    <div class="col-xs-10 col-sm-2 pull-right"><?=$language?></div>
    <div class="col-xs-10 col-sm-1 pull-right"><a style="color: #f5f5f5" href="<?=$wishlist?>"><?=$text_wishlist?><i style="color: gold" class="glyphicon glyphicon-star"></i></a></div>

    <div class="col-sm-2 pull-right">
        <div>
            <?php if ($logged) { ?>
            <i style="color: white" class="glyphicon glyphicon-user"></i> <a style="color: #f5f5f5" href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
            <i style="color: white" class="glyphicon glyphicon-log-out"></i> <a style="color: #f5f5f5" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
            <?php } else { ?>
            <nav>
                <ul>
                    <li id="login">
                        <a style="color: #f5f5f5;" id="login-trigger" href="#">
                            <?=$text_login?><span>&#x25BC;</span>
                        </a>
                        <div id="login-content">
                            <form method="post" action="/index.php?route=account/login ">
                                <fieldset id="inputs">
                                    <input id="username" type="email" name="email" placeholder="your email" required>
                                    <input id="password" type="password" name="password" placeholder="password" required>
                                </fieldset>
                                <fieldset id="actions">
                                    <input style="background: green" type="submit" id="submit" value="<?=$text_login?>">
                                    <a href="/index.php?route=account/register" style="margin: 10px"><?=$text_createaccount?></a>
                                    <a style="margin: 10px"  href="/index.php?route=account/forgotten"><?=$text_reminder?></a>
                                </fieldset>
                            </form>
                        </div>
                    </li>
                    <li id="signup">
                    </li>
                </ul>
            </nav>
            <?php } ?>

        </div>
    </div>
    <div class=" pull-right"><?=$search?></div>

</div>
<header style="background:rgba(235,235,235,0.94)">

    <div class="row">
      <div class="col-sm-1" style="margin-left: 5%;float: left">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="/image/catalog/logo.svg" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-10 col-xs-12" style="float: left">
          <nav id="menu" class="navbar">
              <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
                  <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
              </div>
              <div class="collapse navbar-collapse navbar-ex1-collapse">
                  <ul class="nav navbar-nav">
                      <?php foreach ($categories as $category) { ?>
                      <?php if ($category['children']) { ?>
                      <li class="dropdown"><a  href="<?php echo $category['href']; ?>" class="dropdown-toggle"><?php echo $category['name']; ?></a>
                          <div class="dropdown-menu">
                              <div class="dropdown-inner">
                                  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                  <ul class="list-unstyled">
                                      <?php if($category['image']):?>
                                      <div class="row">
                                          <div class="col-sm-5">
                                              <?php foreach ($children as $child) { ?>
                                              <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                              <?php } ?>
                                          </div>
                                          <div class="col-sm-7">
                                              <li><div align="right" style="padding: 30px"><img width="300px" src="image/<?=$category['image']?>"></div></li>

                                          </div>

                                      </div>
                                      <?php else: ?>
                                      <?php foreach ($children as $child) { ?>
                                      <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                      <?php } ?>
                                      <?php endif ?>

                                  </ul>
                                  <?php } ?>
                              </div>
                              </div>
                      </li>
                      <?php } else { ?>
                      <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                      <?php } ?>
                      <?php } ?>
                  </ul>
                  <div style="float: left"><?=$cart?></div>
              </div>
          </nav>
      </div>
    </div>
</header>
<?php if ($categories) { ?>
<div class="container">
</div>
<?php } ?>
<script>

    $(document).ready(function(){

        $('#login-trigger').click(function(){

            $(this).next('#login-content').slideToggle();

            $(this).toggleClass('active');



            if ($(this).hasClass('active')) $(this).find('span').html('&#x25B2;')

            else $(this).find('span').html('&#x25BC;')

        })

    });

</script>
