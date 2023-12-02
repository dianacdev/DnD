-- insert data into tables


INSERT INTO class (class_name, class_desc, hit_die, primary_ability, class_saves) -- insert 10 classes
VALUES
  ('Barbarian', 'Masters of the wild, relying on primal instincts and brute strength.', 'd12', 'Strength', 'Strength, Constitution'),
  ('Bard', 'Versatile performers and magic users, weaving spells with musical talents.', 'd8', 'Charisma', 'Dexterity, Charisma'),
  ('Cleric', 'Divine spellcasters dedicated to a deity, serving as healers and warriors.', 'd8', 'Wisdom', 'Wisdom, Charisma'),
  ('Druid', 'Protectors of nature with shape-shifting abilities and spellcasting.', 'd8', 'Wisdom', 'Intelligence, Wisdom'),
  ('Fighter', 'Skilled warriors with a variety of combat styles and abilities.', 'd10', 'Strength or Dexterity', 'Strength, Constitution'),
  ('Monk', 'Martial artists with heightened physical and mystical abilities.', 'd8', 'Dexterity and Wisdom', 'Strength, Dexterity'),
  ('Paladin', 'Holy warriors bound by a code, blending martial prowess with divine magic.', 'd10', 'Strength and Charisma', 'Wisdom, Charisma'),
  ('Ranger', 'Skilled hunters and trackers, at home in the wilderness.', 'd10', 'Dexterity and Wisdom', 'Strength, Dexterity'),
  ('Rogue', 'Cunning and stealthy characters skilled in thievery and subtlety.', 'd8', 'Dexterity', 'Dexterity, Intelligence'),
  ('Sorcerer', 'Innate spellcasters with magical bloodlines, able to wield powerful arcane magic.', 'd6', 'Charisma', 'Constitution, Charisma');



