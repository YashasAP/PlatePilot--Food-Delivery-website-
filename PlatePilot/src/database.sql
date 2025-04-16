create database pilotfoods;
use  pilotfoods;

CREATE TABLE Menu (
    menuId INT PRIMARY KEY,
    itemName VARCHAR(255),
    price DOUBLE,
    description TEXT,
    imagePath VARCHAR(255),
    isAvailable VARCHAR(255),
    restaurantId INT,
    ratings DOUBLE
);



CREATE TABLE orders (
    orderId INT AUTO_INCREMENT PRIMARY KEY,
    restaurantId INT,
    userId INT,
    totalAmount DOUBLE,
    modeOfPayment VARCHAR(255),
    orderStatus VARCHAR(255),
    orderDate TIMESTAMP
);

CREATE TABLE Restaurant (orders
    restaurantId INT PRIMARY KEY,
    name VARCHAR(255),
    imagePath VARCHA
    R(255),
    ratings DOUBLE,
    eta TIMESTAMP,
    cuisineType VARCHAR(255),
    address VARCHAR(255),
    isActive VARCHAR(255),
    restaurantOwnerId INT
);



CREATE TABLE User (
    userId INT PRIMARY KEY,
    userName VARCHAR(255),
    password VARCHAR(255),
    email VARCHAR(255),
    phoneNumber VARCHAR(255),
    address VARCHAR(255),
    role VARCHAR(255),
    createDate TIMESTAMP,
    lastLoginDate TIMESTAMP
);





