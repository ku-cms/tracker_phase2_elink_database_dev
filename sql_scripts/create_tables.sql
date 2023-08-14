-- @block
-- Create users table
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    favorite_color VARCHAR(255)
);

-- @block
-- Create tests table
CREATE TABLE tests (
    test_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    description TEXT,
    unit VARCHAR(255),
    num_values INT
);

-- @block
-- Create elinks table
CREATE TABLE elinks (
    elink_id INT PRIMARY KEY AUTO_INCREMENT,
    number INT NOT NULL UNIQUE,
    version INT,
    production_date DATE,
    location VARCHAR(255) NOT NULL,
    testing_status VARCHAR(255),
    testing_grade VARCHAR(255),
    damage VARCHAR(255),
    comments TEXT,
    length DECIMAL (4,2),
    gauge INT,
    elink_type VARCHAR(255),
    wire_type VARCHAR(255),
    wire_lot VARCHAR(255),
    twists_per_inch DECIMAL (4,2),
    paddle_board_type VARCHAR(255),
    num_channels INT,
    num_cmd_channels INT,
    num_data_channels INT
);

-- @block
-- Create results table
CREATE TABLE results (
    result_id INT PRIMARY KEY AUTO_INCREMENT,
    test_id INT,
    user_id INT,
    elink_id INT,
    date DATE,
    time TIME,
    location VARCHAR(255),
    result_cmd DECIMAL(8, 2),
    result_data_0 DECIMAL(8, 2),
    result_data_1 DECIMAL(8, 2),
    result_data_2 DECIMAL(8, 2),
    result_data_3 DECIMAL(8, 2),
    grade VARCHAR(255),
    comments TEXT,
    FOREIGN KEY (test_id) REFERENCES tests(test_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (elink_id) REFERENCES elinks(elink_id)    
);

-- @block
-- Create events table
CREATE TABLE events (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    elink_id INT,
    date DATE,
    time TIME,
    location VARCHAR(255),
    event_type VARCHAR(255),
    description TEXT,
    comments TEXT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (elink_id) REFERENCES elinks(elink_id)    
);