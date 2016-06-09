-- MySQL Script generated by MySQL Workbench
-- Tue May 12 00:30:20 2015
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema gaiatools_dev
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema gaiatools_dev
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gaiatools_dev` DEFAULT CHARACTER SET utf8 ;
USE `gaiatools_dev` ;

-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Config`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Config` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Config` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `appname` VARCHAR(80) NULL DEFAULT 'GAIATOOLS',
  `component` VARCHAR(80) NULL DEFAULT 'WEB',
  `config_setting` VARCHAR(128) NULL DEFAULT NULL,
  `config_value` VARCHAR(1024) NULL DEFAULT NULL,
  `lu_timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insert_timestamp` TIMESTAMP NULL DEFAULT NULL COMMENT 'ideally we would like to use CURRENT_TIMESTAMP as the default, but older MySQL used on the gaiatools server doesn\'t permit multiple uses of the CTS value',
  `user_defined` TINYINT(1) NULL DEFAULT '1',
  `default_value` VARCHAR(1024) NULL DEFAULT NULL)
ENGINE = InnoDB
AUTO_INCREMENT = 32
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Role` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Role` (
  `role_id` INT(11) NOT NULL AUTO_INCREMENT,
  `role_name` VARCHAR(80) NOT NULL,
  `role_description` VARCHAR(255) NOT NULL,
  `role_level` INT(11) NOT NULL DEFAULT '1',
  `lu_timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lu_user` VARCHAR(25) NOT NULL,
  `insert_timestamp` TIMESTAMP NULL DEFAULT NULL COMMENT 'ideally we would like to use CURRENT_TIMESTAMP as the default, but older MySQL used on the gaiatools server doesn\'t permit multiple uses of the CTS value',
  `user_defined` TINYINT(1) NULL DEFAULT '1')
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`User` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`User` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(25) NOT NULL,
  `email` VARCHAR(254) NOT NULL,
  `registered` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dob` DATE NOT NULL,
  `salt` VARCHAR(128) NOT NULL,
  `password` VARCHAR(128) NOT NULL,
  `lu_password` TIMESTAMP NULL DEFAULT NULL,
  `banned` TINYINT(1) NULL DEFAULT '0',
  `last_login_time` VARCHAR(45) NULL,
  `login_failed_attempts` INT(11) NULL DEFAULT '0',
  `account_locked` TINYINT(1) NOT NULL DEFAULT '0',
  `timezone` VARCHAR(30) NULL,
  `Role_id` INT(11) NOT NULL)
ENGINE = InnoDB
AUTO_INCREMENT = 141
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Gaia_Account`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Gaia_Account` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Gaia_Account` (
  `gaia_id` INT(11) NOT NULL,
  `username` VARCHAR(25) NOT NULL,
  `avatar` VARCHAR(80) NULL DEFAULT NULL,
  `user_level` INT(11) NOT NULL DEFAULT '8',
  `filter_level` INT(11) NULL DEFAULT NULL,
  `avatar_url` VARCHAR(120) NOT NULL,
  `account_age` INT(11) NULL DEFAULT NULL,
  `gender` VARCHAR(6) NULL DEFAULT NULL,
  `last_updated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User_id` INT(11) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Gaia_Item`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Gaia_Item` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Gaia_Item` (
  `id` INT(11) NOT NULL,
  `sex` VARCHAR(6) NULL DEFAULT NULL,
  `type` VARCHAR(45) NULL DEFAULT NULL,
  `sub_type` VARCHAR(45) NULL DEFAULT NULL,
  `name` TEXT NOT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `thumbnail` VARCHAR(100) NOT NULL,
  `thumbfile` VARCHAR(100) NULL DEFAULT NULL,
  `price` INT(11) NULL DEFAULT NULL,
  `gpass` INT(11) NULL DEFAULT NULL,
  `store_id` VARCHAR(45) NULL DEFAULT NULL,
  `store_ignore` VARCHAR(45) NULL DEFAULT NULL,
  `last_updated` INT(11) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Gaia_Account_has_Gaia_Item`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Gaia_Account_has_Gaia_Item` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Gaia_Account_has_Gaia_Item` (
  `Gaia_Account_gaia_id` INT(11) NOT NULL,
  `Gaia_Item_id` INT(11) NOT NULL,
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Image_Map`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Image_Map` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Image_Map` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `User_id` INT(11) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Map_Url`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Map_Url` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Map_Url` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `image_url` TEXT NOT NULL,
  `Image_Map_id` INT(11) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `gaiatools_dev`.`News`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`News` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`News` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `slug` VARCHAR(160) NOT NULL,
  `locale` VARCHAR(5) NOT NULL DEFAULT 'en_US',
  `title` VARCHAR(80) NOT NULL,
  `byline` VARCHAR(255) NOT NULL,
  `shortTitle` VARCHAR(80) NULL DEFAULT NULL,
  `teaser` VARCHAR(255) NULL DEFAULT NULL,
  `body` TEXT NULL DEFAULT NULL,
  `release_timestamp` TIMESTAMP NULL DEFAULT NULL,
  `lu_timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insert_timestamp` TIMESTAMP NULL DEFAULT NULL)
ENGINE = InnoDB
AUTO_INCREMENT = 20
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Quest_Bar`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Quest_Bar` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Quest_Bar` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `total` BIGINT(8) NOT NULL,
  `amount` BIGINT(8) NOT NULL,
  `thumbnail` VARCHAR(100) NOT NULL,
  `User_id` INT(11) NOT NULL,
  `Gaia_Item_id` INT(11) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Random_Image`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Random_Image` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Random_Image` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `User_id` INT(11) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`RIG_Url`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`RIG_Url` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`RIG_Url` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `image_url` TEXT NULL DEFAULT NULL,
  `Random_Image_id` INT(11) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Category` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Category` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `description` VARCHAR(45) NULL,
  `parent_id` VARCHAR(45) NULL)
