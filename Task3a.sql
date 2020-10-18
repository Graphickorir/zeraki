CREATE DATABASE education;

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `institution` int(11) NOT NULL
);

CREATE TABLE `institution` (
  `institutionid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
);

CREATE TABLE `students` (
  `studentid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `course` int(11) NOT NULL
);

ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`),
  ADD UNIQUE KEY `institution` (`institution`),
  ADD KEY `institution_2` (`institution`);

ALTER TABLE `institution`
  ADD PRIMARY KEY (`institutionid`);

ALTER TABLE `students`
  ADD PRIMARY KEY (`studentid`),
  ADD UNIQUE KEY `course` (`course`),
  ADD KEY `course_2` (`course`);

ALTER TABLE `course`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `institution`
  MODIFY `institutionid` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `students`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`institution`) REFERENCES `institution` (`institutionid`);

ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`course`) REFERENCES `course` (`courseid`);