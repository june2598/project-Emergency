CREATE TABLE `academy`.`board_file` (
  `fno` INT NOT NULL,
  `bno` INT NOT NULL,
  `org_filename` VARCHAR(45) NOT NULL,
  `sto_filename` VARCHAR(45) NOT NULL,
  `filesize` INT NULL,
  `creadtm` DATE NOT NULL,
  `creaid` VARCHAR(45) NOT NULL,
  `delgb` VARCHAR(45) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
