<div class="sidebar">
    <ul class="nav nav-tabs nav-stacked">
        <?php foreach ($informations as $information) { ?>
            <li>
                <?php if(empty($information['href'])):?>
                <a style="pointer-events: none;font-family: bold" href="<?php echo $information['href']; ?>"><strong><?php echo $information['title']; ?></strong></a>
                <?php else: ?>
                <a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
                <?php endif ?>
            </li>
        <?php } ?>
        <li>
            <a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
        </li>

        <li>
            <a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a>
        </li>
    </ul>
</div>