-- MySQL Script generated by MySQL Workbench
-- Wed Apr 12 15:31:54 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bd_sustenta_tech
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bd_sustenta_tech
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_sustenta_tech` DEFAULT CHARACTER SET utf8 ;
USE `bd_sustenta_tech` ;

-- -----------------------------------------------------
-- Table `bd_sustenta_tech`.`tb_categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_sustenta_tech`.`tb_categorias` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_sustenta_tech`.`tb_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_sustenta_tech`.`tb_produtos` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `preco` DECIMAL(8,2) NOT NULL,
  `quantidade` INT NOT NULL,
  `descricao` VARCHAR(1000) NOT NULL,
  `foto` VARCHAR(500) NULL,
  `categoria_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_produtos_tb_categorias_idx` (`categoria_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_produtos_tb_categorias`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `bd_sustenta_tech`.`tb_categorias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_sustenta_tech`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_sustenta_tech`.`tb_usuarios` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `usuario` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(500) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
