CREATE TABLE institutes ( 
id SERIAL PRIMARY KEY ,
name VARCHAR(1024) NOT NULL
);

CREATE TABLE groups ( 
id SERIAL PRIMARY KEY, 
name VARCHAR(2048) NOT NULL,
short_name VARCHAR(64) NOT NULL UNIQUE,
year INT,
intitute_id INT NOT NULL);

CREATE TABLE students (
id SERIAL PRIMARY KEY,
surname VARCHAR(512) NOT NULL,
name VARCHAR(512) NOT NULL,
father_name VARCHAR(512),
group_id INT NOT NULL);

INSERT INTO institutes (NAME) VALUES('Институт математики и информатики');
INSERT INTO groups (name, short_name, year, intitute_id ) 
VALUES('Информатика и вычислительная техника', 'Б-ИВТ-25-1','2025','1'),
('Информатика и вычислительная техника', 'Б-ИВТ-25-2', '2025', '2'),
('Фундаментальная информатика и информационные технологи', 'Б-ФИИТ-25', '2025', '3'),
('Прикладная информатика', 'Б-ПИ-25-1', '2025', '4');
INSERT INTO students (id, surname, name, father_name, group_id)
VALUES ('12', 'АММОСОВА', 'ДАЙААНА', NULL, '1'),
('13', 'Керемясов', 'Александр', NULL, '1'),
('14', 'Бояров', 'Максим', NULL, '1'),
('15', 'Ермолаев', 'Айсен', NULL, '1');
SELECT * FROM students;
SELECT * FROM institutes;
SELECT * FROM groups;
