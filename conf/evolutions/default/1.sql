DROP TABLE logininfo;
DROP TABLE oauth1info;
DROP TABLE oauth2info;
DROP TABLE passwordinfo;
DROP TABLE user;
DROP TABLE userlogininfo;

CREATE TABLE logininfo (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    providerID VARCHAR(50) NOT NULL,
    providerKey VARCHAR(50) NOT NULL
);

CREATE TABLE oauth1info (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    token VARCHAR(50) NOT NULL,
    secret VARCHAR(50) NOT NULL,
    loginInfoId INT(6)
);

CREATE TABLE oauth2info (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    accesstoken VARCHAR(50) NOT NULL,
    tokentype VARCHAR(50) NOT NULL,
    expiresin INT(6),
    refreshtoken VARCHAR(50) NOT NULL,
    loginInfoId INT(6)
);

CREATE TABLE passwordinfo (
    hasher VARCHAR(250) NOT NULL,
    password VARCHAR(250) NOT NULL,
    salt VARCHAR(250),
    loginInfoId INT(6)
);

CREATE TABLE user (
    userID VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    fullName VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    avatarURL VARCHAR(150) NOT NULL
);

CREATE TABLE userlogininfo (
    userID VARCHAR(50) NOT NULL,
    loginInfoId INT(6)
);
