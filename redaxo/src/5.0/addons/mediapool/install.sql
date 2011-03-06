CREATE TABLE `rex_media` ( `media_id` int(11) NOT NULL  auto_increment, `re_media_id` int(11) NOT NULL  , `category_id` int(11) NOT NULL  , `attributes` text NULL  , `filetype` varchar(255) NULL  , `filename` varchar(255) NULL  , `originalname` varchar(255) NULL  , `filesize` varchar(255) NULL  , `width` int(11) NULL  , `height` int(11) NULL  , `title` varchar(255) NULL  , `createdate` int(11) NOT NULL  , `updatedate` int(11) NOT NULL  , `createuser` varchar(255) NOT NULL  , `updateuser` varchar(255) NOT NULL  , `revision` int(11) NOT NULL  , PRIMARY KEY (`media_id`)) ENGINE=MyISAM;
CREATE TABLE `rex_media_category` ( `id` int(11) NOT NULL  auto_increment, `name` varchar(255) NOT NULL  , `re_id` int(11) NOT NULL  , `path` varchar(255) NOT NULL  , `createdate` int(11) NOT NULL  , `updatedate` int(11) NOT NULL  , `createuser` varchar(255) NOT NULL  , `updateuser` varchar(255) NOT NULL  , `attributes` text NULL  , `revision` int(11) NOT NULL  , PRIMARY KEY (`id`,`name`)) ENGINE=MyISAM;
ALTER TABLE rex_media ADD INDEX `re_media_id` (`re_media_id`), ADD INDEX `category_id` (`category_id`);
ALTER TABLE rex_media_category DROP PRIMARY KEY, ADD PRIMARY KEY (`id`), ADD INDEX `re_id` (`re_id`);
