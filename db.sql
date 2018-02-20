CREATE TABLE IF NOT EXISTS `prj-test__users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email_and_user` varchar(50) NOT NULL,
  `psw` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `usertype_id` int(11) NOT NULL,
  PRIMARY KEY (`id_user`),
  `insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `email_and_user` (`email_and_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;


INSERT INTO `prj-test__users` (`id_user`, `email_and_user`, `psw`, `name`, `surname`, `usertype_id`) VALUES
(1, 'admin-prj-test', 'f4918da7bc71ea198911fb2d6f8fbcfd', 'Me', '', 1);


CREATE TABLE IF NOT EXISTS `prj-test__logs` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `controller` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `post` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `insert` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log`),
  KEY `id_log` (`id_log`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