ENGINE = InnoDB
AUTO_INCREMENT = 14
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Theme`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Theme` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Theme` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `add_timestamp` DATETIME NOT NULL,
  `description` VARCHAR(180) NULL DEFAULT NULL,
  `category` INT(11) NULL DEFAULT NULL,
  `template` VARCHAR(7) NOT NULL DEFAULT 'classic',
  `basetheme` VARCHAR(7) NULL DEFAULT NULL,
  `friendstyle` VARCHAR(7) NULL DEFAULT NULL,
  `commentstyle` VARCHAR(7) NULL DEFAULT NULL,
  `code` BLOB NOT NULL,
  `published` TINYINT(1) NOT NULL DEFAULT '1',
  `is_private` TINYINT(1) NOT NULL DEFAULT '0',
  `sharecode` CHAR(10) NOT NULL,
  `shopurl` TEXT NULL DEFAULT NULL,
  `snapshot` VARCHAR(75) NULL DEFAULT NULL,
  `ip_address` VARCHAR(45) NULL DEFAULT NULL,
  `lu_ip` VARCHAR(45) NULL DEFAULT NULL,
  `lu_timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User_id` INT(11) NOT NULL)
ENGINE = InnoDB
AUTO_INCREMENT = 26
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Theme_Reivew`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Theme_Reivew` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Theme_Reivew` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` TINYINT(1) NOT NULL,
  `message` VARCHAR(180) NOT NULL,
  `Theme_User_id` INT(11) NOT NULL,
  `Theme_id` INT(11) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Tag`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Tag` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Tag` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL)
