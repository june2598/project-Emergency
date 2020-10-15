CREATE TABLE `academy`.`smanagelist` (
  `smid` INT NOT NULL AUTO_INCREMENT,
  `ssub` VARCHAR(45) NOT NULL,
  `sid` VARCHAR(45) NOT NULL,
  `sname` VARCHAR(45) NOT NULL,
  `sphone` VARCHAR(45) NOT NULL,
  `semail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`smid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;