-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema world
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema world
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE world;

-- -----------------------------------------------------
-- Table `world`.`Advertisement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Advertisement` (
  `idAdvertisement` INT NOT NULL AUTO_INCREMENT,
  `name` TEXT NULL,
  `summary` TEXT NULL,
  `last_scraped` DATE NOT NULL,
  `space` TEXT NULL,
  `description` TEXT NULL,
  `notes` TEXT NULL,
  `market` VARCHAR(45) NULL,
  `guests_included` INT NOT NULL,
  `instant_bookable` TINYINT NOT NULL,
  PRIMARY KEY (`idAdvertisement`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `world`.`Host`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Host` (
  `idHost` INT NOT NULL AUTO_INCREMENT,
  `interaction` TEXT NULL,
  `host_name` VARCHAR(45) NULL,
  `host_since` DATE NULL,
  `host_about` TEXT NULL,
  `host_response_time` VARCHAR(45) NULL,
  `host_response_rate` INT NULL,
  `host_is_superhost` TINYINT NULL,
  `host_listings_count` INT NULL,
  `host_total_listings_count` INT NULL,
  `host_has_profile_pic` TINYINT NULL,
  `host_identity_verified` TINYINT NULL,
  `calculated_host_listings_count` INT NOT NULL,
  `Advertisement_idAdvertisement` INT NOT NULL,
  PRIMARY KEY (`idHost`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`URLs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`URLs` (
  `listing_url` VARCHAR(90) NOT NULL,
  `thumbnail_url` TEXT NULL,
  `medium_url` TEXT NULL,
  `picture_url` TEXT NULL,
  `xl_picture_url` TEXT NULL,
  `host_url` TEXT NOT NULL,
  `host_thumbnail_url` TEXT NULL,
  `host_picture_url` TEXT NULL,
  `Advertisement_idAdvertisement` INT NOT NULL,
  `Host_idHost` INT NOT NULL,
  PRIMARY KEY (`listing_url`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `world`.`House`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`House` (
  `idHouse` INT NOT NULL,
  `transit` TEXT NULL,
  `access` TEXT NULL,
  `house_rules` TEXT NULL,
  `is_location_exact` TINYINT NOT NULL,
  `property_type` VARCHAR(45) NOT NULL,
  `room_type` VARCHAR(45) NOT NULL,
  `accommodates` INT NOT NULL,
  `bathrooms` INT NULL,
  `bedrooms` INT NULL,
  `beds` INT NULL,
  `bed_type` VARCHAR(45) NOT NULL,
  `square_feet` INT NULL,
  `Host_idHost` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idHouse`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `world`.`Address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Address` (
  `idAddress` INT NOT NULL AUTO_INCREMENT,
  `host_location` VARCHAR(90) NULL,
  `host_neighbourhood` VARCHAR(45) NULL,
  `street` TEXT NOT NULL,
  `neighbourhood` VARCHAR(45) NULL,
  `neighbourhood_cleansed` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `zipcode` INT NULL,
  `smart_location` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `latitude` POINT NOT NULL,
  `longitude` POINT NOT NULL,
  `jurisdiction_names` VARCHAR(90) NULL,
  `neighborhood_overview` VARCHAR(45) NULL,
  `House_idHouse` INT NOT NULL,
  `Host_idHost` INT NOT NULL,
  PRIMARY KEY (`idAddress`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `world`.`Prices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Prices` (
  `idPrices` INT NOT NULL,
  `price` FLOAT NOT NULL,
  `weekly_price` FLOAT NULL,
  `monthly_price` FLOAT NULL,
  `security_deposit` FLOAT NULL,
  `cleaning_fee` FLOAT NULL,
  `extra_people` FLOAT NOT NULL,
  `House_idHouse` INT NOT NULL,
  `Advertisement_idAdvertisement` INT NOT NULL,
  `Address_idAddress` INT NOT NULL,
  PRIMARY KEY (`idPrices`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `world`.`Calender`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Calender` (
  `idCalender` INT NOT NULL AUTO_INCREMENT,
  `minimum_nights` INT NOT NULL,
  `maximum_nights` INT NOT NULL,
  `calendar_updated` VARCHAR(45) NOT NULL,
  `availability_30` INT NOT NULL,
  `availability_60` INT NOT NULL,
  `availability_90` INT NOT NULL,
  `availability_365` INT NOT NULL,
  `calendar_last_scraped` DATE NOT NULL,
  `Advertisement_idAdvertisement` INT NOT NULL,
  PRIMARY KEY (`idCalender`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `world`.`Reviews`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Reviews` (
  `idReviews` INT NOT NULL AUTO_INCREMENT,
  `number_of_reviews` INT NOT NULL,
  `first_review` DATE NULL,
  `last_review` DATE NULL,
  `reviews_per_month` FLOAT NULL,
  `Advertisement_idAdvertisement` INT NOT NULL,
  PRIMARY KEY (`idReviews`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `world`.`Scores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Scores` (
  `idScores` INT NOT NULL AUTO_INCREMENT,
  `review_scores_rating` INT NULL,
  `review_scores_accuracy` INT NULL,
  `review_scores_cleanliness` INT NULL,
  `review_scores_checkin` INT NULL,
  `review_scores_communication` INT NULL,
  `review_scores_location` INT NULL,
  `review_scores_value` INT NULL,
  `Reviews_idReviews` INT NOT NULL,
  `Address_idAddress` INT NOT NULL,
  PRIMARY KEY (`idScores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `world`.`Conditions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Conditions` (
  `idConditions` INT NOT NULL AUTO_INCREMENT,
  `requires_license` VARCHAR(45) NULL,
  `license` VARCHAR(45) NULL,
  `cancellation_policy` VARCHAR(45) NOT NULL,
  `require_guest_profile_picture` TINYINT NOT NULL,
  `require_guest_phone_verification` TINYINT NOT NULL,
  `Advertisement_idAdvertisement` INT NOT NULL,
  PRIMARY KEY (`idConditions`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
