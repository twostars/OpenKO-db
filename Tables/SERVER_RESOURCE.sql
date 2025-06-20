/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2130)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
/****** Object:  Table [SERVER_RESOURCE]    Script Date: 26/05/2025 7:37:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SERVER_RESOURCE]') AND type in (N'U'))
DROP TABLE [SERVER_RESOURCE]
GO
/****** Object:  Table [SERVER_RESOURCE]    Script Date: 26/05/2025 7:37:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SERVER_RESOURCE](
	[nResourceID] [int] NOT NULL,
	[strName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strResource] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
INSERT [SERVER_RESOURCE] VALUES (176, N'IDS_SIEGE_WAR_GUIDON_TIME_NOTICE', N'There are %d minutes remaining for building your base. If you don''t build a base by then, you''ll aut')
INSERT [SERVER_RESOURCE] VALUES (214, N'IDS_KING_ELMO_FUGITIVE_EVENT_MESSAGE_1', N'The El Morad King has awarded %s %d coins as a reward.')
INSERT [SERVER_RESOURCE] VALUES (215, N'IDS_KING_KARUS_WEATHER_FINE_EVENT', N'The Karus King has cleared the weather.')
INSERT [SERVER_RESOURCE] VALUES (216, N'IDS_KING_KARUS_WEATHER_RAIN_EVENT', N'The Karus King has summoned the rain clouds.')
INSERT [SERVER_RESOURCE] VALUES (217, N'IDS_KING_KARUS_WEATHER_SNOW_EVENT', N'The Karus King has summoned the snow storm.')
INSERT [SERVER_RESOURCE] VALUES (218, N'IDS_KING_ELMO_WEATHER_FINE_EVENT', N'The El Morad King has cleared the weather.')
INSERT [SERVER_RESOURCE] VALUES (219, N'IDS_KING_ELMO_WEATHER_RAIN_EVENT', N'The El Morad King has summoned the rain clouds.')
INSERT [SERVER_RESOURCE] VALUES (220, N'IDS_KING_ELMO_WEATHER_SNOW_EVENT', N'The El Morad King has summoned the snow storm.')
INSERT [SERVER_RESOURCE] VALUES (221, N'IDS_KING_KARUS_NOAH_BONUS_EVENT', N'The Karus King has initiated the %d (percent) increased item drop rate event.')
INSERT [SERVER_RESOURCE] VALUES (222, N'IDS_KING_KARUS_EXP_BONUS_EVENT', N'The Karus King has initiated the %d (percent) increased experience point event.')
INSERT [SERVER_RESOURCE] VALUES (223, N'IDS_KING_ELMO_NOAH_BONUS_EVENT', N'The El Morad King has initiated the %d (percent) increased item drop rate event.')
INSERT [SERVER_RESOURCE] VALUES (224, N'IDS_KING_ELMO_EXP_BONUS_EVENT', N'The El Morad King has initiated the %d (percent) increased experience point event.')
INSERT [SERVER_RESOURCE] VALUES (225, N'IDS_KING_RECOMMEND_REQUEST_MESSAGE', N'User %s can nominate a King. Please nominate a King.')
INSERT [SERVER_RESOURCE] VALUES (226, N'IDS_KING_CANDIDACY_RECOMMEND_MESSAGE', N'%s has nominated %s as a King.')
INSERT [SERVER_RESOURCE] VALUES (227, N'IDS_KING_PERIOD_OF_RECOMMEND_MESSAGE', N'This is a period for nominating a King. Users with nomination rights should nominate a King.')
INSERT [SERVER_RESOURCE] VALUES (228, N'IDS_KING_PERIOD_OF_ELECTION_MESSAGE', N'King election period is on. Users that have not voted yet should vote for a King.')
INSERT [SERVER_RESOURCE] VALUES (229, N'IDS_KING_ELECTION_RESULT_MESSAGE', N'%d(percent) of the vote was won by %s to become a King.')
INSERT [SERVER_RESOURCE] VALUES (230, N'IDS_KING_EXP_BONUS_EVENT_STOP', N'The increased experience point event has ended.')
INSERT [SERVER_RESOURCE] VALUES (231, N'IDS_KING_ITEMDROP_BONUS_EVENT_STOP', N'The increased item drop rate event has ended.')
INSERT [SERVER_RESOURCE] VALUES (232, N'IDS_KING_IMPEACHMENT_REQUEST_MESSAGE', N'Inpeachment Request In Progress')
INSERT [SERVER_RESOURCE] VALUES (233, N'IDS_KING_IMPEACHMENT_PASS_MESSAGE', N'Inpeachment successfull')
INSERT [SERVER_RESOURCE] VALUES (234, N'IDS_KING_IMPEACHMENT_REJECT_MESSAGE', N'Inpeachment has been Rejected')
INSERT [SERVER_RESOURCE] VALUES (235, N'IDS_KING_IMPEACHMENT_ELECTION_MESSAGE', N'Please elect for your Inpeachment')
INSERT [SERVER_RESOURCE] VALUES (236, N'IDS_KING_IMPEACHMENT_ELECTION_YES_RESULT_MESSAGE', N'Inpeachment Election has been accepted')
INSERT [SERVER_RESOURCE] VALUES (237, N'IDS_KING_IMPEACHMENT_ELECTION_NO_RESULT_MESSAGE', N'Inpeachment Election has been Declined')
INSERT [SERVER_RESOURCE] VALUES (238, N'IDS_BEEF_ROAST_START', N'Bifrost event has started!')
INSERT [SERVER_RESOURCE] VALUES (239, N'IDS_BEEF_ROAST_VICTORY_KARUS', N'The Karus warriors have destroyed the monument and can now enter Bifrost!')
INSERT [SERVER_RESOURCE] VALUES (240, N'IDS_BEEF_ROAST_VICTORY_ELMORAD', N'The El Morad warriors have destroyed the monument and can now enter Bifrost!')
INSERT [SERVER_RESOURCE] VALUES (241, N'IDS_BEEF_ROAST_FINISH', N'Bifrost event is now over!')
INSERT [SERVER_RESOURCE] VALUES (242, N'IDS_BEEF_ROAST_DRAW', N'Nobody has won the Bifrost event, it''s a draw!')
INSERT [SERVER_RESOURCE] VALUES (159, N'IDS_BATTLEZONE_STATUS', N'Number of killed Karus users : %d, Number of killed El Morad users : %d')
INSERT [SERVER_RESOURCE] VALUES (160, N'IDS_BANISH_LOSER', N'The users of the defeated nation in Lunar Valley will be teleported back to their native country.')
INSERT [SERVER_RESOURCE] VALUES (161, N'IDS_INFILTRATION', N'The victorious nation can invade the opposite nation.')
INSERT [SERVER_RESOURCE] VALUES (162, N'IDS_UNDER_ATTACK_KARUS', N'Karus is being invaded.')
INSERT [SERVER_RESOURCE] VALUES (163, N'IDS_UNDER_ATTACK_ELMORAD', N'El Morad is being invaded.')
INSERT [SERVER_RESOURCE] VALUES (164, N'IDS_INSERT_KNIGHTS_ALLIANCE', N'The Knights %s has entered the confederacy.')
INSERT [SERVER_RESOURCE] VALUES (165, N'IDS_REMOVE_KNIGHTS_ALLIANCE', N'The Knights %s has left the confederacy.')
INSERT [SERVER_RESOURCE] VALUES (166, N'IDS_PUNISH_KNIGHTS_ALLIANCE', N'The alliance with the Knights %s has been canceled')
INSERT [SERVER_RESOURCE] VALUES (167, N'IDS_PERSONAL_GAME_VICTORY', N'%s has won the fight')
INSERT [SERVER_RESOURCE] VALUES (168, N'IDS_DEATH_ANNOUNCEMENT', N'*** %s has defeated %s ***')
INSERT [SERVER_RESOURCE] VALUES (185, N'IDS_GUARD_TOWER_DEATH_ANNOUNCEMENT', N'*** %s was killed by %s ***')
INSERT [SERVER_RESOURCE] VALUES (177, N'IDS_SIEGE_WAR_TIME_NOTICE', N'There are %d minutes remaining in the war.')
INSERT [SERVER_RESOURCE] VALUES (179, N'IDS_NPC_DESTORY_ARTIFACT', N'Center Artifact has been destroyed')
INSERT [SERVER_RESOURCE] VALUES (180, N'IDS_NPC_DESTORY_ARTIFACT_S1', N'Sentry Artifact has been destroyed')
INSERT [SERVER_RESOURCE] VALUES (181, N'IDS_NPC_DESTORY_ARTIFACT_S2', N'Guard Tower Artifact has been destroyed')
INSERT [SERVER_RESOURCE] VALUES (182, N'IDS_NPC_DESTORY_ARTIFACT_S3', N'Defense Artifact has been destroyed')
INSERT [SERVER_RESOURCE] VALUES (184, N'IDS_NPC_DESTORY_ARTIFACT_S4', N'Shield Artifact has been destroyed')
INSERT [SERVER_RESOURCE] VALUES (186, N'IDS_SIEGE_WAR_VICTORY', N'The clan %s is victorious!')
INSERT [SERVER_RESOURCE] VALUES (187, N'IDS_MONEY_REPAY_EVENT', N'Coin event has started. You will earn an additional %d percent of coins for killing mobs.')
INSERT [SERVER_RESOURCE] VALUES (188, N'IDS_PRE_BATTLE_ANNOUNCEMENT', N'There are 5 minutes remaining until the war commences.')
INSERT [SERVER_RESOURCE] VALUES (189, N'IDS_INFILTRATION_CONQUER', N'%s has been overrun')
INSERT [SERVER_RESOURCE] VALUES (190, N'IDS_INFILTRATION_RECAPTURE', N'%s has been captured')
INSERT [SERVER_RESOURCE] VALUES (191, N'IDS_INFILTRATION_REWARD_KARUS', N'%s has blessed the Karus warriors')
INSERT [SERVER_RESOURCE] VALUES (192, N'IDS_INFILTRATION_REWARD_ELMORAD', N'%s has blessed the El Morad warriors')
INSERT [SERVER_RESOURCE] VALUES (193, N'IDS_SERVER_AUTO_DOWN', N'The server will shutdown after %d minutes.')
INSERT [SERVER_RESOURCE] VALUES (194, N'IDS_NPC_DESTORY_ARTIFACT_CLAN', N'%s clan has destroyed the Center Artifact.')
INSERT [SERVER_RESOURCE] VALUES (195, N'IDS_ASSAULT_EVENT_START', N'We''re under attack by monsters. Please save the World from the monsters!!')
INSERT [SERVER_RESOURCE] VALUES (196, N'IDS_ASSAULT_EVENT_END', N'The monsters have stopped. The World is safe now.')
INSERT [SERVER_RESOURCE] VALUES (197, N'IDS_EXP_REPAY_EVENT', N'Experience point event Started. You will Earn %d Percent of Experience for killing Mobs.')
INSERT [SERVER_RESOURCE] VALUES (198, N'IDS_MONSTER_CHALLENGE_ANNOUNCEMENT', N'The Forgotten Temple Event will start at %d for levels %d~%d')
INSERT [SERVER_RESOURCE] VALUES (199, N'IDS_MONSTER_CHALLENGE_OPEN', N'The gate to the Forgotten Temple is now open.')
INSERT [SERVER_RESOURCE] VALUES (200, N'IDS_MONSTER_CHALLENGE_START', N'The Monsters are appearing, Get ready!!!')
INSERT [SERVER_RESOURCE] VALUES (201, N'IDS_MONSTER_CHALLENGE_VICTORY', N'You have eliminated all the monsters in the temple. You''ve received the treasure chest.')
INSERT [SERVER_RESOURCE] VALUES (202, N'IDS_MONSTER_CHALLENGE_CLOSE', N'Forgotten Temple is now over. Users remaining in the Forgotten Temple zone will be Teleported out.')
INSERT [SERVER_RESOURCE] VALUES (203, N'IDS_MID_LEVEL_BATTLEZONE_OPEN', N'Dark Lunar Gate is now open. The war has begun.')
INSERT [SERVER_RESOURCE] VALUES (204, N'IDS_KING_RECOMMEND_TIME', N'Please nominate a King.')
INSERT [SERVER_RESOURCE] VALUES (205, N'IDS_KING_RECOMMEND_FINISH_TIME', N'The period for nomination has ended.')
INSERT [SERVER_RESOURCE] VALUES (206, N'IDS_KING_ELECTION_TIME', N'Election is in progress for selecting a King.')
INSERT [SERVER_RESOURCE] VALUES (207, N'IDS_KING_IMPEACHMENT_REQUEST_TIME', N'A request for an impeachment of King has been made.')
INSERT [SERVER_RESOURCE] VALUES (103, N'IDP_SOCKETS_INIT_FAILED', N'Failed initializing Windows socket')
INSERT [SERVER_RESOURCE] VALUES (105, N'IDP_BATTLEZONE_OPEN', N'Lunar Gate is now open.  The War has begun.')
INSERT [SERVER_RESOURCE] VALUES (106, N'IDP_KARUS_VICTORY', N'Karus is victorious. They killed %d warriors and lost %d warriors')
INSERT [SERVER_RESOURCE] VALUES (108, N'IDP_KARUS_BANISH', N'El Morad warriors in the battle zone have been banned!')
INSERT [SERVER_RESOURCE] VALUES (109, N'IDP_ELMORAD_BANISH', N'Karus warriors in the battle zone have been banned!')
INSERT [SERVER_RESOURCE] VALUES (110, N'IDP_KNIGHT_NAME_REPEAT', N'This Knights name already exist.')
INSERT [SERVER_RESOURCE] VALUES (111, N'IDP_KNIGHT_ALREADY_REGISTERED', N'You are already in a Knights')
INSERT [SERVER_RESOURCE] VALUES (112, N'IDP_KNIGHT_INSUFFICIENT_LEVEL', N'You need to be at least at Level 20 in order to create a Knights')
INSERT [SERVER_RESOURCE] VALUES (113, N'IDP_KNIGHT_INSUFFICIENT_LOYALTY', N'You need to have at least 800 National Points in order to create a Knights')
INSERT [SERVER_RESOURCE] VALUES (107, N'IDP_ELMORAD_VICTORY', N'El Morad is victorious. They killed %d warriors and lost %d warriors')
INSERT [SERVER_RESOURCE] VALUES (156, N'IDS_SNOWBATTLE_OPEN', N'The Snow Fight Zone is now open')
INSERT [SERVER_RESOURCE] VALUES (157, N'IDS_SNOWBATTLE_CLOSE', N'The Snow Fight Zone is now closed')
INSERT [SERVER_RESOURCE] VALUES (208, N'IDS_KING_IMPEACHMENT_ELECTION_TIME', N'election in progress for impeaching a King.')
INSERT [SERVER_RESOURCE] VALUES (209, N'IDS_KING_REIGN_TIME', N'A new King has been appointed.')
INSERT [SERVER_RESOURCE] VALUES (210, N'IDS_KING_KARUS_PRIZE_EVENT_MESSAGE', N'The Karus King has awarded %s %d coins as a reward.')
INSERT [SERVER_RESOURCE] VALUES (211, N'IDS_KING_KARUS_FUGITIVE_EVENT_MESSAGE_1', N'The Karus King has awarded %s %d coins as a reward.')
INSERT [SERVER_RESOURCE] VALUES (212, N'IDS_KING_FUGITIVE_EVENT_MESSAGE_2', N'%s killed %s and received %d coins as a reward.')
INSERT [SERVER_RESOURCE] VALUES (213, N'IDS_KING_ELMO_PRIZE_EVENT_MESSAGE', N'The ElMorad King has awarded %s %d coins as a reward.')
INSERT [SERVER_RESOURCE] VALUES (178, N'IDS_NPC_GUIDON_DESTORY', N'The base of the Knights %s has been destroyed.')
INSERT [SERVER_RESOURCE] VALUES (114, N'IDP_KNIGHT_INSUFFICIENT_SKILL', N'You need to have at least 10 Leadership skill points and 5 Manner skill points in order to create a')
INSERT [SERVER_RESOURCE] VALUES (115, N'IDP_KNIGHT_INSUFFICIENT_CHARISMA', N'You need to have at least 120 Attractactiveness skill points in order to create a Knights')
INSERT [SERVER_RESOURCE] VALUES (116, N'IDP_KNIGHT_INSUFFICIENT_GOLD', N'You need to have at least 1,000,000 Coins in order to create a Knights')
INSERT [SERVER_RESOURCE] VALUES (117, N'IDP_KNIGHT_CREATE_FAIL', N'You have failed creating a Knights')
INSERT [SERVER_RESOURCE] VALUES (118, N'IDP_KNIGHT_NOT_AVAILABLE', N'This Knights does not exist')
INSERT [SERVER_RESOURCE] VALUES (119, N'IDP_KNIGHT_LEADER_ONLY', N'This is authorized for Head of Knights only.')
INSERT [SERVER_RESOURCE] VALUES (120, N'IDP_KNIGHT_MINIMUM_SUBLEADER', N'This is authorized for ranks higher than Vice Head of Knights only.')
INSERT [SERVER_RESOURCE] VALUES (121, N'IDP_KNIGHT_NOT_REGISTERED', N'Not Register Knights')
INSERT [SERVER_RESOURCE] VALUES (122, N'IDP_KNIGHT_DB_FAIL', N'Failed Update DB with Knights')
INSERT [SERVER_RESOURCE] VALUES (123, N'IDP_WRONG_ID', N'This ID does not exist')
INSERT [SERVER_RESOURCE] VALUES (124, N'IDP_SOURCE_UNABLE', N'Source Unable')
INSERT [SERVER_RESOURCE] VALUES (125, N'IDP_MINIMUM_OFFICER', N'This is authorized for ranks higher than officer')
GO
INSERT [SERVER_RESOURCE] VALUES (126, N'IDP_ANNOUNCEMENT', N'#### NOTICE : %s ####')
INSERT [SERVER_RESOURCE] VALUES (130, N'IDS_ELMORAD_LOSER', N'El Morad have lost the war. They killed [%d] warriors and lost [%d] warriors')
INSERT [SERVER_RESOURCE] VALUES (131, N'IDS_KARUS_LOSER', N'Karus have lost the war. They killed [%d] warriors and lost [%d] warriors')
INSERT [SERVER_RESOURCE] VALUES (132, N'IDS_BANISH_USER', N'Users in the Lunar Valley and the enemy’s territory will be teleported back to their own Nations.')
INSERT [SERVER_RESOURCE] VALUES (133, N'IDS_BATTLE_CLOSE', N'Lunar Gate is closing.')
INSERT [SERVER_RESOURCE] VALUES (134, N'IDS_KILL_GATEKEEPER', N'The user that killed the enemy’s gatekeeper is [%s][%s]. Congratulations!!')
INSERT [SERVER_RESOURCE] VALUES (135, N'IDS_KILL_CAPTAIN', N'The user that killed the enemy’s captain is [%s][%s]. Congratulations!!')
INSERT [SERVER_RESOURCE] VALUES (136, N'IDS_KILL_KARUS_GUARD1', N'The sentry at the 1st Karus fortress has been killed. The user that killed the sentry is [%s][%s]')
INSERT [SERVER_RESOURCE] VALUES (137, N'IDS_KILL_KARUS_GUARD2', N'The sentry at the 2nd Karus fortress has been killed. The user that killed the sentry is [%s][%s]')
INSERT [SERVER_RESOURCE] VALUES (138, N'IDS_KILL_ELMO_GUARD1', N'The sentry at the 1st El Morad fortress has been killed. The user that killed the sentry is [%s][%s]')
INSERT [SERVER_RESOURCE] VALUES (139, N'IDS_KILL_ELMO_GUARD2', N'The sentry at the 2nd El Morad fortress has been killed. The user that killed the sentry is [%s][%s]')
INSERT [SERVER_RESOURCE] VALUES (140, N'IDS_KARUS_CAPTAIN', N'The captain(s) for Karus is(are) %s, %s, %s, %s, %s')
INSERT [SERVER_RESOURCE] VALUES (141, N'IDS_ELMO_CAPTAIN', N'The captain(s) for El Morad is(are) %s, %s, %s, %s, %s')
INSERT [SERVER_RESOURCE] VALUES (142, N'IDS_KARUS_CAPTAIN_DEPRIVE', N'[%s][%s], the captain for Karus has been killed')
INSERT [SERVER_RESOURCE] VALUES (143, N'IDS_ELMO_CAPTAIN_DEPRIVE', N'[%s][%s], the captain for El Morad has been killed')
INSERT [SERVER_RESOURCE] VALUES (144, N'IDS_COUPON_NOTEPAD_ID', N'3572-8471-3720-2495')
INSERT [SERVER_RESOURCE] VALUES (145, N'IDS_COUPON_POSTIT_ID', N'7352-6539-3720-2495')
INSERT [SERVER_RESOURCE] VALUES (146, N'IDS_KNIGHTS_JOIN', N'#### %s has joined. ####')
INSERT [SERVER_RESOURCE] VALUES (147, N'IDS_KNIGHTS_WITHDRAW', N'#### %s has left. ####')
INSERT [SERVER_RESOURCE] VALUES (148, N'IDS_KNIGHTS_REMOVE', N'#### %s has been banned. ####')
INSERT [SERVER_RESOURCE] VALUES (149, N'IDS_KNIGHTS_CHIEF', N'#### %s has been appointed as a leader. ####')
INSERT [SERVER_RESOURCE] VALUES (150, N'IDS_KNIGHTS_VICECHIEF', N'#### %s has been appointed as a co-leader. ####')
INSERT [SERVER_RESOURCE] VALUES (151, N'IDS_KNIGHTS_DESTROY', N'#### the knights %s has disbanded ####')
INSERT [SERVER_RESOURCE] VALUES (152, N'IDS_CLAN_DESTORY', N'#### the clan %s has disbanded ####')
INSERT [SERVER_RESOURCE] VALUES (153, N'IDS_CLANGAME_VICTORY', N'The Clan %s has won the clan duel.')
INSERT [SERVER_RESOURCE] VALUES (154, N'IDS_CLANGAME_JOIN', N'*** %s(Lv %d)has entered the Arena Lobby ***')
INSERT [SERVER_RESOURCE] VALUES (155, N'IDS_CLANGAME_EXIT', N'*** %s(Lv %d)has left ***')
INSERT [SERVER_RESOURCE] VALUES (158, N'IDS_SNOWBATTLE_BANISH_USER', N'The users in the Snow Fight Zone will be teleported back to their native country.')
INSERT [SERVER_RESOURCE] VALUES (169, N'IDS_SIEGE_WAR_READY_TIME', N'Castle Siege War is about to begin. The designated Knights should enter the Castle Siege War zone.')
INSERT [SERVER_RESOURCE] VALUES (170, N'IDS_SIEGE_WAR_BASE_TIME', N'This is a time for building your base. Please build your base.')
INSERT [SERVER_RESOURCE] VALUES (171, N'IDS_SIEGE_WAR_START', N'The Castle Siege War has begun!')
INSERT [SERVER_RESOURCE] VALUES (172, N'IDS_SIEGE_WAR_END', N'The Castle Siege War has ended!')
INSERT [SERVER_RESOURCE] VALUES (173, N'IDS_SIEGE_WAR_READY_TIME_NOTICE', N'There are %d minutes remaining until the Castle Siege War. Knights should enter the CSW now.')
INSERT [SERVER_RESOURCE] VALUES (174, N'IDS_CHALLENGER_REQUEST_START_NOTICE', N'We are currently accepting challengers for Castle Siege War. Location Moradon : 351,400')
INSERT [SERVER_RESOURCE] VALUES (175, N'IDS_CHALLENGER_REQUEST_END_NOTICE', N'The registration period for Castle Siege War has now ended.')
GO
