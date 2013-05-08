USE `nang4839`;

INSERT INTO Professor (`name`) VALUE ('Professor Test');
INSERT INTO Professor (`name`) VALUE ('Professor Awesome');
INSERT INTO Professor (`name`) VALUE ('Professor Professorson');

INSERT INTO Class (`letterCode`, `number`, `name`) VALUES ('CS', '461', 'Database Systems');
INSERT INTO Class (`letterCode`, `number`, `name`) VALUES ('Hist', '354', 'Conspiracy Theories in US History');
INSERT INTO Class (`letterCode`, `number`, `name`) VALUES ('Test', '563', 'Testing of tests');
INSERT INTO Class (`letterCode`, `number`, `name`) VALUES ('CS', '324', 'The Class in the Language You Don\'t Know');

INSERT INTO Professor_has_Class (`Class_idClass`, `Professor_idProfessor`) 
	SELECT Class.idClass, Professor.idProfessor
	FROM Professor JOIN Class
	WHERE 	Professor.name = 'Professor Test' AND
			Class.name = 'Testing of tests';

INSERT INTO Professor_has_Class (`Class_idClass`, `Professor_idProfessor`) 
	SELECT Class.idClass, Professor.idProfessor
	FROM Professor JOIN Class
	WHERE 	Professor.name = 'Professor Awesome' AND
			Class.name = 'Testing of tests';

INSERT INTO Professor_has_Class (`Class_idClass`, `Professor_idProfessor`) 
	SELECT Class.idClass, Professor.idProfessor
	FROM Professor JOIN Class
	WHERE 	Professor.name = 'Professor Professorson' AND
			Class.name = 'Conspiracy Theories in US History';


INSERT INTO Professor_has_Class (`Class_idClass`, `Professor_idProfessor`) 
	SELECT Class.idClass, Professor.idProfessor
	FROM Professor JOIN Class
	WHERE 	Professor.name = 'Professor Awesome' AND
			Class.name = 'The Class in the Language You Don\'t Know';

INSERT INTO Professor_has_Class (`Class_idClass`, `Professor_idProfessor`) 
	SELECT Class.idClass, Professor.idProfessor
	FROM Professor JOIN Class
	WHERE 	Professor.name = 'Professor Awesome' AND
			Class.name = 'Database Systems';

INSERT INTO TagList (tagName) VALUE ('Useless');
INSERT INTO TagList (tagName) VALUE ('Sample Test');
INSERT INTO TagList (tagName) VALUE ('Sample Paper');
INSERT INTO TagList (tagName) VALUE ('Why or why did I think this was a good idea?');

INSERT INTO Crib (name, filePath) VALUES ('Test Crib Name', 'path/to/test/crib');
INSERT INTO Crib (name, filePath) VALUES ('Conspiracy Crib', 'path/to/Conspiracy/crib');
INSERT INTO Crib (name, filePath) VALUES ('Langauge Crib', 'path/to/Language/crib');
INSERT INTO Crib (name, filePath) VALUES ('Testing Crib', 'path/to/Testing/crib');
INSERT INTO Crib (name, filePath) VALUES ('Demo Test', 'path/to/Demo Test/crib');
INSERT INTO Crib (name, filePath) VALUES ('Demo Language', 'path/to/Demo Language/crib');
INSERT INTO Crib (name, filePath) VALUES ('This is not a crib conspiracy', 'path/to/not a crib conspiracy/crib');

