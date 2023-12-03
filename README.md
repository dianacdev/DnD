# DnD
Dungeons And Dragons SQL Database

## Getting Started

### Connecting Workbench and VSCode

1. Open VSCode and Install the following
   1. SQLTools MySQL/MariaDB/TiDB
   2. MySQL
2. Open MySQL Workbench
   1. Create a New Connection call it DnD, use the default settings
   2. Open the DnD connection and Create a schema, called dungeonsanddragons or something similar
3. Go back to VSCode and install SQL Tools
4. Go to the SQL Tools tab on the left hand side, click add connection
5. Click the MySQL driver
6. Add the Connection info
   1. Connection name: DnD (or the name of the connection created in MySQL Workbench, step 2.1)
   2. Connection group: leave blank
   3. Connection using: Server and Port
   4. Server Address: localhost
   5. Port: 3306
   6. Database: dungeonsanddragons (or the name used to make the schema in step 2.2)
   7. Username: root
   8. Leave the default for the remaining
7. Test the connection if its green, then save the connection
8. A new tab should appear, you can write a test query and refresh the workbench to confirm the connection.

### Clone the Repo

1. Go to the repo, click the "<>Code" and copy the URL under HTTPS
2. Open VSCode and press Ctrl+ to open the terminal
3. type and hit enter

   ```console
    git clone PASTE_URL
    ```

4. You can now copy the scripts and run them via the connection tab, and then alter the scripts for github.

## Tables

### character_info

|Attribute|Datatype|Required for Insert|Key|
|----|----|----|----|
|character_id|SMALLINT|not required|Primary|
|race_type|SMALLINT|required|Foreign|
|class_type|SMALLINT|required|Foreign|
|exp_level_type|SMALLINT|required|Foreign|
|part_id|SMALLINT|required|Foreign|
|alignment_type|SMALLINT|required|Foreign|
|background_type|SMALLINT|required|Foreign|
|character_name|VARCHAR (50)|required|Attribute|
|age|SMALLINT|required|Attribute|
|experience|INT|required|Attribute|
|height|DECIMAL (4,1)|required|Attribute|
|weight|DECIMAL (4,1)|required|Attribute|
|carry_capacity|DECIMAL (4,1)|required|Attribute|

### character_skills

|Attribute|Datatype|Required for Insert|Key|
|----|----|----|----|
|character_skill_id|SMALLINT|not required|Primary|
|skill_id|SMALLINT|required|Foreign|
|character_id|SMALLINT|required|Foreign|

### alignment

|Attribute|Datatype|Required for Insert|Key|
|----|----|----|----|
|alignment_type|SMALLINT|not required|Primary|
|alignment_name|VARCHAR (50)|required|Attribute|
|alignment_desc|VARCHAR (550)|not required|Attribute|

### background

|Attribute|Datatype|Required for Insert|Key|
|----|----|----|----|
|background_type|SMALLINT|not required|Primary|
|background_name|VARCHAR (50)|required|Attribute|
|background_desc|VARCHAR (550)|not required|Attribute|
|proficiency_desc|VARCHAR (255)|not required|Attribute|

### race

|Attribute|Datatype|Required for Insert|Key|
|----|----|----|----|
|race_type|SMALLINT|not required|Primary|
|race_name|VARCHAR (50)|required|Attribute|
|race_desc|VARCHAR (255)|not required|Attribute|

### skills

|Attribute|Datatype|Required for Insert|Key|
|----|----|----|----|
|skill_id|SMALLINT|not required|Primary|
|skill_name|VARCHAR (50)|required|Attribute|
|skill_desc|VARCHAR (255)|not required|Attribute|

### exp_level

|Attribute|Datatype|Required for Insert|Key|
|----|----|----|----|
|exp_level_type|SMALLINT|not required|Primary|
|exp_level|SMALLINT|required|Attribute|
|experience|MEDIUMINT|required|Attribute|

### class

|Attribute|Datatype|Required for Insert|Key|
|----|----|----|----|
|class_type|SMALLINT|not required|Primary|
|class_name|VARCHAR (50)|required|Attribute|
|class_desc|VARCHAR (255)|not required|Attribute|
|hit_die|VARCHAR (255)|required|Attribute|
|primary_ability|VARCHAR (255)|required|Attribute|
|class_saves|VARCHAR (255)|not required|Attribute|

### party

|Attribute|Datatype|Required for Insert|Key|
|----|----|----|----|
|party_id|SMALLINT|not required|Primary|
|party_size|SMALLINT|required|Attribute|
|party_name|VARCHAR (100)|required|Attribute|
|dungeon_master|VARCHAR (50)|required|Attribute|
|party_desc|VARCHAR (255)|not required|Attribute|

### inventory

|Attribute|Datatype|Required for Insert|Key|
|----|----|----|----|
|inventory_id|SMALLINT|not required|Primary|
|character_id|SMALLINT|required|Foreign|
|item_id|SMALLINT|not required|Foreign|

### items

|Attribute|Datatype|Required for Insert|Key|
|----|----|----|----|
|item_id|SMALLINT|not required|Primary|
|item_name|VARCHAR (50)|required|Attribute|
|item_desc|VARCHAR (255)|not required|Attribute|
|item_weight|DECIMAL (4,1)|required|Attribute|
|item_cost|DECIMAL (12,2)|required|Attribute|
