create TABLE vh_elig_sam
AS
SELECT '123' AS memid, 'Sambeg' AS firstname, 'Dhakal' AS lastname, 'M' AS gender, 'E' AS relflag, 'Tinkune' AS address, 'cotiviti1' AS group1,'202011' AS effdate FROM dual
UNION
SELECT '21' AS memid, 'Xubash' AS firstname, 'Manadhar' AS lastname, 'M' AS gender, 'E' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'202010' AS effeffdate FROM dual
UNION
SELECT '125' AS memid, 'Pooja' AS firstname, 'Shrestha' AS lastname, 'F' AS gender, 'E' AS relflag, 'Tinkune' AS address,'cotiviti1' AS group1,'202009' AS effeffdate FROM dual
UNION
SELECT '126' AS memid, 'Prabesh' AS firstname, 'Baniya' AS lastname, 'M' AS gender, 'E' AS relflag, 'Tinkune' AS address,'cotiviti1' AS group1,'202008' AS effdate FROM dual
UNION
SELECT '75' AS memid, 'Subik' AS firstname, 'Shrestha' AS lastname, 'M' AS gender, 'E' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'202008' AS effdate FROM dual
UNION
SELECT '173' AS memid, 'best' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'202008' AS effdate FROM dual
UNION
SELECT '174' AS memid, 'best2' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'202011' AS effdate FROM dual
UNION
SELECT '201' AS memid, 'best3' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'202008' AS effdate FROM dual
UNION
SELECT '506' AS memid, 'best4' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'202011' AS effdate FROM dual
UNION
SELECT '5036' AS memid, 'best5' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'202008' AS effdate FROM dual
UNION
SELECT '106' AS memid, 'best6' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'202010' AS effdate FROM dual
UNION
SELECT '126' AS memid, 'best7' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'202009' AS effdate FROM dual
UNION
SELECT '129' AS memid, 'best20' AS firstname, 'ALL' AS lastname, 'M' AS gender, 'S' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'202011' AS effdate FROM dual
UNION
SELECT '130' AS memid, 'best21' AS firstname, 'ALL' AS lastname, 'M' AS gender, 'S' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'202011' AS effdate FROM dual
UNION
SELECT '131' AS memid, 'best22' AS firstname, 'ALL' AS lastname, 'M' AS gender, 'S' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'202011' AS effdate FROM dual
UNION
SELECT '371' AS memid, 'best24' AS firstname, 'ALL' AS lastname, 'M' AS gender, 'S' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'201901' AS effdate FROM dual
UNION
SELECT '372' AS memid, 'best25' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'201902' AS effdate FROM dual
UNION
SELECT '333' AS memid, 'best26' AS firstname, 'ALL' AS lastname, 'M' AS gender, 'S' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'201903' AS effdate FROM dual
UNION
SELECT '388' AS memid, 'Rajin' AS firstname, 'Tamrakar' AS lastname, 'M' AS gender, 'S' AS relflag, 'Tinkune' AS address,'cotiviti1' AS group1,'201903' AS effdate FROM dual
UNION
SELECT '389' AS memid, 'Subik' AS firstname, 'Man Singh' AS lastname, 'M' AS gender, 'E' AS relflag, 'Tinkune' AS address,'cotiviti2' AS group1,'201903' AS effdate FROM dual;


CREATE TABLE vh_rundate
AS
SELECT '202001' AS cyclestartdate, '202012' AS cycleenddate FROM dual;


CREATE OR replace PROCEDURE proc_create_active_tbl
AS
begin
BEGIN
EXECUTE IMMEDIATE 'DROP TABLE vh_elig_sam_active';
EXCEPTION WHEN OTHERS THEN NULL;
END;
begin
EXECUTE IMMEDIATE '
CREATE TABLE vh_elig_sam_active
AS
SELECT  * FROM vh_elig_sam,vh_rundate
WHERE effdate BETWEEN   cyclestartdate AND cycleenddate' ;
end;
END;
/

COMMIT;

SELECT * from vh_elig_sam;



