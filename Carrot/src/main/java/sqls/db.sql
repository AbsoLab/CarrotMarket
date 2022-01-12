DROP DATABASE IF EXISTS carrot_db;

CREATE DATABASE carrot_db DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

use carrot_db;

--사용자 정보 테이블
CREATE TABLE user (
    uid INT(8) AUTO_INCREMENT PRIMARY KEY,
    id VARCHAR(32) UNIQUE NOT NULL,
    pw VARCHAR(50) NOT NULL,
    name VARCHAR(32) NOT NULL, 
    birthdate DATE,
    email VARCHAR(50),
    phone VARCHAR(32),
    location VARCHAR(50)
) ENGINE=InnoDB;

INSERT INTO user(id, pw, name)
VALUES ('admin', 'admin', '관리자');

-- 게시판 이름
CREATE TABLE board (
    id INT(8) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(32) NOT NULL
) ENGINE=InnoDB;

INSERT INTO board(name)
VALUES ('공지사항'), ('구매'), ('판매'), ('자유'), ('신고'), ('질문');

