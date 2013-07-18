SET @guidnpc = ;

DELETE FROM creature_template WHERE entry = 130175;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (130175, 0, 0, 0, 0, 0, 11380, 0, 0, 0, 'Zertharion', NULL, NULL, 0, 83, 83, 2, 14, 14, 0, 1, 1.14286, 1, 3, 509, 683, 0, 805, 35, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 130175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500000, 500000, '', 0, 7, 1, 1435, 72, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1071628287, 1, 'boss_zertharion', 1);

DELETE FROM creature_template_addon WHERE entry = 130175;
INSERT INTO creature_template_addon VALUES (130175,0,0,3,0,0,'');

DELETE FROM creature WHERE id = 130175;
INSERT INTO `creature` VALUES (@guidnpc+1, 130175, 509, 1, 2, 0, 0, -8542.01, 1481.58, 32.1479, 0.976216, 604800, 0, 0, 0, 306576, 0, 0, 0, 0);

DELETE FROM creature_text WHERE entry = 130175;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (130175, 0, 0, 'Mi señor me aviso de vuestra llegada.', 14, 0, 100, 0, 0, 0, 'Zertharion');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (130175, 1, 0, 'Derrotado por seres de vida fugaz. Mi señor perdonarme', 14, 0, 100, 0, 0, 0, 'Zertharion');

DELETE FROM creature_template WHERE entry = 130176;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (130176, 0, 0, 0, 0, 0, 18945, 0, 0, 0, 'Yamix', NULL, NULL, 0, 83, 83, 2, 14, 14, 0, 1, 1.14286, 0.5, 3, 509, 683, 0, 805, 35, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 130176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500000, 500000, '', 0, 3, 1, 1435, 3000, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1071628287, 1, 'boss_yamix', 1);

DELETE FROM creature_template_addon WHERE entry = 130176;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (130176, 0, 0, 0, 0, 0, '60449');

DELETE FROM creature WHERE id = 130176;
INSERT INTO `creature` VALUES (@guidnpc+2, 130176, 509, 1, 2, 0, 0, -8938.44, 1545.11, 21.4107, 0.0243129, 604800, 0, 0, 0, 306576, 0, 0, 0, 0);

DELETE FROM creature_template WHERE entry = 130177;
INSERT INTO `creature_template` VALUES (130177, 0, 0, 0, 0, 0, 20245, 0, 0, 0, 'Huevo de Yamix', NULL, NULL, 0, 83, 83, 2, 14, 14, 0, 1, 1.14286, 1, 3, 0, 0, 0, 0, 1, 0, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1071628287, 2, '', 1);

DELETE FROM creature_template_addon WHERE entry = 130177;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (130177, 0, 0, 0, 0, 0, '75476');

DELETE FROM creature_template WHERE entry IN (130178,130179,130180);
INSERT INTO `creature_template` VALUES (130178, 0, 0, 0, 0, 0, 30318, 0, 0, 0, 'Segasueños', NULL, NULL, 0, 83, 83, 2, 14, 14, 0, 1, 1.14286, 1, 3, 509, 683, 0, 805, 35, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 130178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500000, 500000, '', 0, 3, 1, 718, 72, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1071628287, 1, 'boss_segasuenos', 1);
INSERT INTO `creature_template` VALUES (130179, 0, 0, 0, 0, 0, 27034, 0, 0, 0, 'Aregos', NULL, NULL, 0, 83, 83, 2, 14, 14, 0, 1, 1.14286, 1, 3, 509, 683, 0, 805, 35, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 130179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500000, 500000, '', 0, 3, 1, 718, 72, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1071628287, 1, 'boss_aregos', 1);
INSERT INTO `creature_template` VALUES (130180, 0, 0, 0, 0, 0, 27898, 0, 0, 0, 'Padre Crepuscular', NULL, NULL, 0, 83, 83, 2, 14, 14, 0, 1, 1.14286, 0.3, 3, 509, 683, 0, 805, 35, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 130180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500000, 500000, '', 0, 3, 1, 933, 72, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1071628287, 1, 'boss_padre_crepuscular', 1);