create TABLE vh_clm_sam
AS
SELECT '123' AS memid, 'Sambeg' AS firstname, 'Dhakal' AS lastname, 'M' AS gender, 'E' AS relflag, 'Tinkune' AS address,10000 AS salary ,'cotiviti1' AS group1  FROM dual
UNION
SELECT '21' AS memid, 'Xubash' AS firstname, 'Manadhar' AS lastname, 'M' AS gender, 'E' AS relflag, 'Tinkune' AS address,20000 AS salary ,'cotiviti2' AS group1  FROM dual
UNION
SELECT '125' AS memid, 'Pooja' AS firstname, 'Shrestha' AS lastname, 'F' AS gender, 'E' AS relflag, 'Tinkune' AS address,310000 AS salary,'cotiviti1' AS group1  FROM dual
UNION
SELECT '126' AS memid, 'Prabesh' AS firstname, 'Baniya' AS lastname, 'M' AS gender, 'E' AS relflag, 'Tinkune' AS address,40000 AS salary,'cotiviti1' AS group1  FROM dual
UNION
SELECT '175' AS memid, 'Subik' AS firstname, 'Shrestha' AS lastname, 'M' AS gender, 'E' AS relflag, 'Tinkune' AS address,50000 AS salary,'cotiviti1' AS group1   FROM dual
UNION
SELECT '72' AS memid, 'Ram' AS firstname, 'Thapa Magar' AS lastname, 'M' AS gender, 'E' AS relflag, 'Tinkune' AS address,610000 AS salary,'cotiviti2' AS group1  FROM dual
UNION
SELECT '173' AS memid, 'best' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,610000 AS salary,'cotiviti1' AS group1 FROM dual
UNION
SELECT '174' AS memid, 'best2' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,310000 AS salary,'cotiviti2' AS group1 FROM dual
UNION
SELECT '201' AS memid, 'best3' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,410000 AS salary,'cotiviti2' AS group1 FROM dual
UNION
SELECT '506' AS memid, 'best4' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,210000 AS salary,'cotiviti1' AS group1 FROM dual
UNION
SELECT '503' AS memid, 'best5' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,110000 AS salary,'cotiviti2' AS group1 FROM dual
UNION
SELECT '10' AS memid, 'best6' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,210300 AS salary,'cotiviti1' AS group1 FROM dual
UNION
SELECT '126' AS memid, 'best7' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,510000 AS salary,'cotiviti2' AS group1 FROM dual
UNION
SELECT '301' AS memid, 'best8' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,910000 AS salary,'cotiviti1' AS group1 FROM dual
UNION
SELECT '302' AS memid, 'best9' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,10000 AS salary, 'cotiviti1' AS group1 FROM dual
UNION
SELECT '129' AS memid, 'best20' AS firstname, 'ALL' AS lastname, 'M' AS gender, 'S' AS relflag, 'Tinkune' AS address,10000 AS salary,'cotiviti2' AS group1 FROM dual
UNION
SELECT '130' AS memid, 'best21' AS firstname, 'ALL' AS lastname, 'M' AS gender, 'S' AS relflag, 'Tinkune' AS address,20000 AS salary,'cotiviti2' AS group1 FROM dual
UNION
SELECT '131' AS memid, 'best22' AS firstname, 'ALL' AS lastname, 'M' AS gender, 'S' AS relflag, 'Tinkune' AS address,30000 AS salary,'cotiviti2' AS group1 FROM dual
UNION
SELECT '371' AS memid, 'best24' AS firstname, 'ALL' AS lastname, 'M' AS gender, 'E' AS relflag, 'Tinkune' AS address,30000 AS salary,'cotiviti2' AS group1 FROM dual
UNION
SELECT '372' AS memid, 'best25' AS firstname, 'ALL' AS lastname, 'F' AS gender, 'S' AS relflag, 'Tinkune' AS address,23000 AS salary,'cotiviti2' AS group1 from dual
UNION
SELECT '333' AS memid, 'best26' AS firstname, 'ALL' AS lastname, 'M' AS gender, 'E' AS relflag, 'Tinkune' AS address,10000 AS salary,'cotiviti2' AS group1 FROM dual
UNION
SELECT '380' AS memid, 'Rajin' AS firstname, 'Tamrakar' AS lastname, 'M' AS gender, 'S' AS relflag, 'Tinkune' AS address,10000 AS salary,'cotiviti1' AS group1 FROM dual
UNION
SELECT '383' AS memid, 'Subik' AS firstname, 'Man Singh' AS lastname, 'M' AS gender, 'E' AS relflag, 'Tinkune' AS address,10000 AS salary,'cotiviti2' AS group1 FROM dual
;


 COMMIT;

