-- Creating the Party Table
CREATE TABLE party(
    party_id INT NOT NULL,
    party_size INT,
    party_name VARCHAR(255),
    party_desc VARCHAR(255),
    PRIMARY KEY (party_id)
);

-- Creating the Alignment Table
CREATE TABLE alignment(
    alignment_type INT NOT NULL,
    alignment_name VARCHAR(255),
    alignment_desc VARCHAR(255),
    PRIMARY KEY (alignment_type)
);

-- Creating the Exp_Levels Table
-- This table is the levels and experience needed to be a certain level
CREATE TABLE exp_level(
    exp_level_type INT NOT NULL,
    exp_level INT,
    experience INT,
    PRIMARY KEY (exp_level_type)
);

-- Creating the Class Table
CREATE TABLE class(
    class_type INT NOT NULL,
    class_name VARCHAR(255),
    class_desc VARCHAR(255),
    PRIMARY KEY (class_type)
);

-- Creating the Race Table
CREATE TABLE race(
    race_type INT NOT NULL,
    race_name VARCHAR(255),
    race_desc VARCHAR(255),
    PRIMARY KEY (race_type)
);

-- Inventory Table
CREATE TABLE inventory(
    inventory_id INT NOT NULL,
    size INT,
    item_weight INT,
    PRIMARY KEY (inventory_id)
);

-- Creating the Background Table
CREATE TABLE background(
    background_type INT NOT NULL,
    background_name VARCHAR(255),
    background_desc VARCHAR(255),
    proficiency_desc VARCHAR(255), 
    PRIMARY KEY (background_type)
);

-- Creating the Bonuses Table

-- Creating the Stats Table

-- Creating the Skills Table

-- Creating the Character Info Table
CREATE TABLE character_info(
    -- character_id is Unique and the Primary key for this table
    character_id INT NOT NULL,
    -- Foreign Keys for this table
    race_type INT,
    class_type INT,
    exp_level_type INT,
    inventory_id INT,
    party_id INT,
    alignment_type INT,
    background_type INT,
    -- Values only used by this table
    character_name VARCHAR(255),
    age INT,
    experience INT,
    height DECIMAL,
    weight_capacity DECIMAL,

    PRIMARY KEY (character_id),
    FOREIGN KEY (race_type) REFERENCES race(race_type),
    FOREIGN KEY (class_type) REFERENCES class(class_type),
    FOREIGN KEY (exp_level_type) REFERENCES exp_level(exp_level_type),
    FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id),
    FOREIGN KEY (party_id) REFERENCES party(party_id),
    FOREIGN KEY (alignment_type) REFERENCES alignment(alignment_type),
    FOREIGN KEY (background_type) REFERENCES background(background_type)
);

-- Link to Naming Conventions for MySQL (https://medium.com/@centizennationwide/mysql-naming-conventions-e3a6f6219efe)