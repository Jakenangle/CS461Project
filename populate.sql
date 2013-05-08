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