CREATE TABLE zzz_cc_members
AS
SELECT memid,firstname,lastname,gender,group1,salary FROM vh_clm_sam a
WHERE NOT EXISTS(SELECT 1 FROM vh_elig_sam_active b WHERE a.memid=b.memid);


SELECT Count(*) FROM zzz_cc_members;


CREATE OR replace PROCEDURE proc_create_cc_list_tbl
AS
begin
BEGIN
EXECUTE IMMEDIATE 'DROP TABLE zzz_cc_members';
EXCEPTION WHEN OTHERS THEN NULL;
END;
begin
EXECUTE IMMEDIATE '
CREATE TABLE zzz_cc_members
AS
SELECT memid,firstname,lastname,gender,group1,salary FROM vh_clm_sam a
WHERE NOT EXISTS(SELECT 1 FROM vh_elig_sam_active b WHERE a.memid=b.memid)' ;
end;
END;
/

EXEC proc_create_cc_list_tbl;

COMMIT;

SELECT * FROM zzz_cc_members;

COMMIT;

SELECT * FROM zzz_cc_members;



SELECT DISTINCT salary FROM zzz_cc_members ;


DROP TABLE vh_elig_sam;
DROP TABLE vh_rundate;
DROP TABLE vh_elig_sam_active;
DROP TABLE vh_clm_sam;
DROP TABLE zzz_cc_members;

COMMIT;




SELECT NULL LINK, reasons, cc_mem
FROM(
SELECT
CASE WHEN b.firstname||b.lastname||b.gender  IS NOT NULL AND Length(a.memid)<>3 THEN 'MEMID received from claims is not of standard length (demographic mathces)'
WHEN b.firstname||b.lastname||b.gender  IS NOT NULL AND Length(b.memid)<>3 THEN 'MEMID received from eligibilities is not of standard length (demographic matches)'
WHEN b.firstname||b.lastname||b.gender  IS NOT NULL AND Length(a.memid)=3 AND Length(b.memid)=3 THEN 'Demographic matches'
WHEN b.firstname||b.lastname||b.gender  IS NULL AND c.firstname||c.lastname||c.gender  IS NULL THEN 'Memid is not seen from overall elig'
WHEN b.firstname||b.lastname||b.gender  IS  NULL AND c.firstname||c.lastname||c.gender  IS  NOT NULL THEN 'Memid is not seen from active elig only'  END AS reasons,
Count(DISTINCT a.memid) AS cc_mem
FROM zzz_cc_members a
left JOIN
vh_elig_sam_active b
ON a.firstname||a.lastname||a.gender=b.firstname||b.lastname||b.gender
left JOIN
vh_elig_sam c
ON a.firstname||a.lastname||a.gender=c.firstname||c.lastname||c.gender
GROUP BY CASE WHEN b.firstname||b.lastname||b.gender  IS NOT NULL AND Length(a.memid)<>3 THEN 'MEMID received from claims is not of standard length (demographic mathces)'
WHEN b.firstname||b.lastname||b.gender  IS NOT NULL AND Length(b.memid)<>3 THEN 'MEMID received from eligibilities is not of standard length (demographic matches)'
WHEN b.firstname||b.lastname||b.gender  IS NOT NULL AND Length(a.memid)=3 AND Length(b.memid)=3 THEN 'Demographic matches'
WHEN b.firstname||b.lastname||b.gender  IS NULL AND c.firstname||c.lastname||c.gender  IS NULL THEN 'Memid is not seen from overall elig'
WHEN b.firstname||b.lastname||b.gender  IS  NULL AND c.firstname||c.lastname||c.gender  IS  NOT NULL THEN 'Memid is not seen from active elig only'  END );




SELECT NULL LINK, group1, Count(DISTINCT memid), group1 FROM vh_clm_sam a
WHERE NOT EXISTS(SELECT 1 FROM vh_emp_sam b WHERE a.memid=b.memid AND a.group1=b.group1)
GROUP BY group1;


SELECT  NULL LINK, group1 LABEL, cc_ct Value
FROM
(
SELECT a.group1, Count(DISTINCT a.memid) cc_ct FROM zzz_cc_members a
GROUP BY a.group1);



SELECT group1,memid, firstname,lastname,gender,salary FROM
zzz_cc_members;


COMMIT;







 SELECT * FROM  vh_elig_sam;
SELECT * from vh_rundate;
SELECT * FROM  vh_elig_sam_active;
SELECT * FROM  vh_clm_sam;
SELECT * from zzz_cc_members;