CREATE TABLE `member` (
  `memId` varchar(45) NOT NULL,
  `memPw` varchar(45) NOT NULL,
  `memName` varchar(20) NOT NULL,
  `memTel` varchar(20) NOT NULL,
  `memAddress` varchar(100) NOT NULL,
  `memPosition` int NOT NULL,
  `memBirth` varchar(20) NOT NULL,
  `memEmail` varchar(45) NOT NULL,
  `memRegdate` datetime NOT NULL,
  PRIMARY KEY (`memId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
