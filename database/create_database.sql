CREATE DATABASE IF NOT EXISTS crud_links;

USE crud_links;

/* User table */
CREATE TABLE IF NOT EXISTS users(
    id              INT(5) NOT NULL,
    username        VARCHAR(15) NOT NULL,
    password        VARCHAR(255) NOT NULL,
    fullname        VARCHAR(100) NOT NULL
)ENGINE='InnoDB';

ALTER TABLE users ADD CONSTRAINT PRIMARY KEY(ID);

ALTER TABLE users MODIFY ID INT(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

DESC users;

/* Links Table */
CREATE TABLE IF NOT EXISTS links(
    ID              INT(5) NOT NULL,
    User_id         INT(5),
    Title           VARCHAR(150) NOT NULL,
    Url             VARCHAR(255) NOT NULL,
    Description     TEXT,
    Created_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_links_users FOREIGN KEY(User_id) REFERENCES users(ID)
)ENGINE='InnoDB';

ALTER TABLE links ADD CONSTRAINT pk_links PRIMARY KEY(ID);
ALTER TABLE users MODIFY id INT(5) AUTO_INCREMENT NOT NULL;
ALTER TABLE links MODIFY User_id INT(5);
ALTER TABLE users MODIFY id INT(5) NOT NULL AUTO_INCREMENT;

-- CREATE DATABASE IF NOT EXISTS crud_links;

-- USE crud_links;

-- CREATE TABLE IF NOT EXISTS users(
--     id              INT(5) AUTO_INCREMENT NOT NULL PRIMARY KEY(id),
--     username        VARCHAR(15) NOT NULL,
--     password        VARCHAR(255) NOT NULL,
--     fullname        VARCHAR(100) NOT NULL
-- )ENGINE='InnoDB';