DROP DATABASE IF EXISTS carrot_db;

CREATE DATABASE carrot_db DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

use carrot_db;

#사용자 정보 테이블

CREATE TABLE user (
    `uid` INT(8) AUTO_INCREMENT PRIMARY KEY,
    `id` VARCHAR(32) UNIQUE KEY NOT NULL,
    `pw` VARCHAR(50) NOT NULL,
    `name` VARCHAR(32) NOT NULL, 
    `birthdate` DATE,
    `email` VARCHAR(50),
    `phone` VARCHAR(32),
    `location` VARCHAR(50)
) ENGINE=InnoDB;

INSERT INTO user(id, pw, name)
VALUES ('admin', 'admin', '관리자');

#게시판 이름 테이블
CREATE TABLE board (
    `bid` INT(8) AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(32) NOT NULL
) ENGINE=InnoDB;

INSERT INTO board(name)
VALUES ('공지사항'), ('구매'), ('판매'), ('자유'), ('신고'), ('질문');

#게시글 테이블
CREATE TABLE content (
    `cid` INT(8) AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR(50) NOT NULL,
    `content` VARCHAR(1000) NOT NULL,
    `writedate` DATE,
    
    `uid` INT(8) NOT NULL,
    `bid` INT(8) NOT NULL,
    FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
    FOREIGN KEY (`bid`) REFERENCES `board` (`bid`)
) ENGINE=InnoDB;

INSERT INTO content(title, content, uid, bid)
VALUES ('첫 글', '내용', 1, 1);

#이미지 테이블
CREATE TABLE img (
    `cid` INT(8) NOT NULL,
    `src` VARCHAR(50),
    FOREIGN KEY (`cid`) REFERENCES content (cid)
) ENGINE=InnoDB;

#댓글 테이블
CREATE TABLE reply (
    `rid` INT(8) AUTO_INCREMENT PRIMARY KEY,
    `content` VARCHAR(200) NOT NULL,
    `writedate` DATE,
    
    `ref` INT(8),
    `step` INT(8),
    `depth` INT(8),
    
    `uid` INT(8) NOT NULL,
    `cid` INT(8) NOT NULL,
    
    FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
    FOREIGN KEY (`cid`) REFERENCES `content` (`cid`)
) ENGINE=InnoDB;