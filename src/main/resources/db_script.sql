DROP TABLE IF EXISTS student;

CREATE TABLE `student` (
  `id`           BIGINT(20)   NOT NULL AUTO_INCREMENT,
  `userName`     VARCHAR(20)  NOT NULL,
  `password`     VARCHAR(20)  NOT NULL,
  `firstName`    VARCHAR(255) NOT NULL,
  `lastName`     VARCHAR(255) NOT NULL,
  `emailAddress` VARCHAR(255) NOT NULL,
  `dateOfBirth`  DATETIME     NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;