CREATE OR REPLACE PROCEDURE procStudentEvaluate(
    evaluateNum NUMBER
) IS
BEGIN
    UPDATE tblevaluate SET evaluatedate = SYSDATE WHERE evaulate_seq = evaluateNum;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('진단평가가 완료되었습니다.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('해당 평가 항목이 없습니다.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('오류 발생');
END procStudentEvaluate;

DECLARE
BEGIN
    UpdateEvaluateDate(1496);
END;

DECLARE BEGIN procStudentEvaluate(502); END;


CREATE OR REPLACE PROCEDURE procStudentEvaluate(
    studentNum NUMBER
) IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('과정명: ' || SELECT bbb FROM op GROUP bbb);
    DBMS_OUTPUT.PUT_LINE('과정 기간: ' || SELECT ccc FROM op GROUP ccc);
    FOR op IN (
        SELECT 
            e.evaulate_seq AS aaa,
            cn.coursename AS bbb,
            TO_CHAR(c.coursestartdate, 'yyyy-mm-dd') || ' ~ ' || TO_CHAR(c.courseenddate, 'yyyy-mm-dd') AS ccc,
            ef.evaluatefile AS ddd,
            CASE 
                WHEN e.evaluatedate IS NOT NULL THEN '완료'
                WHEN e.evaluatedate IS NULL THEN '미완료'
            END AS eee,
            e.evaluatedate AS fff
        FROM tblevaluate e
        INNER JOIN tblevaluatefile ef ON e.evaluatefile_seq = ef.evaluatefile_seq
        INNER JOIN tblstudent st ON st.student_seq = e.student_seq
        INNER JOIN tblcoursesubject cs ON cs.coursesubject_seq = e.coursesubject_seq
        INNER JOIN tblsubjectavailability sa ON sa.subjectavailability_seq = cs.subjectavailability_seq
        INNER JOIN tblsubject s2 ON s2.subject_seq = sa.subject_seq
        INNER JOIN tblcourse c ON cs.course_seq = c.course_seq 
        INNER JOIN tblcoursename cn ON cn.coursename_seq = c.coursename_seq
        WHERE st.student_seq = studentNum
        ORDER BY e.evaulate_seq 
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE('파일번호: ' || op.aaa||' | 진단평가 파일명: ' || op.ddd||' | 완료여부: ' || op.eee||' | 완료 날짜: ' || op.fff);
    END LOOP;
END procStudentEvaluate;