insert into alignment (alignment_name, alignment_desc) -- insert the 9 alignments and descriptions into alignment table
values ('Lawful Good','Characters who are lawful good combine a commitment to oppose evil with the discipline to 
fight relentlessly. They tell the truth, keep their word, respect authority, honor tradition, and judge those who fall short of their duties.'),
('Neutral Good','Neutral good characters do the best they can to help others according to their needs. 
They are devoted to helping others and will often work within the system, but they are not afraid to bend or break the law if it serves a greater good.'),
('Chaotic Good', 'Chaotic good characters act as their conscience directs, with little regard for what others expect. 
They are kind-hearted and always aim to do the right thing, but they do not feel tied to any particular social order or set of rules.'),
('Lawful Neutral', 'Lawful neutral characters follow a strict code or set of laws, but they are not inherently 
concerned with whether those laws are good or evil. They strive to maintain order and organization, often serving a specific authority or organization.'),
('True Neutral', 'True neutral characters are indifferent to order or chaos and may follow a personal code that 
may not fit into the traditional categories of good or evil. They prioritize balance and are often focused on their own well-being.'),
('Chaotic Neutral', 'Chaotic neutral characters are unpredictable and follow their whims. They are individualists who shun authority and 
traditions, and while they may be good or evil, their actions are primarily driven by self-interest.'),
('Lawful Evil', 'Lawful evil characters methodically take what they want, within the limits of a code of tradition, loyalty, or order. 
They are often ruthless and use organized systems to achieve their goals.'),
('Neutral Evil', "Neutral evil characters are primarily out for themselves and don't have a particular regard for rules or authority. 
They are often willing to harm others to achieve their own ends."),
('Chaotic Evil', 'Chaotic evil characters are motivated by the desire for personal power and pleasure. 
They are often violent and unpredictable, reveling in the chaos they create.');

INSERT INTO race (race_name, race_desc) -- insert 10 races
VALUES
  ('Human', 'Versatile and adaptable, humans are found in almost every corner of the world.'),
  ('Elf', 'Elegant and long-lived, elves are often attuned to magic and the natural world.'),
  ('Dwarf', 'Resilient and skilled in craftsmanship, dwarves are known for their underground cities.'),
  ('Halfling', 'Small and nimble, halflings excel in stealth and have a love for simple comforts.'),
  ('Gnome', 'Inquisitive and inventive, gnomes have a natural affinity for magic and tinkering.'),
  ('Half-Elf', 'A mix of human and elf, half-elves combine the strengths of both races.'),
  ('Half-Orc', 'The result of human and orc unions, half-orcs possess strength and toughness.'),
  ('Tiefling', 'Infernal heritage grants tieflings unique appearances and a touch of magic.'),
  ('Dragonborn', 'Descendants of dragons, dragonborn have draconic features and breath weapons.'),
  ('Aasimar', 'Blessed with celestial blood, aasimar radiate goodness and possess divine abilities.');

INSERT INTO items (item_name, item_desc, item_weight, item_cost) -- insert 30 itmes
VALUES
  ("Longsword", "A versatile weapon with a keen edge.", 3.0, 15.0),
  ("Healing Potion", "Restores hit points when consumed.", 0.5, 50.0),
  ("Leather Armor", "Light and flexible armor made from animal hides.", 10.0, 10.0),
  ("Spellbook", "A book containing magical spells for a wizard.", 2.0, 30.0),
  ("Shortbow", "A simple ranged weapon for delivering arrows.", 2.0, 25.0),
  ("Quiver of Arrows", "Holds arrows for a bow.", 1.0, 5.0),
  ("Potion of Invisibility", "Temporarily makes the consumer invisible.", 0.5, 150.0),
  ("Plate Mail", "Heavy and protective armor for warriors.", 65.0, 1500.0),
  ("Ring of Protection", "Enhances the wearer's defenses.", 0.1, 200.0),
  ("Amulet of Health", "Increases the wearer's constitution.", 0.2, 300.0),
  ("Warhammer", "A heavy weapon for smashing foes.", 5.0, 10.0),
  ("Wand of Magic Missiles", "A wand that can cast magic missile spells.", 0.2, 100.0),
  ("Chain Mail", "Medium-weight armor made of interlocking metal rings.", 55.0, 75.0),
  ("Scroll of Identify", "A scroll that can identify the magical properties of items.", 0.1, 50.0),
  ("Dagger", "A versatile and easily concealable weapon.", 1.0, 2.0),
  ("Bracers of Defense", "Magical bracers that enhance the wearer's AC.", 0.5, 400.0),
  ("Greatsword", "A two-handed weapon with a massive blade.", 6.0, 50.0),
  ("Backpack", "A sturdy backpack for carrying equipment.", 2.0, 5.0),
  ("Cloak of Elvenkind", "A cloak that grants the wearer improved stealth abilities.", 1.0, 300.0),
  ("Scroll of Fireball", "A scroll containing the fireball spell.", 0.1, 75.0),
  ("Rapier", "A slender and elegant weapon used for fencing.", 2.0, 25.0),
  ("Wand of Lightning Bolts", "A wand that can cast lightning bolt spells.", 0.3, 400.0),
  ("Chain Shirt", "Light armor made of interlocking metal rings.", 25.0, 50.0),
  ("Gloves of Thievery", "Magical gloves that enhance the wearer's sleight of hand.", 0.2, 150.0),
  ("Sling", "A simple ranged weapon for hurling stones.", 1.0, 1.0),
  ("Scale Mail", "Medium-weight armor made of overlapping metal scales.", 45.0, 50.0),
  ("Wand of Frost", "A wand that can cast frost-related spells.", 0.3, 350.0),
  ("Helm of Comprehending Languages", "A helm that allows the wearer to understand any language.", 1.0, 200.0),
  ("Grappling Hook", "A tool for scaling walls or climbing.", 4.0, 2.0),
  ("Cloak of Resistance", "A cloak that provides resistance to various forms of harm.", 0.5, 300.0),
  ("Potion of Giant Strength", "Temporarily increases the consumer''s strength to giant levels.", 0.5, 100.0),
  ("Spear", "A simple melee weapon with a thrown option.", 3.0, 1.0);


INSERT INTO skills (skill_name, skill_desc) -- insert 20 skills
VALUES
  ('Acrobatics', 'The ability to perform feats of balance and agility.'),
  ('Animal Handling', 'The skill of calming or controlling animals.'),
  ('Arcana', 'Knowledge of magical lore, spells, and magic items.'),
  ('Athletics', 'Physical abilities such as climbing, swimming, and jumping.'),
  ('Deception', 'The art of concealing one’s true intentions or creating falsehoods.'),
  ('Insight', 'The ability to read the intentions and emotions of others.'),
  ('Perception', 'The skill of noticing details and detecting hidden objects or creatures.'),
  ('Stealth', 'The skill of moving silently and remaining unseen.'),
  ('Survival', 'The skill of tracking, hunting, and living off the land.'),
  ('Intimidation', 'The ability to influence others through threats and fear.'),
  ('History', 'Knowledge of historical events, civilizations, and cultures.'),
  ('Investigation', 'The skill of examining and analyzing clues and information.'),
  ('Nature', 'Knowledge of the natural world and its creatures.'),
  ('Religion', 'Understanding of deities, religious practices, and the planes of existence.'),
  ('Persuasion', 'The ability to influence and convince others.'),
  ('Medicine', 'Knowledge of healing and medical practices.'),
  ('Sleight of Hand', 'The ability to perform tricks and manipulate objects with finesse.'),
  ('Performance', 'Skill in entertaining through music, dance, oratory, or other arts.'),
  ('Diplomacy', 'The art of tact and negotiation in dealing with others.'),
  ('Alchemy', 'Knowledge and skill in the creation of magical and alchemical substances.');


INSERT INTO background (background_name, background_desc, proficiency_desc) -- insert 20 possible character backgrounds
VALUES
  ('Hermit', 'You lived a life of seclusion, seeking spiritual enlightenment or divine truths.', 'Skill Proficiencies: Medicine, Religion'),
  ('Merchant', 'You are a skilled trader, bartering goods and negotiating deals for profit.', 'Skill Proficiencies: Insight, Persuasion'),
  ('Knight', 'You are a noble warrior, sworn to uphold the principles of chivalry and protect the realm.', 'Skill Proficiencies: Athletics, Persuasion'),
  ('Sailor', 'You are an experienced sailor or pirate, at home on the open seas.', 'Skill Proficiencies: Athletics, Perception'),
  ('Haunted One', 'You have a dark and mysterious past, haunted by traumatic events or supernatural encounters.', 'Skill Proficiencies: Intimidation, Survival'),
  ('Farmer', 'You come from an agricultural background, skilled in tending to crops and animals.', 'Skill Proficiencies: Animal Handling, Nature'),
  ('Artisan', 'You are a skilled craftsman, creating beautiful and functional objects through your craft.', 'Skill Proficiencies: Insight, Craftsmanship (choose one)'),
  ('Scholar', 'You have dedicated your life to the pursuit of knowledge, studying various subjects in depth.', 'Skill Proficiencies: Arcana, History'),
  ('Bounty Hunter', 'You track down and capture or eliminate individuals for a reward, working outside the law.', 'Skill Proficiencies: Investigation, Survival'),
  ('Diplomat', 'You are skilled in negotiation and diplomacy, often working as a mediator or ambassador.', 'Skill Proficiencies: Insight, Persuasion'),
  ('Acolyte', 'You have spent your life in service to a temple, learning sacred rites and rituals.', 'Skill Proficiencies: Insight, Religion'),
  ('Folk Hero', 'You come from a humble social rank, but you were a person of importance in your home village or town.', 'Skill Proficiencies: Animal Handling, Survival'),
  ('Sage', 'You are a scholar, researcher, or academic, with a keen mind for information.', 'Skill Proficiencies: Arcana, History'),
  ('Criminal', 'You lived a life of crime, whether as a thief, smuggler, or enforcer.', 'Skill Proficiencies: Deception, Stealth'),
  ('Soldier', 'You are a veteran of war, skilled in battle and tactics.', 'Skill Proficiencies: Athletics, Intimidation'),
  ('Entertainer', 'You are a performer, skilled in various forms of entertainment.', 'Skill Proficiencies: Acrobatics, Performance'),
  ('Outlander', 'You grew up in the wilds, far from civilization, and are at home in nature.', 'Skill Proficiencies: Athletics, Survival'),
  ('Guild Artisan', 'You are a member of an artisan’s guild, skilled in a particular craft or trade.', 'Skill Proficiencies: Insight, Persuasion'),
  ('Noble', 'You were born into a noble family and raised in a world of privilege and power.', 'Skill Proficiencies: History, Persuasion'),
  ('Urchin', 'You grew up on the streets, making a living by picking pockets and relying on your wits.', 'Skill Proficiencies: Sleight of Hand, Stealth');

-- Inserting 12 experience levels
INSERT INTO exp_level (exp_level, experience)
VALUES 
  (1,0),
  (2, 5000),
  (3, 15000),
  (4, 30000),
  (5, 50000),
  (6, 75000),
  (7, 105000),
  (8, 140000),
  (9, 180000),
  (10, 225000),
  (11, 275000),
  (12, 330000);