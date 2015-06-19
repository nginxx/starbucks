
<ul style="background-color: #eee;padding: 2%">
  <?php foreach ($categories as $category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <li style="list-style-type: none"><strong><a style="text-decoration:underline; font-family: bold;font-size: 17px;color: #000000" href="<?php echo $category['href']; ?>" class=" active"><?php echo $category['name'];?></a></strong></li>
  <?php if ($category['children']) { ?>
    <ul>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <li style="list-style-type: none;color: #000000;font-size: 15px"><a href="<?php echo $child['href']; ?>" class=" active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
  <?php } else { ?>
  <li  style="list-style-type: none"><a style="color: #000000;font-size: 15px" href="<?php echo $child['href']; ?>" class="">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
  <?php } ?>

  <?php } ?> </ul>
  <?php } ?>
  <?php } else { ?>
  <?php } ?>
  <?php } ?>
</ul>
