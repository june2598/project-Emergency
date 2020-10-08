CREATE TABLE `academy`.`adminpage` (
  `fileup` VARCHAR(45) NULL,
  `comname` VARCHAR(45) NOT NULL,
  `adminname` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `cellph` INT NULL,
  `cellpx` INT NULL,
  `comnumber` INT NULL,
  `adress` VARCHAR(45) NULL,
  PRIMARY KEY (`comname`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