DELETE FROM creature_text WHERE entry = 130180;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (130180, 0, 0, 'Malditos mortales, os enseñare a no meteros en estos asuntos.', 14, 0, 100, 0, 0, 0, 'Padre Crepuscular');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (130180, 1, 0, 'Zertharion acaba con ellos.', 14, 0, 100, 0, 0, 0, 'Padre Crepuscular');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (130180, 2, 0, 'Aregos acaba con ellos.', 14, 0, 100, 0, 0, 0, 'Padre Crepuscular');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (130180, 3, 0, 'Segasueños acaba con ellos.', 14, 0, 100, 0, 0, 0, 'Padre Crepuscular');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (130180, 4, 0, 'Contemplar mi tremendor poder. No sereis rivales para el.', 14, 0, 100, 0, 0, 0, 'Padre Crepuscular');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (130180, 5, 0, 'Esto no acabo aquí. Soy un gran calculador las proxima vez triunfare.', 14, 0, 100, 0, 0, 0, 'Padre Crepuscular');


DELETE FROM creature WHERE id IN (130178,130179,130180);
INSERT INTO `creature` VALUES (@guidnpc+3, 130178, 509, 1, 2, 0, 0, -9454.35, 1983.21, 85.9144, 5.65364, 604800, 0, 0, 0, 306576, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@guidnpc+4, 130179, 509, 1, 2, 0, 0, -9442.58, 1995.65, 85.9151, 5.35597, 604800, 0, 0, 0, 306576, 0, 0, 0, 0);

INSERT INTO `creature` VALUES (@guidnpc+5, 130180, 509, 1, 2, 0, 0, -9522.87, 2059.78, 106.131, 5.49734, 604800, 0, 0, 0, 306576, 0, 0, 0, 0);

DELETE FROM gameobject_template WHERE entry IN (130009,130010);
INSERT INTO `gameobject_template` VALUES (130009, 3, 9233, 'Allijo del Padre Crepuscular', '', '', '', 0, 0, 2.5, 0, 0, 0, 0, 0, 0, 1634, 130009, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);
INSERT INTO `gameobject_template` VALUES (130010, 3, 9233, 'Allijo del Padre Crepuscular', '', '', '', 0, 0, 2.5, 0, 0, 0, 0, 0, 0, 1634, 130010, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);

DELETE FROM creature_template WHERE entry IN (130181,130182,130183,130184);
INSERT INTO `creature_template` VALUES (130181, 0, 0, 0, 0, 0, 27982, 0, 0, 0, 'Segasueños', NULL, NULL, 0, 83, 83, 2, 14, 14, 0, 1, 1.14286, 0.3, 3, 509, 683, 0, 805, 17, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 139178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 359, 72, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1071628287, 1, 'boss_segasuenosres', 1);
INSERT INTO `creature_template` VALUES (130182, 0, 0, 0, 0, 0, 27982, 0, 0, 0, 'Aregos', NULL, NULL, 0, 83, 83, 2, 14, 14, 0, 1, 1.14286, 0.3, 3, 509, 683, 0, 805, 17, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 139178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 359, 72, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1071628287, 1, 'boss_aregosres', 1);
INSERT INTO `creature_template` VALUES (130183, 0, 0, 0, 0, 0, 27982, 0, 0, 0, 'Zertharion', NULL, NULL, 0, 83, 83, 2, 14, 14, 0, 1, 1.14286, 0.3, 3, 509, 683, 0, 805, 17, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 139178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 359, 72, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1071628287, 1, 'boss_zertharionres', 1);
INSERT INTO `creature_template` VALUES (130184, 0, 0, 0, 0, 0, 18945, 0, 0, 0, 'Yamix', NULL, NULL, 0, 83, 83, 2, 14, 14, 0, 1, 1.14286, 0.3, 3, 509, 683, 0, 805, 17, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 139178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 502, 72, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1071628287, 1, 'boss_yamixres', 1);

