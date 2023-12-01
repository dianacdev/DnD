-- Creating the Party Table
CREATE TABLE party(
    party_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    party_size INT NOT NULL,
    party_name VARCHAR(100) NOT NULL,
    dungeon_master VARCHAR(50) NOT NULL
    party_desc VARCHAR(255)
    PRIMARY KEY (party_id)
);

-- Creating the Alignment Table
CREATE TABLE alignment(
    alignment_type SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    alignment_name VARCHAR(50) NOT NULL,
    alignment_desc VARCHAR(550),
    PRIMARY KEY (alignment_type)
);

-- Creating the Exp_Levels Table
-- This table is the levels and experience needed to be a certain level
CREATE TABLE exp_level(
    exp_level_type SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    exp_level SMALLINT UNSIGNED NOT NULL DEFAULT 1,
    experience SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    PRIMARY KEY (exp_level_type)
);

-- Creating the Class Table
CREATE TABLE class(
    class_type SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    class_name VARCHAR(50) NOT NULL,
    class_desc VARCHAR(255),
    hit_die VARCHAR(3) NOT NULL,
    primary_ability VARCHAR(255) NOT NULL,
    class_saves VARCHAR(255),
    PRIMARY KEY (class_type)
);

-- Creating the Race Table
CREATE TABLE race(
    race_type SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    race_name VARCHAR(50) NOT NULL,
    race_desc VARCHAR(255),
    PRIMARY KEY (race_type)
);

-- Creating the Background Table
CREATE TABLE background(
    background_type SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    background_name VARCHAR(50) NOT NULL,
    background_desc VARCHAR(255),
    proficiency_desc VARCHAR(255), 
    PRIMARY KEY (background_type)
);


-- Creating the skill Table
CREATE TABLE skills(
    skill_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    skill_name VARCHAR(50) NOT NULL,
    skill_desc VARCHAR(255),
    PRIMARY KEY (skill_id)
);

-- Creating the items Table
-- This table holds all the items that can be obtained in DnD
CREATE TABLE items(
    item_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    item_name VARCHAR(50) NOT NULL,
    item_desc VARCHAR(255),
    item_weight DECIMAL NOT NULL,
    item_cost DECIMAL NOT NULL,
    PRIMARY KEY (item_id)
);

-- Creating the Character Info Table
CREATE TABLE character_info(
    -- character_id is Unique and the Primary key for this table
    character_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    -- Foreign Keys for this table
    race_type INT NOT NULL,
    class_type INT NOT NULL,
    exp_level_type INT NOT NULL,
    party_id INT,
    alignment_type INT NOT NULL,
    background_type INT NOT NULL,
    -- Values only used by this table
    character_name VARCHAR(50),
    age INT NOT NULL,
    experience INT NOT NULL,
    height DECIMAL NOT NULL,
    weight DECIMAL NOT NULL,
    carry_capacity DECIMAL NOT NULL,

    PRIMARY KEY (character_id),
    FOREIGN KEY (race_type) REFERENCES race(race_type),
    FOREIGN KEY (class_type) REFERENCES class(class_type),
    FOREIGN KEY (exp_level_type) REFERENCES exp_level(exp_level_type),
    FOREIGN KEY (party_id) REFERENCES party(party_id),
    FOREIGN KEY (alignment_type) REFERENCES alignment(alignment_type),
    FOREIGN KEY (background_type) REFERENCES background(background_type)
);

-- Inventory Table
CREATE TABLE inventory(
	inventory_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    character_id SMALLINT UNSIGNED NOT NULL,
    item_id SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY (inventory_id),
    FOREIGN KEY (character_id) REFERENCES character_info(character_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);

-- Creating the character_skills Table
-- This table works as the link between all known skills and the skills a character
CREATE TABLE character_skills(
    character_skill_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    skill_id SMALLINT UNSIGNED NOT NULL,
    character_id SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY (character_skill_id),
    FOREIGN KEY (skill_id) REFERENCES skills(skill_id),
    FOREIGN KEY (character_id) REFERENCES character_info(character_id)
);
-- Link to Naming Conventions for MySQL (https://medium.com/@centizennationwide/mysql-naming-conventions-e3a6f6219efe)