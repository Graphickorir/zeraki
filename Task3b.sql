SELECT institution.name, Course.name, Count(student.studentid)
FROM ((institution
INNER JOIN course ON institution.institutionid = course.institution)
INNER JOIN student ON course.courseid = student.course);