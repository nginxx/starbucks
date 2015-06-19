<div class="row">

        <?php foreach ($banners as $banner) { ?>
        <div class="item text-center col-sm-4">
            <?php if ($banner['link']) { ?>
            <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
                <span style="font-size: 20px"><?php echo $banner['title']; ?><span
            </a>
            <?php } else { ?>
            <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
            <?php } ?>

        </div>
        <?php } ?>

</div>