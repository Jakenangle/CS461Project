USE `nang4839`;

INSERT INTO Professor (`name`) VALUE ('Professor Test');
INSERT INTO Professor (`name`) VALUE ('Professor Awesome');
INSERT INTO Professor (`name`) VALUE ('Professor Professorson');


INSERT INTO Class (`letterCode`, `number`, `name`) VALUES ('CS', '461', 'Database Systems');
INSERT INTO Class (`letterCode`, `number`, `name`) VALUES ('Hist', '354', 'Conspiracy Theories in US History');
INSERT INTO Class (`letterCode`, `number`, `name`) VALUES ('Test', '563', 'Testing of Tests');
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
			Class.name = 'Testing of Tests';

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
INSERT INTO TagList (tagName) VALUE ('Why oh why did I think this was a good idea?');


INSERT INTO Crib (name, filePath, Professor_idProfessor, Class_idClass) 
	SELECT 'Test Crib Name', 'path/to/test/crib', Professor.idProfessor, Class.idClass
	FROM Professor JOIN Class
	WHERE Professor.name = 'Professor Test' AND Class.name = 'Testing of Tests';

INSERT INTO Crib (name, filePath, Professor_idProfessor, Class_idClass)  
	SELECT 'Conspiracy Crib', 'path/to/Conspiracy/crib', Professor.idProfessor, Class.idClass
	FROM Professor JOIN Class
	WHERE Professor.name = 'Professor Professorson' AND Class.Name = 'Conspiracy Theories in US History';

INSERT INTO Crib (name, filePath, Professor_idProfessor, Class_idClass)  
	SELECT 'Langauge Crib', 'path/to/Language/crib', Professor.idProfessor, Class.idClass
	FROM Professor JOIN Class
	WHERE Professor.name = 'Professor Awesome' AND Class.name = 'The Class in the Language You Don\'t Know';;

INSERT INTO Crib (name, filePath, Professor_idProfessor, Class_idClass) 
	SELECT 'Testing Crib', 'path/to/Testing/crib', Professor.idProfessor, Class.idClass
	FROM Professor JOIN Class
	WHERE Professor.name = 'Professor Test' AND Class.name = 'Testing of Tests';

INSERT INTO Crib (name, filePath, Professor_idProfessor, Class_idClass) 
	SELECT 'Demo Test', 'path/to/Demo Test/crib', Professor.idProfessor, Class.idClass
	FROM Professor JOIN Class
	WHERE Professor.name = 'Professor Test' AND Class.name = 'Testing of Tests';

INSERT INTO Crib (name, filePath, Professor_idProfessor, Class_idClass) 
	SELECT 'Demo Language', 'path/to/Demo Language/crib', Professor.idProfessor, Class.idClass
	FROM Professor JOIN Class
	WHERE Professor.name = 'Professor Awesome' AND Class.name = 'The Class in the Language You Don\'t Know';

INSERT INTO Crib (name, filePath, Professor_idProfessor, Class_idClass) 
	SELECT 'This is not a crib conspiracy', 'path/to/not a crib conspiracy/crib', Professor.idProfessor, Class.idClass
	FROM Professor JOIN Class
	WHERE Professor.name = 'Professor Professorson' AND Class.Name = 'Conspiracy Theories in US History';


INSERT INTO Crib_has_Tag (Crib_idCrib, TagList_idTagList)
	SELECT Crib.idCrib, TagList.idTagList
	FROM Crib JOIN TagList
	WHERE 	Crib.name = 'Test Crib Name' AND
			TagList.tagName = 'Useless';

INSERT INTO Crib_has_Tag (Crib_idCrib, TagList_idTagList)
	SELECT Crib.idCrib, TagList.idTagList
	FROM Crib JOIN TagList
	WHERE 	Crib.name = 'Conspiracy Crib' AND
			TagList.tagName = 'Sample Test';

INSERT INTO Crib_has_Tag (Crib_idCrib, TagList_idTagList)
	SELECT Crib.idCrib, TagList.idTagList
	FROM Crib JOIN TagList
	WHERE 	Crib.name = 'Demo Language' AND
			TagList.tagName = 'Sample Paper';

INSERT INTO Crib_has_Tag (Crib_idCrib, TagList_idTagList)
	SELECT Crib.idCrib, TagList.idTagList
	FROM Crib JOIN TagList
	WHERE 	Crib.name = 'Langauge Crib' AND
			TagList.tagName = 'Sample Test';

INSERT INTO Crib_has_Tag (Crib_idCrib, TagList_idTagList)
	SELECT Crib.idCrib, TagList.idTagList
	FROM Crib JOIN TagList
	WHERE 	Crib.name = 'This is not a crib conspiracy' AND
			TagList.tagName = 'Why oh why did I think this was a good idea?';