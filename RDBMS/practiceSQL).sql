

CREATE TABLE IF NOT EXISTS users(
	 user_id NVARCHAR(20) PRIMARY KEY,
    user_pwd NVARCHAR(20),
    user_name NVARCHAR(10),
    user_addr NVARCHAR(30),
    user_phone INT(10),
    user_email NVARCHAR(20)
);

CREATE TABLE IF NOT EXISTS board_category(
	 boca_num INT(5) PRIMARY KEY,
    boca_name NVARCHAR(20)
);

CREATE TABLE IF NOT EXISTS board(
	 board_num INT(20) PRIMARY KEY AUTO_INCREMENT,
    boca_num INT(20),
    user_id NVARCHAR(20),
    board_title NVARCHAR(100),
    board_desc NVARCHAR(200)
);

CREATE TABLE IF NOT EXISTS category(
	 cate_num INT(5) PRIMARY KEY,
    cate_name NVARCHAR(20)
);

CREATE TABLE IF NOT EXISTS product(
	 prdt_num INT(20) PRIMARY KEY AUTO_INCREMENT,
    cate_num INT(5),
    user_id NVARCHAR(20),
    prdt_stock INT(50),
    prdt_name NVARCHAR(20),
    prdt_desc NVARCHAR(200),
    prdt_date DATE
);

CREATE TABLE IF NOT EXISTS buy(
	 buy_id NVARCHAR(30) PRIMARY KEY,
    user_id NVARCHAR(20),
    buy_addr NVARCHAR(20),
    buy_pay NVARCHAR(20)
);

CREATE TABLE IF NOT EXISTS review(
	 review_num INT(10) PRIMARY KEY AUTO_INCREMENT,
    buy_id NVARCHAR(20),
    user_id NVARCHAR(20),
    review_desc NVARCHAR(200),
    review_rate INT(5),
    review_date DATE
) ;

CREATE TABLE IF NOT EXISTS cart(
	 cart_num INT(10) PRIMARY KEY AUTO_INCREMENT,
    user_id NVARCHAR(20),
    prdt_num INT(20),
    cate_num INT(5),
    cart_qt INT(10),
    cart_price INT(10)
);

ALTER TABLE board
ADD CONSTRAINT boca_fk
FOREIGN KEY (boca_num) 
REFERENCES board_category(boca_num);

ALTER TABLE board
ADD CONSTRAINT user_fk
FOREIGN KEY (user_id)
REFERENCES users(user_id);

ALTER TABLE product
ADD CONSTRAINT prdt_user_fk
FOREIGN KEY (user_id)
REFERENCES users(user_id);

ALTER TABLE product
ADD CONSTRAINT prdt_cate_fk
FOREIGN KEY (cate_num)
REFERENCES category(cate_num);

ALTER TABLE buy
ADD CONSTRAINT buy_user_fk
FOREIGN KEY (user_id)
REFERENCES users(user_id);

ALTER TABLE cart
ADD CONSTRAINT cart_user_fk
FOREIGN KEY (user_id)
REFERENCES users(user_id);

ALTER TABLE cart
ADD CONSTRAINT cart_prdt_fk
FOREIGN KEY (prdt_num)
REFERENCES product(prdt_num);

ALTER TABLE cart
ADD CONSTRAINT cart_cate_fk
FOREIGN KEY (cate_num)
REFERENCES category(cate_num);

ALTER TABLE review
ADD CONSTRAINT review_user_fk
FOREIGN KEY (user_id)
REFERENCES users(user_id);

ALTER TABLE review
ADD CONSTRAINT review_buy_fk
FOREIGN KEY (buy_id)
REFERENCES buy(buy_id);