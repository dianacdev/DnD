
--Inserting Skills
INSERT INTO skills (skill_name, skill_desc)
VALUES
()
;

--Inserting Backgrounds
-- https://www.dndbeyond.com/backgrounds
-- TODO!: Add the background descriptions and the proficiency descriptions
INSERT INTO background (background_name, background_desc, proficiency_desc)
VALUES
-- Basic Rules Backgrounds
("Acolyte", "", ""),
("Criminal / Spy", "", ""),
("Folk Hero", "", ""),
("Noble", "", ""),
("Sage", "", ""),
("Soldier", "", "")
;

--Inserting Items
INSERT INTO items (item_name, item_desc, item_weight, item_cost)
VALUES
("Abacus", "A standard tool used to make calculations.", "2 lbs", "2 gp"),
("Acid (vial)", "As an action, you can splash the contents of this vial onto a creature within 5 feet of you or throw the vial up to 20 feet, shattering it on impact. In either case, make a ranged attack against a creature or object, treating the acid as an improvised weapon.\nOn a hit, the target takes 2d6 acid damage.", "1 lbs", "25 gp"),
("Antitoxin", "A creature that drinks this vial of liquid gains advantage on saving throws against poison for 1 hour.\nIt confers no benefit to undead or constructs.", "---", "50 gp"),
;


--Inserting Classes
-- https://www.dndbeyond.com/classes
--TODO!:  Might need to update if dice table is implemented!!, 
-- TODO!: Also add primary_ability, class_saves, and class_descriptions.
INSERT INTO class (class_name, class_desc, hit_die, primary_ability, class_saves)
VALUES
-- Basic Rules Classes
("Barbarian", "", "d12"),
("Bard", "", "d8"),
("Cleric", "d8"),
("Druid", "", "d8"),
("Fighter", "", "d10"),
("Monk", "", "d8"),
("Paladin", "", "d10"),
("Ranger", "", "d10"),
("Rogue", "", "d8"),
("Sorcerer", "", "d6"),
("Warlock", "", "d8"),
("Wizard", "", "d6"),
-- Tasha's Cauldron of Everything
("Artificer", "", "d8"),
-- Critical Role
("Blood Hunter", "", "d10")
;

--Inserting Races (50 Characters, 550 Characters) 
-- https://www.dndbeyond.com/races
INSERT INTO race (race_name, race_desc)
VALUES
-- Basic Rules Races
("Dragonborn", ""),
("Dwarf", ""),
("Elf", ""),
("Gnome", ""),
("Half-Elf", ""),
("Halfling", ""),
("Half-Orc", ""),
("Human", ""),
("Teifling", ""),
-- Monsters of the Multiverse
("Aarakocra", ""),
("Aasimar", ""),
("Air Genasi", ""),
("Bugbear", ""),
("Centaur", ""),
("Changeling", ""),
("Deep Gnome", ""),
("Duergar", ""),
("Earth Genasi", ""),
("Eladrin", ""),
("Fairy", ""),
("Firbolg", ""),
("Fire Genasi", ""),
("Githyanki", ""),
("Githzerai", ""),
("Goblin", ""),
("Goliath", ""),
("Harengon", ""),
("Hobgoblin", ""),
("Kenku", ""),
("Kobold", ""),
("Lizardfolk", ""),
("Minotaur", ""),
("Orc", ""),
("Satyr", ""),
("Sea Elf", ""),
("Shadar-kai", ""),
("Shifter", ""),
("Tabaxi", ""),
("Tortle", ""),
("Triton", ""),
("Water Genasi", ""),
("Yuan-ti", "")
;

--Inserting Alignments (50 Characters, 550 Characters)
INSERT INTO alignment (alignment_name, alignment_desc)
VALUES
("Lawful Good", "A lawful good character typically acts with compassion and always with honor and a sense of duty.\nHowever, lawful good characters will often regret taking any action they fear would violate their code, even if they recognize such action as being good."),
("Neutral Good", "A neutral good character typically acts altruistically, without regard for or against lawful precepts such as rules or tradition.\nA neutral good character has no problems with cooperating with lawful officials, but does not feel beholden to them.\nIn the event that doing the right thing requires the bending or breaking of rules, they do not suffer the same inner conflict that a lawful good character would."),
("Chaotic Good", "A chaotic good character does what is necessary to bring about change for the better, disdains bureaucratic organizations that get in the way of social improvement, and places a high value on personal freedom, not only for oneself, but for others as well.\nChaotic good characters usually intend to do the right thing, but their methods are generally disorganized and often out of sync with the rest of society."),
("Lawful Neutral", "A lawful neutral character typically believes strongly in lawful concepts such as honor, order, rules, and tradition, but often follows a personal code in addition to, or even in preference to, one set down by a benevolent authority."),
("(True) Neutral", "A neutral character (also called 'true neutral') is neutral on both axes and tends not to feel strongly towards any alignment, or actively seeks their balance."),
("Chaotic Neutral", "A chaotic neutral character is an individualist who follows their own heart and generally shirks rules and traditions.\nAlthough chaotic neutral characters promote the ideals of freedom, it is their own freedom that comes first; good and evil come second to their need to be free."),
("Lawful Evil", "A lawful evil character sees a well-ordered system as being necessary to fulfill their own personal wants and needs, using these systems to further their power and influence."),
("Neutral Evil", "A neutral evil character is typically selfish and has no qualms about turning on allies-of-the-moment, and usually makes allies primarily to further their own goals.\nA neutral evil character has no compunctions about harming others to get what they want, but neither will they go out of their way to cause carnage or mayhem when they see no direct benefit for themselves.\nAnother valid interpretation of neutral evil holds up evil as an ideal, doing evil for evil's sake and trying to spread its influence."),
("Chaotic Evil", "A chaotic evil character tends to have no respect for rules, other people's lives, or anything but their own desires, which are typically selfish and cruel.\nThey set a high value on personal freedom, but do not have much regard for the lives or freedom of other people.\nChaotic evil characters do not work well in groups because they resent being given orders and usually do not behave themselves unless there is no alternative."),
("Unaligned", "Creatures not sapient enough to make decisions based on moral choices, but operating purely on instinct, are described as 'unaligned'.")
;