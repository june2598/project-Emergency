CREATE TABLE `academy`.`board` (
  `bno` INT NOT NULL AUTO_INCREMENT,
  `btitle` VARCHAR(45) NOT NULL,
  `bcontent` TEXT NOT NULL,
  `id` VARCHAR(30) NOT NULL,
  `breadcnt` INT NOT NULL,
  `bdel` INT NOT NULL,
  `bselect` INT NOT NULL,
  PRIMARY KEY (`bno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;