ENGINE = InnoDB
AUTO_INCREMENT = 83
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Theme_has_Tag`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Theme_has_Tag` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Theme_has_Tag` (
  `Theme_id` INT(11) NOT NULL,
  `Tag_id` INT(11) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`ci_sessions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`ci_sessions` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`ci_sessions` (
  `id` VARCHAR(40) NOT NULL,
  `ip_address` VARCHAR(45) NOT NULL,
  `timestamp` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` BLOB NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `ci_sessions_timestamp` (`timestamp` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Theme_has_Category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Theme_has_Category` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Theme_has_Category` (
  `Themes_id` INT(11) NOT NULL,
  `Theme_Categories_id` INT(11) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `gaiatools_dev`.`Alert`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`Alert` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`Alert` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `created` VARCHAR(45) NOT NULL,
  `enable_date` DATETIME NOT NULL,
  `disable_disable` DATETIME NOT NULL,
  `force_active` TINYINT(1) NOT NULL DEFAULT 0,
  `message` BLOB NOT NULL,
  `alert_level` TINYINT(1) NOT NULL DEFAULT 1)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gaiatools_dev`.`User_Ip_Login`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gaiatools_dev`.`User_Ip_Login` ;

CREATE TABLE IF NOT EXISTS `gaiatools_dev`.`User_Ip_Login` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `ip` VARCHAR(45) NOT NULL,
  `timestamp` VARCHAR(45) NOT NULL DEFAULT 'CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP',
  `User_id` INT(11) NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- ALTER TABLES`
-- -----------------------------------------------------


ALTER TABLE `gaiatools_dev`.`Config` 
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE INDEX `IXU01_CONFIG` (`appname` ASC, `component` ASC, `config_setting` ASC),
  ADD UNIQUE INDEX `ixu01_config_setting` (`config_setting` ASC);

ALTER TABLE `gaiatools_dev`.`Role` 
  ADD PRIMARY KEY (`role_id`),
  ADD INDEX `IXU01_role_name` (`role_name` ASC);


ALTER TABLE `gaiatools_dev`.`User` 
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE INDEX `Email_UNIQUE` (`email` ASC),
  ADD UNIQUE INDEX `Username_UNIQUE` (`username` ASC),
  ADD UNIQUE INDEX `Salt_UNIQUE` (`salt` ASC),
  ADD INDEX `fk_Users_Roles1_idx` (`Role_id` ASC),
  ADD CONSTRAINT `fk_Users_Roles1`
    FOREIGN KEY (`Role_id`)
    REFERENCES `gaiatools_dev`.`Role` (`role_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE `gaiatools_dev`.`Gaia_Account` 
  ADD PRIMARY KEY (`gaia_id`),
  ADD INDEX `fk_Gaia_Account_User1_idx` (`User_id` ASC),
  ADD CONSTRAINT `fk_Gaia_Account_Users`
    FOREIGN KEY (`User_id`)
    REFERENCES `gaiatools_dev`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE `gaiatools_dev`.`Gaia_Item` 
	ADD PRIMARY KEY (`id`);

ALTER TABLE `gaiatools_dev`.`Gaia_Item`
  ADD PRIMARY KEY (`Gaia_Account_gaia_id`, `Gaia_Account_has_Gaia_Item`),
  ADD INDEX `fk_Gaia_Account_has_Gaia_Item1_idx` (`Gaia_Item_id` ASC),
  ADD INDEX `fk_Gaia_Account_has_Gaia_Item_Gaia_Account1_idx` (`Gaia_Account_gaia_id` ASC),
  ADD CONSTRAINT `fk_Gaia_Account_has_Gaia_Items_Gaia_Account1`
    FOREIGN KEY (`Gaia_Account_gaia_id`)
    REFERENCES `gaiatools_dev`.`Gaia_Account` (`gaia_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Gaia_Account_has_Gaia_Item_Gaia_Item1`
    FOREIGN KEY (`Gaia_Item_id`)
    REFERENCES `gaiatools_dev`.`Gaia_Item` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE `gaiatools_dev`.`Image_Map` 
  ADD PRIMARY KEY (`id`),
  ADD INDEX `fk_Image_Map_User1_idx` (`User_id` ASC),
  ADD CONSTRAINT `fk_Image_Map_User1`
    FOREIGN KEY (`User_id`)
    REFERENCES `gaiatools_dev`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE `gaiatools_dev`.`Map_Url` 
  ADD PRIMARY KEY (`id`),
  ADD INDEX `fk_Map_Url_Image_Map1_idx` (`Image_Map_id` ASC),
  ADD CONSTRAINT `fk_Map_Url_Image_Map1`
    FOREIGN KEY (`Image_Map_id`)
    REFERENCES `gaiatools_dev`.`Image_Map` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;



ALTER TABLE `gaiatools_dev`.`News` 
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE INDEX `IXU01_NEWS_SLUG` (`slug` ASC),
  ADD INDEX `IXN01_NEWS_LUT` (`lu_timestamp` ASC);

ALTER TABLE `gaiatools_dev`.`Quest_Bar` 
  ADD PRIMARY KEY (`id`),
  ADD INDEX `fk_Quest_Bar_User1_idx` (`User_id` ASC),
  ADD INDEX `fk_Quest_Bar_Gaia_Item1_idx` (`Gaia_Item_id` ASC),
  ADD CONSTRAINT `fk_Quest_Bar_Gaia_Item1`
    FOREIGN KEY (`Gaia_Item_id`)
    REFERENCES `gaiatools_dev`.`Gaia_Item` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Quest_Bar_User`
    FOREIGN KEY (`User_id`)
    REFERENCES `gaiatools_dev`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


ALTER TABLE `gaiatools_dev`.`Random_Image` 
  ADD PRIMARY KEY (`id`),
  ADD INDEX `fk_Image_Gen_User1_idx` (`User_id` ASC),
  ADD CONSTRAINT `fk_Image_Gen_User1`
    FOREIGN KEY (`User_id`)
    REFERENCES `gaiatools_dev`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE `gaiatools_dev`.`RIG_Url`
  ADD PRIMARY KEY (`id`),
  ADD INDEX `fk_RIG_Url_Random_Image1_idx` (`Random_Image_id` ASC),
  ADD CONSTRAINT `fk_RIG_Url_Random_Image1`
    FOREIGN KEY (`Random_Image_id`)
    REFERENCES `gaiatools_dev`.`Random_Image` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE `gaiatools_dev`.`Category` 
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE INDEX `IXU01_THEME_CTGRY_TITLE` (`title` ASC);

ALTER TABLE `gaiatools_dev`.`Theme` 
  ADD PRIMARY KEY (`id`),
  ADD INDEX `fk_Theme_User_idx` (`User_id` ASC),
  ADD CONSTRAINT `fk_Theme_User`
    FOREIGN KEY (`User_id`)
    REFERENCES `gaiatools_dev`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE `gaiatools_dev`.`Theme_Reivew` 
  ADD PRIMARY KEY (`id`),
  ADD INDEX `fk_Theme_Reivew_Themes1_idx` (`Theme_id` ASC),
  ADD CONSTRAINT `fk_Theme_Reivew_Theme1`
    FOREIGN KEY (`Theme_id`)
    REFERENCES `gaiatools_dev`.`Theme` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE `gaiatools_dev`.`Tag` 
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE INDEX `Title_UNIQUE` (`title` ASC);

ALTER TABLE `gaiatools_dev`.`Theme_has_Tag` 
  ADD PRIMARY KEY (`Theme_id`, `Tag_id`),
  ADD INDEX `fk_Theme_has_Tag_Theme1_idx` (`Theme_id` ASC),
  ADD INDEX `fk_Theme_has_Tag_Tag1_idx` (`Tag_id` ASC),
  ADD CONSTRAINT `fk_Theme_has_Tag_Theme1`
    FOREIGN KEY (`Theme_id`)
    REFERENCES `gaiatools_dev`.`Theme` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Theme_has_Tag_Theme_Tag1`
    FOREIGN KEY (`Tag_id`)
    REFERENCES `gaiatools_dev`.`Tag` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

ALTER TABLE `gaiatools_dev`.`Theme_has_Category` 
  ADD PRIMARY KEY (`Themes_id`, `Category_id`),
  ADD INDEX `fk_Theme_has_Theme_Category_Category1_idx` (`Theme_Categories_id` ASC),
  ADD INDEX `fk_Theme_has_Theme_Category_Theme1_idx` (`Themes_id` ASC),
  ADD CONSTRAINT `fk_Themes_has_Theme_Categories_Themes1`
    FOREIGN KEY (`Themes_id`)
    REFERENCES `gaiatools_dev`.`Theme` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Themes_has_Theme_Categories_Theme_Categories1`
    FOREIGN KEY (`Theme_Categories_id`)
    REFERENCES `gaiatools_dev`.`Category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE `gaiatools_dev`.`Alert` 
  ADD PRIMARY KEY (`id`);

ALTER TABLE `gaiatools_dev`.`User_Ip_Login` 
  ADD PRIMARY KEY (`id`),
  ADD INDEX `fk_Ip_Logins_Users1_idx` (`User_id` ASC),
  ADD CONSTRAINT `fk_Ip_Logins_Users1`
    FOREIGN KEY (`User_id`)
    REFERENCES `gaiatools_dev`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;