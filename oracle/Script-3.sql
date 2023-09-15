SELECT * FROM tblexam e
	INNER JOIN tblexamscore es
		ON e.exam_seq = es.exam_seq
	INNER JOIN tblstudent s
		ON s.student_seq = es.student_seq
--	WHERE s.student_seq IN(460,470)
	WHERE TO_char(e.examdate, 'yyyy-mm-dd') > '2023-09-15'
	ORDER BY e.examdate;
	
UPDATE tblexamscore SET examscore = NULL 
	WHERE examscore_seq  ;