DELETE FROM creature_template_addon WHERE entry = 130184;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (130184, 0, 0, 0, 0, 0, '60449');

DELETE FROM item_template WHERE entry = 5916;
INSERT INTO `item_template` VALUES (5916, 13, 0, -1, "Llave de la cripta de Ahn'quiraj", 7737, 4, 0, 0, 1, 0, 0, 0, -1, -1, 1, 80, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Llave necesaria para acceder a las zonas nunca conocidas de Ahn\'quiraj.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 12340);

DELETE FROM creature_template WHERE entry IN (130185,130186);
INSERT INTO `creature_template` VALUES (130186, 0, 0, 0, 0, 0, 28460, 0, 0, 0, 'Portal de Ahn\'quiraj', NULL, NULL, 0, 1, 1, 0, 35, 35, 1, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);
INSERT INTO `creature_template` VALUES (130185, 0, 0, 0, 0, 0, 10008, 0, 0, 0, 'Chromie', NULL, NULL, 45062, 1, 1, 0, 35, 35, 1, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);

DELETE FROM creature WHERE id = 130185;
INSERT INTO `creature` VALUES (@guidnpc+6, 130185, 509, 1, 2, 0, 0, -8871.36, 2021.66, 21.7865, 3.04495, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM npc_text WHERE ID = 45062;
INSERT INTO `npc_text` VALUES (45062, 'Hola $N cuando tengas la Llave de la cripta de Ahn\'quiraj ven a mi y te enseñare una cosa muy interesante.', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM gossip_menu WHERE entry = 45062;
INSERT INTO gossip_menu VALUES (45062,45062);

DELETE FROM gossip_menu_option WHERE menu_id = 45062;
INSERT INTO `gossip_menu_option` VALUES (45062, 0, 0, 'Preparado para viajar.', 1, 1, 0, 0, 0, 0, '');

DELETE FROM conditions WHERE SourceGroup = 45062;
INSERT INTO `conditions` VALUES (15, 45062, 0, 0, 0, 2, 0, 5916, 1, 0, 0, 0, '', NULL);

DELETE FROM creature_text WHERE entry = 130185;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (130185, 0, 0, 'Atraviesa este portal cuando estes listo.', 14, 0, 100, 0, 0, 0, 'Chromie');

DELETE FROM smart_scripts WHERE entryorguid IN (130185,130186);
INSERT INTO `smart_scripts` VALUES (130185, 0, 0, 1, 62, 0, 100, 0, 45062, 0, 0, 0, 12, 130186, 6, 1000, 0, 0, 0, 8, 0, 0, 0, -8871.35, 2017.83, 21.79, 2.99, 'Chromie');
INSERT INTO `smart_scripts` VALUES (130185, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chromie');
INSERT INTO `smart_scripts` VALUES (130186, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 62, 509, 0, 0, 0, 0, 0, 7, 0, 0, 0, -8598.55, 1985.00, 100.72, 0.37, 'Agujero de gusano');

DELETE FROM creature_template WHERE entry = 130187;
INSERT INTO `creature_template` VALUES (130187, 0, 0, 0, 0, 0, 14367, 0, 0, 0, 'Chromatus', NULL, NULL, 0, 83, 83, 2, 14, 14, 0, 1, 1.14286, 1, 3, 509, 683, 0, 805, 35, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 130187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1435, 72, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1071628287, 1, 'boss_cromatus', 1);

DELETE FROM creature WHERE id = 130187;
INSERT INTO `creature` VALUES (@guidnpc+7, 130187, 509, 1, 2, 0, 0, -8536.99, 2008.61, 100.721, 3.48176, 604800, 0, 0, 0, 306576, 0, 0, 0, 0);

DELETE FROM quest_template WHERE id = 130147;
INSERT INTO `quest_template` VALUES (130147, 2, 80, 80, 0, 0, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 128, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El ataque del vuelo crepuscular', 'Ve a las Ruinas de Ahn\'quiraj y ayuda al vuelo rojo a descubrir que es lo que ocurres. ESTA MISION NO SE PUEDE ENTREGAR.', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM spell_area WHERE AREA = 3429 AND spell = 59073;
INSERT INTO `spell_area` VALUES (59073, 3429, 130147, 1, 130147, 0, 0, 2, 1);

DELETE FROM creature_questrelation WHERE quest = 130147;
INSERT INTO creature_questrelation VALUES (26917,130147);

## LOOT CHROMATUS
DELETE FROM creature_loot_template WHERE entry = 130187;
INSERT INTO creature_loot_template VALUES (130187,49426,100,1,0,2,2);
INSERT INTO creature_loot_template SELECT 130187,entry,0,1,1,1,1 FROM item_template WHERE entry IN (43955,43951,43952,43986,43954);

## LOOT SEGASUEÑOS Y AREGOS
UPDATE item_template SET AllowableClass = 1 | 32 WHERE itemset = 523;
DELETE FROM reference_loot_template WHERE entry IN (130178,130179);
INSERT INTO reference_loot_template SELECT 130178,entry,0,1,1,1,1 FROM item_template WHERE itemset IN (523,524,525,526,529,521,527,528,530) AND InventoryType IN (5,20,7,1,3,8);
INSERT INTO reference_loot_template SELECT 130179,entry,0,1,1,1,1 FROM item_template WHERE itemset IN (523,524,525,526,529,521,527,528,530) AND InventoryType IN (10,6,9,11);

DELETE FROM creature_loot_template WHERE entry IN (130178,130179);
INSERT INTO creature_loot_template VALUES (130178,49426,100,1,0,2,2);
INSERT INTO creature_loot_template VALUES (130179,49426,100,1,0,2,2);
INSERT INTO creature_loot_template VALUES (130178,1,100,1,0,-130178,3);
INSERT INTO creature_loot_template VALUES (130179,1,100,1,0,-130179,3);

## LOOT PADRE CREPUSCULAR
DELETE FROM gameobject_loot_template WHERE entry = 130009;
INSERT INTO gameobject_loot_template VALUES (130009,49426,100,1,0,2,2);
INSERT INTO gameobject_loot_template SELECT 130009,entry,0,1,1,1,1 FROM item_template WHERE entry IN (47546,47548,47550,47551,47554);
INSERT INTO gameobject_loot_template SELECT 130009,entry,0,1,2,1,1 FROM item_template WHERE entry IN (47545,47547,47549,47552,47553);
INSERT INTO gameobject_loot_template SELECT 130009,entry,0,1,3,1,1 FROM item_template WHERE entry IN (47513,47516,47518,47520,47523,47525,47528,47483,47475,47491);
INSERT INTO gameobject_loot_template SELECT 130009,entry,0,1,4,1,1 FROM item_template WHERE entry IN (47506,47515,47517,47519,47521,47524,47526,47239,47206,47156);

DELETE FROM conditions WHERE SourceTypeOrReferenceId = 4 AND SourceGroup = 130009;
INSERT INTO `conditions` SELECT 4, 130009, entry, 0, 0, 6, 0, 469, 0, 0, 0, 0, '', NULL FROM item_template WHERE entry IN (47545,47547,47549,47552,47553,47506,47515,47517,47519,47521,47524,47526,47239,47206,47156);
INSERT INTO `conditions` SELECT 4, 130009, entry, 0, 0, 6, 0, 67, 0, 0, 0, 0, '', NULL FROM item_template WHERE entry IN (47546,47548,47550,47551,47554,47513,47516,47518,47520,47523,47525,47528,47483,47475,47491);

DELETE FROM gameobject_loot_template WHERE entry = 130010;
INSERT INTO gameobject_loot_template VALUES (130010,5916,100,1,0,1,1);
INSERT INTO gameobject_loot_template VALUES (130010,32458,100,1,0,1,1);

## LOOT YAMIX
DELETE FROM creature_loot_template WHERE entry = 130176;
INSERT INTO creature_loot_template VALUES (130176,49426,100,1,0,2,2);
INSERT INTO creature_loot_template SELECT 130176,entry,0,1,1,1,1 FROM item_template WHERE entry IN (46027,46348,45088,45089,45090,45091,45092,45093,45096,45097,45098,45100,45101,45103,45104,45105);
INSERT INTO creature_loot_template SELECT 130176,entry,0,1,2,1,1 FROM item_template WHERE AllowableRace = 690 AND class = 9 AND ItemLevel = 85;
INSERT INTO creature_loot_template SELECT 130176,entry,0,1,3,1,1 FROM item_template WHERE AllowableRace = 1101 AND class = 9 AND ItemLevel = 85;

DELETE FROM conditions WHERE SourceTypeOrReferenceId = 1 AND SourceGroup = 130176;
INSERT INTO `conditions` SELECT 1, 130176, entry, 0, 0, 6, 0, 469, 0, 0, 0, 0, '', NULL FROM item_template WHERE AllowableRace = 1101 AND class = 9 AND ItemLevel = 85;
INSERT INTO `conditions` SELECT 1, 130176, entry, 0, 0, 6, 0, 67, 0, 0, 0, 0, '', NULL FROM item_template WHERE AllowableRace = 690 AND class = 9 AND ItemLevel = 85;

## LOOT ZERTHARION
UPDATE item_template SET AllowableClass = 1 | 32  WHERE itemset = 218;

DELETE FROM creature_loot_template WHERE entry = 130175;
INSERT INTO creature_loot_template VALUES (130175,49426,100,1,0,2,2);
INSERT INTO creature_loot_template SELECT 130175,entry,0,1,1,1,1 FROM item_template WHERE ItemLevel = 76 AND AllowableClass != 0 AND itemset != 0 AND InventoryType = 9;
INSERT INTO creature_loot_template SELECT 130175,entry,0,1,2,1,1 FROM item_template WHERE ItemLevel = 76 AND AllowableClass != 0 AND itemset != 0 AND InventoryType = 6;
INSERT INTO creature_loot_template SELECT 130175,entry,0,1,3,1,1 FROM item_template WHERE ItemLevel = 76 AND AllowableClass != 0 AND itemset != 0 AND InventoryType = 3;
INSERT INTO creature_loot_template SELECT 130175,entry,0,1,4,1,1 FROM item_template WHERE ItemLevel = 76 AND AllowableClass != 0 AND itemset != 0 AND InventoryType = 7;
INSERT INTO creature_loot_template SELECT 130175,entry,0,1,5,1,1 FROM item_template WHERE ItemLevel = 76 AND AllowableClass != 0 AND itemset != 0 AND InventoryType = 1;
INSERT INTO creature_loot_template SELECT 130175,entry,0,1,6,1,1 FROM item_template WHERE ItemLevel = 76 AND AllowableClass != 0 AND itemset != 0 AND InventoryType = 10;
INSERT INTO creature_loot_template SELECT 130175,entry,0,1,7,1,1 FROM item_template WHERE ItemLevel = 76 AND AllowableClass != 0 AND itemset != 0 AND InventoryType = 8;
INSERT INTO creature_loot_template SELECT 130175,entry,0,1,8,1,1 FROM item_template WHERE ItemLevel = 76 AND AllowableClass != 0 AND itemset != 0 AND InventoryType = 5;
INSERT INTO creature_loot_template SELECT 130175,entry,0,1,8,1,1 FROM item_template WHERE entry IN (16916,16923,16931);
