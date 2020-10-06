CREATE TABLE `member` (
  `id` varchar(45) NOT NULL,
  `pw` varchar(45) NOT NULL,
  `name` varchar(20) NOT NULL,
  `tel` int NOT NULL,
  `address` varchar(100) NOT NULL,
  `position` int NOT NULL,
  `birth` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `regdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
