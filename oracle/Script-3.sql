DROP SEQUENCE seqCourseSubject;
DELETE FROM tblCourseSubject;
CREATE SEQUENCE seqCourseSubject;
INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 1, 1, to_date('2022/02/14', 'RRRR-MM-DD'), to_date('2022/03/01', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 2, 1, to_date('2022/03/02', 'RRRR-MM-DD'), to_date('2022/03/19', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 3, 1, to_date('2022/03/20', 'RRRR-MM-DD'), to_date('2022/04/05', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 4, 1, to_date('2022/04/06', 'RRRR-MM-DD'), to_date('2022/04/23', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 5, 1, to_date('2022/04/24', 'RRRR-MM-DD'), to_date('2022/05/09', 'RRRR-MM-DD'), 5);
SELECT * FROM tblCourseSubject;
COMMIT;
INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 11, 1, to_date('2022/05/10', 'RRRR-MM-DD'), to_date('2022/05/27', 'RRRR-MM-DD'), 10);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 12, 1, to_date('2022/05/28', 'RRRR-MM-DD'), to_date('2022/06/13', 'RRRR-MM-DD'), 11);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 13, 1, to_date('2022/06/14', 'RRRR-MM-DD'), to_date('2022/07/01', 'RRRR-MM-DD'), 12);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 14, 1, to_date('2022/07/02', 'RRRR-MM-DD'), to_date('2022/07/18', 'RRRR-MM-DD'), 13);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 15, 1, to_date('2022/07/19', 'RRRR-MM-DD'), to_date('2022/07/29', 'RRRR-MM-DD'), 14);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 31, 2, to_date('2022/03/16', 'RRRR-MM-DD'), to_date('2022/03/31', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 32, 2, to_date('2022/04/01', 'RRRR-MM-DD'), to_date('2022/04/16', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 33, 2, to_date('2022/04/17', 'RRRR-MM-DD'), to_date('2022/05/03', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 34, 2, to_date('2022/05/04', 'RRRR-MM-DD'), to_date('2022/05/20', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 35, 2, to_date('2022/05/21', 'RRRR-MM-DD'), to_date('2022/06/06', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 41, 2, to_date('2022/06/07', 'RRRR-MM-DD'), to_date('2022/06/23', 'RRRR-MM-DD'), 10);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 42, 2, to_date('2022/06/24', 'RRRR-MM-DD'), to_date('2022/07/10', 'RRRR-MM-DD'), 11);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 43, 2, to_date('2022/07/11', 'RRRR-MM-DD'), to_date('2022/07/27', 'RRRR-MM-DD'), 12);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 44, 2, to_date('2022/07/28', 'RRRR-MM-DD'), to_date('2022/08/13', 'RRRR-MM-DD'), 13);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 45, 2, to_date('2022/08/14', 'RRRR-MM-DD'), to_date('2022/08/31', 'RRRR-MM-DD'), 14);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 61, 3, to_date('2022/05/16', 'RRRR-MM-DD'), to_date('2022/06/02', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 62, 3, to_date('2022/06/03', 'RRRR-MM-DD'), to_date('2022/06/20', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 63, 3, to_date('2022/06/21', 'RRRR-MM-DD'), to_date('2022/07/08', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 64, 3, to_date('2022/07/09', 'RRRR-MM-DD'), to_date('2022/07/26', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 65, 3, to_date('2022/07/27', 'RRRR-MM-DD'), to_date('2022/08/13', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 71, 3, to_date('2022/08/14', 'RRRR-MM-DD'), to_date('2022/09/01', 'RRRR-MM-DD'), 10);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 72, 3, to_date('2022/09/02', 'RRRR-MM-DD'), to_date('2022/09/20', 'RRRR-MM-DD'), 11);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 73, 3, to_date('2022/09/21', 'RRRR-MM-DD'), to_date('2022/10/09', 'RRRR-MM-DD'), 12);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 74, 3, to_date('2022/10/10', 'RRRR-MM-DD'), to_date('2022/10/28', 'RRRR-MM-DD'), 13);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 75, 3, to_date('2022/10/29', 'RRRR-MM-DD'), to_date('2022/11/16', 'RRRR-MM-DD'), 14);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 91, 4, to_date('2022/06/23', 'RRRR-MM-DD'), to_date('2022/07/10', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 92, 4, to_date('2022/07/11', 'RRRR-MM-DD'), to_date('2022/07/28', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 93, 4, to_date('2022/07/29', 'RRRR-MM-DD'), to_date('2022/08/15', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 94, 4, to_date('2022/08/16', 'RRRR-MM-DD'), to_date('2022/09/02', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 95, 4, to_date('2022/09/03', 'RRRR-MM-DD'), to_date('2022/09/20', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 101, 4, to_date('2022/09/21', 'RRRR-MM-DD'), to_date('2022/10/08', 'RRRR-MM-DD'), 10);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 102, 4, to_date('2022/10/09', 'RRRR-MM-DD'), to_date('2022/10/27', 'RRRR-MM-DD'), 11);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 103, 4, to_date('2022/10/28', 'RRRR-MM-DD'), to_date('2022/11/15', 'RRRR-MM-DD'), 12);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 104, 4, to_date('2022/11/16', 'RRRR-MM-DD'), to_date('2022/12/04', 'RRRR-MM-DD'), 13);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 105, 4, to_date('2022/12/05', 'RRRR-MM-DD'), to_date('2022/12/23', 'RRRR-MM-DD'), 14);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 121, 5, to_date('2022/05/30', 'RRRR-MM-DD'), to_date('2022/06/19', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 122, 5, to_date('2022/06/20', 'RRRR-MM-DD'), to_date('2022/07/10', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 123, 5, to_date('2022/07/11', 'RRRR-MM-DD'), to_date('2022/07/31', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 124, 5, to_date('2022/08/01', 'RRRR-MM-DD'), to_date('2022/08/21', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 125, 5, to_date('2022/08/22', 'RRRR-MM-DD'), to_date('2022/09/11', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 131, 5, to_date('2022/09/12', 'RRRR-MM-DD'), to_date('2022/10/03', 'RRRR-MM-DD'), 10);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 132, 5, to_date('2022/10/04', 'RRRR-MM-DD'), to_date('2022/10/25', 'RRRR-MM-DD'), 11);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 133, 5, to_date('2022/10/26', 'RRRR-MM-DD'), to_date('2022/11/16', 'RRRR-MM-DD'), 12);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 134, 5, to_date('2022/11/17', 'RRRR-MM-DD'), to_date('2022/12/08', 'RRRR-MM-DD'), 13);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 135, 5, to_date('2022/12/09', 'RRRR-MM-DD'), to_date('2022/12/30', 'RRRR-MM-DD'), 14);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 151, 6, to_date('2022/07/01', 'RRRR-MM-DD'), to_date('2022/07/21', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 152, 6, to_date('2022/07/22', 'RRRR-MM-DD'), to_date('2022/08/11', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 153, 6, to_date('2022/08/12', 'RRRR-MM-DD'), to_date('2022/09/01', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 154, 6, to_date('2022/09/02', 'RRRR-MM-DD'), to_date('2022/09/22', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 155, 6, to_date('2022/09/23', 'RRRR-MM-DD'), to_date('2022/10/13', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 161, 6, to_date('2022/10/14', 'RRRR-MM-DD'), to_date('2022/11/04', 'RRRR-MM-DD'), 10);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 162, 6, to_date('2022/11/05', 'RRRR-MM-DD'), to_date('2022/11/26', 'RRRR-MM-DD'), 11);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 163, 6, to_date('2022/11/27', 'RRRR-MM-DD'), to_date('2022/12/18', 'RRRR-MM-DD'), 12);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 164, 6, to_date('2022/12/19', 'RRRR-MM-DD'), to_date('2023/01/09', 'RRRR-MM-DD'), 13);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 165, 6, to_date('2023/01/10', 'RRRR-MM-DD'), to_date('2023/01/31', 'RRRR-MM-DD'), 14);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 181, 7, to_date('2022/08/05', 'RRRR-MM-DD'), to_date('2022/08/25', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 182, 7, to_date('2022/08/26', 'RRRR-MM-DD'), to_date('2022/09/15', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 183, 7, to_date('2022/09/16', 'RRRR-MM-DD'), to_date('2022/10/06', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 184, 7, to_date('2022/10/07', 'RRRR-MM-DD'), to_date('2022/10/27', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 185, 7, to_date('2022/10/28', 'RRRR-MM-DD'), to_date('2022/11/17', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 196, 7, to_date('2022/11/18', 'RRRR-MM-DD'), to_date('2022/12/09', 'RRRR-MM-DD'), 15);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 197, 7, to_date('2022/12/10', 'RRRR-MM-DD'), to_date('2022/12/31', 'RRRR-MM-DD'), 16);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 198, 7, to_date('2023/01/01', 'RRRR-MM-DD'), to_date('2023/01/22', 'RRRR-MM-DD'), 17);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 199, 7, to_date('2023/01/23', 'RRRR-MM-DD'), to_date('2023/02/13', 'RRRR-MM-DD'), 18);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 200, 7, to_date('2023/02/14', 'RRRR-MM-DD'), to_date('2023/03/07', 'RRRR-MM-DD'), 19);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 211, 8, to_date('2022/09/07', 'RRRR-MM-DD'), to_date('2022/09/27', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 212, 8, to_date('2022/09/28', 'RRRR-MM-DD'), to_date('2022/10/18', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 213, 8, to_date('2022/10/19', 'RRRR-MM-DD'), to_date('2022/11/08', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 214, 8, to_date('2022/11/09', 'RRRR-MM-DD'), to_date('2022/11/29', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 215, 8, to_date('2022/11/30', 'RRRR-MM-DD'), to_date('2022/12/20', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 226, 8, to_date('2022/12/21', 'RRRR-MM-DD'), to_date('2023/01/10', 'RRRR-MM-DD'), 15);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 227, 8, to_date('2023/01/11', 'RRRR-MM-DD'), to_date('2023/01/31', 'RRRR-MM-DD'), 16);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 228, 8, to_date('2023/02/01', 'RRRR-MM-DD'), to_date('2023/02/22', 'RRRR-MM-DD'), 17);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 229, 8, to_date('2023/02/23', 'RRRR-MM-DD'), to_date('2023/03/16', 'RRRR-MM-DD'), 18);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 230, 8, to_date('2023/03/17', 'RRRR-MM-DD'), to_date('2023/04/07', 'RRRR-MM-DD'), 19);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 241, 9, to_date('2022/11/23', 'RRRR-MM-DD'), to_date('2022/12/08', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 242, 9, to_date('2022/12/09', 'RRRR-MM-DD'), to_date('2022/12/24', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 243, 9, to_date('2022/12/25', 'RRRR-MM-DD'), to_date('2023/01/09', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 244, 9, to_date('2023/01/10', 'RRRR-MM-DD'), to_date('2023/01/26', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 245, 9, to_date('2023/01/27', 'RRRR-MM-DD'), to_date('2023/02/12', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 256, 9, to_date('2023/02/13', 'RRRR-MM-DD'), to_date('2023/03/01', 'RRRR-MM-DD'), 15);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 257, 9, to_date('2023/03/02', 'RRRR-MM-DD'), to_date('2023/03/18', 'RRRR-MM-DD'), 16);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 258, 9, to_date('2023/03/19', 'RRRR-MM-DD'), to_date('2023/04/04', 'RRRR-MM-DD'), 17);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 259, 9, to_date('2023/04/05', 'RRRR-MM-DD'), to_date('2023/04/21', 'RRRR-MM-DD'), 18);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 260, 9, to_date('2023/04/22', 'RRRR-MM-DD'), to_date('2023/05/08', 'RRRR-MM-DD'), 19);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 271, 10, to_date('2022/12/30', 'RRRR-MM-DD'), to_date('2023/01/14', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 272, 10, to_date('2023/01/15', 'RRRR-MM-DD'), to_date('2023/01/30', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 273, 10, to_date('2023/01/31', 'RRRR-MM-DD'), to_date('2023/02/15', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 274, 10, to_date('2023/02/16', 'RRRR-MM-DD'), to_date('2023/03/04', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 275, 10, to_date('2023/03/05', 'RRRR-MM-DD'), to_date('2023/03/21', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 286, 10, to_date('2023/03/22', 'RRRR-MM-DD'), to_date('2023/04/07', 'RRRR-MM-DD'), 15);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 287, 10, to_date('2023/04/08', 'RRRR-MM-DD'), to_date('2023/04/24', 'RRRR-MM-DD'), 16);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 288, 10, to_date('2023/04/25', 'RRRR-MM-DD'), to_date('2023/05/11', 'RRRR-MM-DD'), 17);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 289, 10, to_date('2023/05/12', 'RRRR-MM-DD'), to_date('2023/05/28', 'RRRR-MM-DD'), 18);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 290, 10, to_date('2023/05/29', 'RRRR-MM-DD'), to_date('2023/06/14', 'RRRR-MM-DD'), 19);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 1, 11, to_date('2023/01/06', 'RRRR-MM-DD'), to_date('2023/01/23', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 2, 11, to_date('2023/01/24', 'RRRR-MM-DD'), to_date('2023/02/10', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 3, 11, to_date('2023/02/11', 'RRRR-MM-DD'), to_date('2023/02/28', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 4, 11, to_date('2023/03/01', 'RRRR-MM-DD'), to_date('2023/03/18', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 5, 11, to_date('2023/03/19', 'RRRR-MM-DD'), to_date('2023/04/05', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 16, 11, to_date('2023/04/06', 'RRRR-MM-DD'), to_date('2023/04/23', 'RRRR-MM-DD'), 15);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 17, 11, to_date('2023/04/24', 'RRRR-MM-DD'), to_date('2023/05/11', 'RRRR-MM-DD'), 16);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 18, 11, to_date('2023/05/12', 'RRRR-MM-DD'), to_date('2023/05/30', 'RRRR-MM-DD'), 17);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 19, 11, to_date('2023/05/31', 'RRRR-MM-DD'), to_date('2023/06/18', 'RRRR-MM-DD'), 18);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 20, 11, to_date('2023/06/19', 'RRRR-MM-DD'), to_date('2023/07/07', 'RRRR-MM-DD'), 19);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 31, 12, to_date('2023/02/07', 'RRRR-MM-DD'), to_date('2023/02/24', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 32, 12, to_date('2023/02/25', 'RRRR-MM-DD'), to_date('2023/03/14', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 33, 12, to_date('2023/03/15', 'RRRR-MM-DD'), to_date('2023/04/01', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 34, 12, to_date('2023/04/02', 'RRRR-MM-DD'), to_date('2023/04/19', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 35, 12, to_date('2023/04/20', 'RRRR-MM-DD'), to_date('2023/05/07', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 41, 12, to_date('2023/05/08', 'RRRR-MM-DD'), to_date('2023/05/25', 'RRRR-MM-DD'), 15);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 42, 12, to_date('2023/05/26', 'RRRR-MM-DD'), to_date('2023/06/12', 'RRRR-MM-DD'), 16);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 43, 12, to_date('2023/06/13', 'RRRR-MM-DD'), to_date('2023/06/30', 'RRRR-MM-DD'), 17);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 44, 12, to_date('2023/07/01', 'RRRR-MM-DD'), to_date('2023/07/19', 'RRRR-MM-DD'), 18);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 45, 12, to_date('2023/07/20', 'RRRR-MM-DD'), to_date('2023/08/07', 'RRRR-MM-DD'), 19);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 61, 13, to_date('2023/03/14', 'RRRR-MM-DD'), to_date('2023/03/31', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 62, 13, to_date('2023/04/01', 'RRRR-MM-DD'), to_date('2023/04/18', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 63, 13, to_date('2023/04/19', 'RRRR-MM-DD'), to_date('2023/05/06', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 64, 13, to_date('2023/05/07', 'RRRR-MM-DD'), to_date('2023/05/24', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 65, 13, to_date('2023/05/25', 'RRRR-MM-DD'), to_date('2023/06/11', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 66, 13, to_date('2023/06/12', 'RRRR-MM-DD'), to_date('2023/06/30', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 67, 13, to_date('2023/07/01', 'RRRR-MM-DD'), to_date('2023/07/19', 'RRRR-MM-DD'), 6);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 68, 13, to_date('2023/07/20', 'RRRR-MM-DD'), to_date('2023/08/07', 'RRRR-MM-DD'), 7);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 69, 13, to_date('2023/08/08', 'RRRR-MM-DD'), to_date('2023/08/26', 'RRRR-MM-DD'), 8);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 70, 13, to_date('2023/08/27', 'RRRR-MM-DD'), to_date('2023/09/14', 'RRRR-MM-DD'), 9);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 91, 14, to_date('2023/04/14', 'RRRR-MM-DD'), to_date('2023/05/01', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 92, 14, to_date('2023/05/02', 'RRRR-MM-DD'), to_date('2023/05/19', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 93, 14, to_date('2023/05/20', 'RRRR-MM-DD'), to_date('2023/06/06', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 94, 14, to_date('2023/06/07', 'RRRR-MM-DD'), to_date('2023/06/24', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 95, 14, to_date('2023/06/25', 'RRRR-MM-DD'), to_date('2023/07/13', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 96, 14, to_date('2023/07/14', 'RRRR-MM-DD'), to_date('2023/08/01', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 97, 14, to_date('2023/08/02', 'RRRR-MM-DD'), to_date('2023/08/20', 'RRRR-MM-DD'), 6);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 98, 14, to_date('2023/08/21', 'RRRR-MM-DD'), to_date('2023/09/08', 'RRRR-MM-DD'), 7);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 99, 14, to_date('2023/09/09', 'RRRR-MM-DD'), to_date('2023/09/27', 'RRRR-MM-DD'), 8);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 100, 14, to_date('2023/09/28', 'RRRR-MM-DD'), to_date('2023/10/16', 'RRRR-MM-DD'), 9);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 121, 15, to_date('2023/05/15', 'RRRR-MM-DD'), to_date('2023/06/04', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 122, 15, to_date('2023/06/05', 'RRRR-MM-DD'), to_date('2023/06/25', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 123, 15, to_date('2023/06/26', 'RRRR-MM-DD'), to_date('2023/07/16', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 124, 15, to_date('2023/07/17', 'RRRR-MM-DD'), to_date('2023/08/06', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 125, 15, to_date('2023/08/07', 'RRRR-MM-DD'), to_date('2023/08/27', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 126, 15, to_date('2023/08/28', 'RRRR-MM-DD'), to_date('2023/09/18', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 127, 15, to_date('2023/09/19', 'RRRR-MM-DD'), to_date('2023/10/10', 'RRRR-MM-DD'), 6);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 128, 15, to_date('2023/10/11', 'RRRR-MM-DD'), to_date('2023/11/01', 'RRRR-MM-DD'), 7);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 129, 15, to_date('2023/11/02', 'RRRR-MM-DD'), to_date('2023/11/23', 'RRRR-MM-DD'), 8);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 130, 15, to_date('2023/11/24', 'RRRR-MM-DD'), to_date('2023/12/15', 'RRRR-MM-DD'), 9);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 151, 16, to_date('2023/06/14', 'RRRR-MM-DD'), to_date('2023/07/04', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 152, 16, to_date('2023/07/05', 'RRRR-MM-DD'), to_date('2023/07/25', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 153, 16, to_date('2023/07/26', 'RRRR-MM-DD'), to_date('2023/08/15', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 154, 16, to_date('2023/08/16', 'RRRR-MM-DD'), to_date('2023/09/05', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 155, 16, to_date('2023/09/06', 'RRRR-MM-DD'), to_date('2023/09/27', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 156, 16, to_date('2023/09/28', 'RRRR-MM-DD'), to_date('2023/10/19', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 157, 16, to_date('2023/10/20', 'RRRR-MM-DD'), to_date('2023/11/10', 'RRRR-MM-DD'), 6);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 158, 16, to_date('2023/11/11', 'RRRR-MM-DD'), to_date('2023/12/02', 'RRRR-MM-DD'), 7);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 159, 16, to_date('2023/12/03', 'RRRR-MM-DD'), to_date('2023/12/24', 'RRRR-MM-DD'), 8);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 160, 16, to_date('2023/12/25', 'RRRR-MM-DD'), to_date('2024/01/15', 'RRRR-MM-DD'), 9);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 181, 17, to_date('2023/07/14', 'RRRR-MM-DD'), to_date('2023/07/29', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 182, 17, to_date('2023/07/30', 'RRRR-MM-DD'), to_date('2023/08/14', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 183, 17, to_date('2023/08/15', 'RRRR-MM-DD'), to_date('2023/08/30', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 184, 17, to_date('2023/08/31', 'RRRR-MM-DD'), to_date('2023/09/16', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 185, 17, to_date('2023/09/17', 'RRRR-MM-DD'), to_date('2023/10/03', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 186, 17, to_date('2023/10/04', 'RRRR-MM-DD'), to_date('2023/10/20', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 187, 17, to_date('2023/10/21', 'RRRR-MM-DD'), to_date('2023/11/06', 'RRRR-MM-DD'), 6);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 188, 17, to_date('2023/11/07', 'RRRR-MM-DD'), to_date('2023/11/23', 'RRRR-MM-DD'), 7);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 189, 17, to_date('2023/11/24', 'RRRR-MM-DD'), to_date('2023/12/10', 'RRRR-MM-DD'), 8);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 190, 17, to_date('2023/12/11', 'RRRR-MM-DD'), to_date('2023/12/27', 'RRRR-MM-DD'), 9);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 211, 18, to_date('2023/08/14', 'RRRR-MM-DD'), to_date('2023/08/29', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 212, 18, to_date('2023/08/30', 'RRRR-MM-DD'), to_date('2023/09/15', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 213, 18, to_date('2023/09/16', 'RRRR-MM-DD'), to_date('2023/10/02', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 214, 18, to_date('2023/10/03', 'RRRR-MM-DD'), to_date('2023/10/19', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 215, 18, to_date('2023/10/20', 'RRRR-MM-DD'), to_date('2023/11/05', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 216, 18, to_date('2023/11/06', 'RRRR-MM-DD'), to_date('2023/11/22', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 217, 18, to_date('2023/11/23', 'RRRR-MM-DD'), to_date('2023/12/09', 'RRRR-MM-DD'), 6);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 218, 18, to_date('2023/12/10', 'RRRR-MM-DD'), to_date('2023/12/26', 'RRRR-MM-DD'), 7);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 219, 18, to_date('2023/12/27', 'RRRR-MM-DD'), to_date('2024/01/12', 'RRRR-MM-DD'), 8);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 220, 18, to_date('2024/01/13', 'RRRR-MM-DD'), to_date('2024/01/29', 'RRRR-MM-DD'), 9);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 241, 19, to_date('2023/09/29', 'RRRR-MM-DD'), to_date('2023/10/15', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 242, 19, to_date('2023/10/16', 'RRRR-MM-DD'), to_date('2023/11/01', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 243, 19, to_date('2023/11/02', 'RRRR-MM-DD'), to_date('2023/11/18', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 244, 19, to_date('2023/11/19', 'RRRR-MM-DD'), to_date('2023/12/05', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 245, 19, to_date('2023/12/06', 'RRRR-MM-DD'), to_date('2023/12/22', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 261, 19, to_date('2023/12/23', 'RRRR-MM-DD'), to_date('2024/01/09', 'RRRR-MM-DD'), 20);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 262, 19, to_date('2024/01/10', 'RRRR-MM-DD'), to_date('2024/01/27', 'RRRR-MM-DD'), 21);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 263, 19, to_date('2024/01/28', 'RRRR-MM-DD'), to_date('2024/02/14', 'RRRR-MM-DD'), 22);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 264, 19, to_date('2024/02/15', 'RRRR-MM-DD'), to_date('2024/03/03', 'RRRR-MM-DD'), 23);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 265, 19, to_date('2024/03/04', 'RRRR-MM-DD'), to_date('2024/03/21', 'RRRR-MM-DD'), 24);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 271, 20, to_date('2023/10/16', 'RRRR-MM-DD'), to_date('2023/11/03', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 272, 20, to_date('2023/11/04', 'RRRR-MM-DD'), to_date('2023/11/22', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 273, 20, to_date('2023/11/23', 'RRRR-MM-DD'), to_date('2023/12/11', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 274, 20, to_date('2023/12/12', 'RRRR-MM-DD'), to_date('2023/12/30', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 275, 20, to_date('2023/12/31', 'RRRR-MM-DD'), to_date('2024/01/18', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 291, 20, to_date('2024/01/19', 'RRRR-MM-DD'), to_date('2024/02/06', 'RRRR-MM-DD'), 20);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 292, 20, to_date('2024/02/07', 'RRRR-MM-DD'), to_date('2024/02/25', 'RRRR-MM-DD'), 21);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 293, 20, to_date('2024/02/26', 'RRRR-MM-DD'), to_date('2024/03/15', 'RRRR-MM-DD'), 22);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 294, 20, to_date('2024/03/16', 'RRRR-MM-DD'), to_date('2024/04/03', 'RRRR-MM-DD'), 23);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 295, 20, to_date('2024/04/04', 'RRRR-MM-DD'), to_date('2024/04/23', 'RRRR-MM-DD'), 24);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 1, 21, to_date('2023/12/22', 'RRRR-MM-DD'), to_date('2024/01/11', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 2, 21, to_date('2024/01/12', 'RRRR-MM-DD'), to_date('2024/02/01', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 3, 21, to_date('2024/02/02', 'RRRR-MM-DD'), to_date('2024/02/22', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 4, 21, to_date('2024/02/23', 'RRRR-MM-DD'), to_date('2024/03/14', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 5, 21, to_date('2024/03/15', 'RRRR-MM-DD'), to_date('2024/04/04', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 21, 21, to_date('2024/04/05', 'RRRR-MM-DD'), to_date('2024/04/25', 'RRRR-MM-DD'), 20);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 22, 21, to_date('2024/04/26', 'RRRR-MM-DD'), to_date('2024/05/17', 'RRRR-MM-DD'), 21);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 23, 21, to_date('2024/05/18', 'RRRR-MM-DD'), to_date('2024/06/08', 'RRRR-MM-DD'), 22);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 24, 21, to_date('2024/06/09', 'RRRR-MM-DD'), to_date('2024/06/30', 'RRRR-MM-DD'), 23);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 25, 21, to_date('2024/07/01', 'RRRR-MM-DD'), to_date('2024/07/22', 'RRRR-MM-DD'), 24);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 31, 22, to_date('2024/01/22', 'RRRR-MM-DD'), to_date('2024/02/11', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 32, 22, to_date('2024/02/12', 'RRRR-MM-DD'), to_date('2024/03/03', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 33, 22, to_date('2024/03/04', 'RRRR-MM-DD'), to_date('2024/03/24', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 34, 22, to_date('2024/03/25', 'RRRR-MM-DD'), to_date('2024/04/14', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 35, 22, to_date('2024/04/15', 'RRRR-MM-DD'), to_date('2024/05/05', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 51, 22, to_date('2024/05/06', 'RRRR-MM-DD'), to_date('2024/05/26', 'RRRR-MM-DD'), 20);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 52, 22, to_date('2024/05/27', 'RRRR-MM-DD'), to_date('2024/06/17', 'RRRR-MM-DD'), 21);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 53, 22, to_date('2024/06/18', 'RRRR-MM-DD'), to_date('2024/07/09', 'RRRR-MM-DD'), 22);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 54, 22, to_date('2024/07/10', 'RRRR-MM-DD'), to_date('2024/07/31', 'RRRR-MM-DD'), 23);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 55, 22, to_date('2024/08/01', 'RRRR-MM-DD'), to_date('2024/08/22', 'RRRR-MM-DD'), 24);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 61, 23, to_date('2024/01/03', 'RRRR-MM-DD'), to_date('2024/01/18', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 62, 23, to_date('2024/01/19', 'RRRR-MM-DD'), to_date('2024/02/04', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 63, 23, to_date('2024/02/05', 'RRRR-MM-DD'), to_date('2024/02/21', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 64, 23, to_date('2024/02/22', 'RRRR-MM-DD'), to_date('2024/03/09', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 65, 23, to_date('2024/03/10', 'RRRR-MM-DD'), to_date('2024/03/26', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 81, 23, to_date('2024/03/27', 'RRRR-MM-DD'), to_date('2024/04/12', 'RRRR-MM-DD'), 20);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 82, 23, to_date('2024/04/13', 'RRRR-MM-DD'), to_date('2024/04/29', 'RRRR-MM-DD'), 21);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 83, 23, to_date('2024/04/30', 'RRRR-MM-DD'), to_date('2024/05/16', 'RRRR-MM-DD'), 22);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 84, 23, to_date('2024/05/17', 'RRRR-MM-DD'), to_date('2024/06/02', 'RRRR-MM-DD'), 23);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 85, 23, to_date('2024/06/03', 'RRRR-MM-DD'), to_date('2024/06/19', 'RRRR-MM-DD'), 24);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 91, 24, to_date('2024/02/05', 'RRRR-MM-DD'), to_date('2024/02/21', 'RRRR-MM-DD'), 1);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 92, 24, to_date('2024/02/22', 'RRRR-MM-DD'), to_date('2024/03/09', 'RRRR-MM-DD'), 2);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 93, 24, to_date('2024/03/10', 'RRRR-MM-DD'), to_date('2024/03/26', 'RRRR-MM-DD'), 3);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 94, 24, to_date('2024/03/27', 'RRRR-MM-DD'), to_date('2024/04/12', 'RRRR-MM-DD'), 4);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 95, 24, to_date('2024/04/13', 'RRRR-MM-DD'), to_date('2024/04/30', 'RRRR-MM-DD'), 5);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 111, 24, to_date('2024/05/01', 'RRRR-MM-DD'), to_date('2024/05/18', 'RRRR-MM-DD'), 20);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 112, 24, to_date('2024/05/19', 'RRRR-MM-DD'), to_date('2024/06/05', 'RRRR-MM-DD'), 21);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 113, 24, to_date('2024/06/06', 'RRRR-MM-DD'), to_date('2024/06/23', 'RRRR-MM-DD'), 22);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 114, 24, to_date('2024/06/24', 'RRRR-MM-DD'), to_date('2024/07/11', 'RRRR-MM-DD'), 23);

INSERT INTO tblCourseSubject (courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, cousesubjectenddate, textBook_seq) 
VALUES (seqCourseSubject.nextVal, 115, 24, to_date('2024/07/12', 'RRRR-MM-DD'), to_date('2024/07/20', 'RRRR-MM-DD'), 24);
