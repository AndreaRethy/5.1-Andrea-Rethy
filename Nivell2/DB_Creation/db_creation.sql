CREATE SCHEMA IF NOT EXISTS `youtube` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `youtube`;


CREATE TABLE IF NOT EXISTS `youtube`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `birthday` DATE NOT NULL,
  `sex` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `postal_code` VARCHAR(45) NULL,
  `channel_id` INT,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `youtube`.`videos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `description` VARCHAR(1000) NOT NULL,
  `file_size` INT NOT NULL,
  `filename` VARCHAR(45) NOT NULL,
  `duration` INT NOT NULL,
  `thumbnail` VARCHAR(45) NOT NULL,
  `watch_count` INT NOT NULL,
  `likes_count` INT NOT NULL,
  `dislikes_count` INT NOT NULL,
  `visibility` ENUM('public', 'hidden', 'private') NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `youtube`.`tags` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `youtube`.`video_tags` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `video_id` INT NOT NULL,
  `tag_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `youtube`.`user_videos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `publish_time` DATETIME NOT NULL,
  `user_id` INT NOT NULL,
  `video_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `youtube`.`channels` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(1000) NOT NULL,
  `creation date` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `youtube`.`user_subscriptions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `channel_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `youtube`.`video_likes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `like_selection` ENUM('like', 'dislike') NOT NULL,
  `timestamp` DATETIME NOT NULL,
  `user_id` INT NOT NULL,
  `video_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
CREATE UNIQUE INDEX limit_likes ON video_likes(user_id, video_id);


CREATE TABLE IF NOT EXISTS `youtube`.`playlists` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `creation` DATETIME NOT NULL,
  `visibility` ENUM('public', 'private') NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `youtube`.`playlist_videos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `playlist_id` INT NOT NULL,
  `video_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `youtube`.`comments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `text` VARCHAR(250) NOT NULL,
  `timestamp` DATETIME NOT NULL,
  `user_id` INT NOT NULL,
  `video_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `youtube`.`comment_likes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `like_selection` ENUM('like', 'dislike') NOT NULL,
  `timestamp` DATETIME NOT NULL,
  `user_id` INT NOT NULL,
  `comment_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
CREATE UNIQUE INDEX limit_likes ON comment_likes(user_id, comment_id);

ALTER TABLE users ADD CONSTRAINT FOREIGN KEY(channel_id) REFERENCES channels(id);
ALTER TABLE videos ADD CONSTRAINT FOREIGN KEY(user_id) REFERENCES users(id);
ALTER TABLE video_tags ADD CONSTRAINT FOREIGN KEY(video_id) REFERENCES videos(id);
ALTER TABLE video_tags ADD CONSTRAINT FOREIGN KEY(tag_id) REFERENCES tags(id);
ALTER TABLE user_videos ADD CONSTRAINT FOREIGN KEY(user_id) REFERENCES users(id);
ALTER TABLE user_videos ADD CONSTRAINT FOREIGN KEY(video_id) REFERENCES videos(id);
ALTER TABLE user_subscriptions ADD CONSTRAINT FOREIGN KEY(channel_id) REFERENCES channels(id);
ALTER TABLE user_subscriptions ADD CONSTRAINT FOREIGN KEY(user_id) REFERENCES users(id);
ALTER TABLE video_likes ADD CONSTRAINT FOREIGN KEY(user_id) REFERENCES users(id);
ALTER TABLE video_likes ADD CONSTRAINT FOREIGN KEY(video_id) REFERENCES videos(id);
ALTER TABLE playlist_videos ADD CONSTRAINT FOREIGN KEY(playlist_id) REFERENCES playlists(id);
ALTER TABLE playlist_videos ADD CONSTRAINT FOREIGN KEY(video_id) REFERENCES videos(id);
ALTER TABLE playlist_videos ADD CONSTRAINT FOREIGN KEY(user_id) REFERENCES users(id);
ALTER TABLE comments ADD CONSTRAINT FOREIGN KEY(user_id) REFERENCES users(id);
ALTER TABLE comments ADD CONSTRAINT FOREIGN KEY(video_id) REFERENCES videos(id);
ALTER TABLE comment_likes ADD CONSTRAINT FOREIGN KEY(user_id) REFERENCES users(id);
ALTER TABLE comment_likes ADD CONSTRAINT FOREIGN KEY(comment_id) REFERENCES comments(id);
