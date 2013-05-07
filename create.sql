SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Professor`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Professor` (
  `idProfessor` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`idProfessor`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Class`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Class` (
  `idClass` INT NOT NULL ,
  `letterCode` VARCHAR(45) NULL ,
  `number` VARCHAR(45) NULL ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`idClass`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Crib`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Crib` (
  `idCrib` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  `filePath` VARCHAR(256) NOT NULL ,
  `Professor_idProfessor` INT NULL ,
  `Class_idClass` INT NULL ,
  PRIMARY KEY (`idCrib`) ,
  INDEX `fk_Crib_Professor1` (`Professor_idProfessor` ASC) ,
  INDEX `fk_Crib_Class1` (`Class_idClass` ASC) ,
  CONSTRAINT `fk_Crib_Professor1`
    FOREIGN KEY (`Professor_idProfessor` )
    REFERENCES `mydb`.`Professor` (`idProfessor` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Crib_Class1`
    FOREIGN KEY (`Class_idClass` )
    REFERENCES `mydb`.`Class` (`idClass` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TagList`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`TagList` (
  `idTagList` INT NOT NULL ,
  `tagName` VARCHAR(45) NULL ,
  PRIMARY KEY (`idTagList`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Crib_has_Tag`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Crib_has_Tag` (
  `Crib_idCrib` INT NOT NULL ,
  `TagList_idTagList` INT NOT NULL ,
  PRIMARY KEY (`Crib_idCrib`, `TagList_idTagList`) ,
  INDEX `fk_Crib_has_TagList_TagList1` (`TagList_idTagList` ASC) ,
  INDEX `fk_Crib_has_TagList_Crib` (`Crib_idCrib` ASC) ,
  CONSTRAINT `fk_Crib_has_TagList_Crib`
    FOREIGN KEY (`Crib_idCrib` )
    REFERENCES `mydb`.`Crib` (`idCrib` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Crib_has_TagList_TagList1`
    FOREIGN KEY (`TagList_idTagList` )
    REFERENCES `mydb`.`TagList` (`idTagList` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Professor_has_Class`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Professor_has_Class` (
  `Professor_idProfessor` INT NOT NULL ,
  `Class_idClass` INT NOT NULL ,
  PRIMARY KEY (`Professor_idProfessor`, `Class_idClass`) ,
  INDEX `fk_Professor_has_Class_Class1` (`Class_idClass` ASC) ,
  INDEX `fk_Professor_has_Class_Professor1` (`Professor_idProfessor` ASC) ,
  CONSTRAINT `fk_Professor_has_Class_Professor1`
    FOREIGN KEY (`Professor_idProfessor` )
    REFERENCES `mydb`.`Professor` (`idProfessor` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Professor_has_Class_Class1`
    FOREIGN KEY (`Class_idClass` )
    REFERENCES `mydb`.`Class` (`idClass` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
