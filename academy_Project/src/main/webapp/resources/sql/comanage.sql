CREATE TABLE `academy`.`comanage` (
  `coName` VARCHAR(20) NOT NULL,
  `coAddress` VARCHAR(45) NOT NULL,
  `coCeo` VARCHAR(20) NOT NULL,
  `coNumber` VARCHAR(20) NOT NULL,
  `coTel` VARCHAR(20) NOT NULL,
  `coEmail` VARCHAR(20) NOT NULL,
  `coLogo` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`coName`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;