DROP DATABASE IF EXISTS `BASA`;
CREATE DATABASE `BASA`;
USE `BASA`;

CREATE TABLE IF NOT EXISTS  `Studio`(
  `idStudio` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Date of Founding` VARCHAR(45) NOT NULL,
  `Employees` VARCHAR(45) NOT NULL,
  `Partners` VARCHAR(45) NOT NULL,
  `Game` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idStudio`));
  
  CREATE TABLE IF NOT EXISTS `Post`(
  `idPost` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPost`));
  
 CREATE TABLE IF NOT EXISTS  `Employees` (
  `idEmployees` INT NOT NULL,
  `Full name` VARCHAR(45) NOT NULL,
  `Post` VARCHAR(45) NOT NULL,
  `Post_idPost` INT NOT NULL,
  `Studio_idStudio` INT NOT NULL,
  PRIMARY KEY (`idEmployees`),
  INDEX `fk_Employees_Post1_idx` (`Post_idPost` ASC) VISIBLE,
  INDEX `fk_Employees_Studio1_idx` (`Studio_idStudio` ASC) VISIBLE,
  CONSTRAINT `fk_Employees_Post1`
    FOREIGN KEY (`Post_idPost`)
    REFERENCES  `Post` (`idPost`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employees_Studio1`
    FOREIGN KEY (`Studio_idStudio`)
    REFERENCES  `Studio` (`idStudio`)
    ON DELETE NO action);


CREATE TABLE IF NOT EXISTS  `Budget` (
  `idBudget` VARCHAR(45) NOT NULL,
  `Profit` VARCHAR(45) NOT NULL,
  `Development spending` VARCHAR(45) NOT NULL,
  `Merch spending` VARCHAR(90) NOT NULL,
  `Marketing spending` VARCHAR(90) NOT NULL,
  PRIMARY KEY (`idBudget`));



CREATE TABLE IF NOT EXISTS  `Publishers` (
  `idPublishers` INT NOT NULL,
  `Publisher` VARCHAR(45) NOT NULL,
  `Expenses` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPublishers`));




CREATE TABLE IF NOT EXISTS  `Awards` (
  `idAwards` INT NOT NULL,
  `Общее кол-во наград` VARCHAR(45) NOT NULL,
  `E3` VARCHAR(45) NOT NULL,
  `TGS` VARCHAR(45) NOT NULL,
  `TGA` VARCHAR(45) NOT NULL,
  `Game` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idAwards`));




CREATE TABLE IF NOT EXISTS  `Game` (
  `idGame` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Profit` VARCHAR(45) NOT NULL,
  `Awards` VARCHAR(45) NOT NULL,
  `Sales` VARCHAR(45) NOT NULL,
  `Genre` VARCHAR(45) NOT NULL,
  `Publishers` VARCHAR(45) NOT NULL,
  `Users` VARCHAR(45) NOT NULL,
  `Studio_idStudio` INT NOT NULL,
  `Publishers_idPublishers` INT NOT NULL,
  `Budget_idBudget` VARCHAR(45) NOT NULL,
  `Awards_idAwards` INT NOT NULL,
  PRIMARY KEY (`idGame`, `Awards_idAwards`),
  INDEX `fk_Game_Studio1_idx` (`Studio_idStudio` ASC) VISIBLE,
  INDEX `fk_Game_Publishers1_idx` (`Publishers_idPublishers` ASC) VISIBLE,
  INDEX `fk_Game_Budget1_idx` (`Budget_idBudget` ASC) VISIBLE,
  INDEX `fk_Game_Awards1_idx` (`Awards_idAwards` ASC) VISIBLE,
  CONSTRAINT `fk_Game_Studio1`
    FOREIGN KEY (`Studio_idStudio`)
    REFERENCES  `Studio` (`idStudio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Game_Publishers1`
    FOREIGN KEY (`Publishers_idPublishers`)
    REFERENCES  `Publishers` (`idPublishers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Game_Budget1`
    FOREIGN KEY (`Budget_idBudget`)
    REFERENCES  `Budget` (`idBudget`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Game_Awards1`
    FOREIGN KEY (`Awards_idAwards`)
    REFERENCES  `Awards` (`idAwards`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



CREATE TABLE IF NOT EXISTS  `Merchandise` (
  `idMerchandise` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Sales` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idMerchandise`));



CREATE TABLE IF NOT EXISTS  `partnership` (
  `idCooperation` INT NOT NULL,
  `partnership Name` VARCHAR(45) NOT NULL,
  `Projects` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCooperation`));




CREATE TABLE IF NOT EXISTS  `Users` (
  `idUsers` INT NOT NULL,
  `Кол-во` VARCHAR(45) NOT NULL,
  `Nickname` VARCHAR(45) NOT NULL,
  `Data` VARCHAR(45) NOT NULL,
  `Game_idGame` INT NOT NULL,
  PRIMARY KEY (`idUsers`),
  INDEX `fk_Users_Game1_idx` (`Game_idGame` ASC) VISIBLE,
  CONSTRAINT `fk_Users_Game1`
    FOREIGN KEY (`Game_idGame`)
    REFERENCES  `Game` (`idGame`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


CREATE TABLE IF NOT EXISTS  `Development` (
  `idDevelopment` INT NOT NULL,
  `Price` VARCHAR(45) NOT NULL,
  `Time` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idDevelopment`));




