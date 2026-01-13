<?php

require_once 'Tag.php';
require_once 'Image.php';

echo (new Image())->setAttr('src', 'img.png')->setAttr('style', 'width: 150px');
