CREATE TABLE `academy`.`board_reply` (
  `reno` int NOT NULL AUTO_INCREMENT,
  `rewriter` varchar(45) NOT NULL,
  `rememo` varchar(45) NOT NULL,
  `redate` datetime NOT NULL,
  `bno` int NOT NULL,
  PRIMARY KEY (`reno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8