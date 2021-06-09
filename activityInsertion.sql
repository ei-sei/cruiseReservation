--Activity table insertion
--theatre
INSERT INTO Activities(ActivityID, Theatre)
VALUES (1100, 'Cats');

INSERT INTO Activities(ActivityID, Theatre)
VALUES (1200, 'Les Miserables');

INSERT INTO Activities(ActivityID, Theatre)
VALUES (1300, 'Paddington');

--music
INSERT INTO Activities(ActivityID, Music)
VALUES (1010,'classical music');

INSERT INTO Activities(ActivityID, Music)
VALUES (1020,'Contemporary music');

INSERT INTO Activities(ActivityID, Music)
VALUES (1030,'Opera');

--fitness
INSERT INTO Activities(ActivityID, FitnessActivity)
VALUES (1001, 'Swimming');

INSERT INTO Activities(ActivityID, FitnessActivity)
VALUES (1002, 'Yoga');

INSERT INTO Activities(ActivityID, FitnessActivity)
VALUES (1003, 'Pilates');

INSERT INTO Activities(ActivityID, FitnessActivity)
VALUES (1004, 'Tai-Chi');

INSERT INTO Activities(ActivityID, FitnessActivity)
VALUES (1005, 'Walking');

INSERT INTO Activities(ActivityID, FitnessActivity)
VALUES (1006, 'Jogging');


--combos
INSERT INTO Activities(ActivityID, theatre, Music, FitnessActivity)
VALUES (1111, 'Cats', 'classical music', 'Swimming');

INSERT INTO Activities(ActivityID, theatre, Music, FitnessActivity)
VALUES (1123, 'Cats', 'Contemporary Music', 'Pilates');

INSERT INTO Activities(ActivityID, theatre, Music, FitnessActivity)
VALUES (1324, 'Paddington', 'Contemporary Music', 'Tai-Chi');

INSERT INTO Activities(ActivityID, theatre, Music, FitnessActivity)
VALUES (1125, 'Cats', 'Contemporary Music', 'Walking');

INSERT INTO Activities(ActivityID, theatre, Music, FitnessActivity)
VALUES (1226, 'les miserable', 'Opera', 'Jogging');

INSERT INTO Activities(ActivityID, theatre, Music, FitnessActivity)
VALUES (1316, 'Paddington', 'Classical Music', 'Jogging');

INSERT INTO Activities(ActivityID, theatre, Music, FitnessActivity)
VALUES (1135, 'Cats', 'Opera', 'Walking');

INSERT INTO Activities(ActivityID, theatre, Music, FitnessActivity)
VALUES (1236, 'les miserable', 'Opera', 'Jogging');