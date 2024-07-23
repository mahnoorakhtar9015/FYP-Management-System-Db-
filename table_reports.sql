use FYP15;

create Procedure MissingSubmission 
AS
BEGIN
      select Project.projectID, Project.panel_no, Project.projectName from Project
	  where (Project.projectID in (select Deadlines.projectID from Deadlines where deadline_date < GETDATE()) AND status='Active'); 
END 

DROP PROCEDURE MissingSubmission



EXEC MissingSubmission;

SELECT grade, COUNT(*) As Count FROM Project GROUP BY grade

create Procedure CountofEachGrade @G varchar(2)
AS
BEGIN
      select count(grade) AS 'Total no of Grade' From Project where (grade = @G);

END

EXEC CountofEachGrade @G ='A';

create Procedure MissingSuperviorReview
AS
BEGIN
      select Reviews.projectID,Reviews.supervisorId,'Missing review' from Reviews 
	  where (Suggestions=NULL);

END

EXEC MissingSuperviorReview;

create Procedure MissingProjectReviewbySupervisor 
AS
BEGIN
      select SupervisorReviews.projectID, 'Missing Supervisor Reviews' from SupervisorReviews
	  where (SupervisorReviews.Suggestions=NULL);

END

EXEC MissingProjectReviewbySupervisor;


create Procedure MissingEvaluationbyPanelMember
AS
BEGIN
      select Project.projectID (select Panel.username from Panel where Panel.panel_no= Project.panel_no) AS 'PanelMember' from Project where
	  Project.projectID NOT IN (select Evaluation.projectID from Evaluation);
	 
END

EXEC MissingEvaluationbyPanelMember;

create Procedure CompleteFyps
AS 
BEGIN
      select Project.projectID,Project.projectName,Project.projectDesc,'FYP COMPLETED' From Project 
	  where (status = 1);

END

EXEC CompleteFyps

/*MissingEvaluation:*/
SELECT id, username, panel_no from Panel Where panel_no IN (
SELECT PROJECT.panel_no FROM PROJECT
LEFT JOIN Evaluation ON Project.projectID = Evaluation.projectID
WHERE Evaluation.projectID IS NULL);




/* Supervisor Project And Workload */
use FYP11;

SELECT username, Count(*) As NoOfSupervisons
FROM Supervisor
GROUP BY username;

SELECT id, Count(*) As NoOfSupervisons 
FROM Supervisor
INNER JOIN Project ON Project.supervisorId = id
GROUP BY id;

/* Which panelist gave the most A's */

SELECT TOP 1 panelistUsername, Count(*) As Count FROM Evaluation 
WHERE grade LIKE 'A%'
GROUP BY panelistUsername
ORDER BY Count DESC;

SELECT panelistUsername, grade, Count(*) As Count FROM Evaluation 
GROUP BY panelistUsername, grade;