CREATE TABLE IF NOT EXISTS  `Marketing` (
  `idMarketing` INT NOT NULL,
  `Number of ads` VARCHAR(45) NOT NULL,
  `Expenses` VARCHAR(45) NOT NULL,
 PRIMARY KEY (`idMarketing`));



CREATE TABLE IF NOT EXISTS  `Genre` (
  `idGenre` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Game_idGame` INT NOT NULL,
  PRIMARY KEY (`idGenre`),
  INDEX `fk_Genre_Game1_idx` (`Game_idGame` ASC) VISIBLE,
  CONSTRAINT `fk_Genre_Game1`
    FOREIGN KEY (`Game_idGame`)
    REFERENCES  `Game` (`idGame`)
    ON DELETE NO action
    ON UPDATE NO ACTION);



CREATE TABLE IF NOT EXISTS  `Employees_has_Employees` (
  `Employees_idEmployees` INT NOT NULL,
  `Employees_idEmployees1` INT NOT NULL,
  PRIMARY KEY (`Employees_idEmployees`, `Employees_idEmployees1`),
  INDEX `fk_Employees_has_Employees_Сотру_idx` (`Employees_idEmployees1` ASC) VISIBLE,
  INDEX `fk_Employees_has_Employees_Сотру_idx1` (`Employees_idEmployees` ASC) VISIBLE,
  CONSTRAINT `fk_Employees_has_Employees_Сотруд1`
    FOREIGN KEY (`Employees_idEmployees`)
    REFERENCES  `Employees` (`idEmployees`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employees_has_Employees_Сотруд2`
    FOREIGN KEY (`Employees_idEmployees1`)
    REFERENCES  `Employees` (`idEmployees`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



CREATE TABLE IF NOT EXISTS  `Studio_has_partnership` (
  `Studio_idStudio` INT NOT NULL,
  `partnership_idCooperation` INT NOT NULL,
  PRIMARY KEY (`Studio_idStudio`, `partnership_idCooperation`),
  INDEX `fk_Studio_has_partnership_Партнерс_idx` (`partnership_idCooperation` ASC) VISIBLE,
  INDEX `fk_Studio_has_partnership_Studio1_idx` (`Studio_idStudio` ASC) VISIBLE,
  CONSTRAINT `fk_Studio_has_partnership_Studio1`
    FOREIGN KEY (`Studio_idStudio`)
    REFERENCES  `Studio` (`idStudio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Studio_has_partnership_Партнерст1`
    FOREIGN KEY (`partnership_idCooperation`)
    REFERENCES  `partnership` (`idCooperation`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

  