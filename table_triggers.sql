use FYP15;


create TRIGGER tblUserInsert
 on Users
 after insert
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'insert','Users',getdate() 

end

go

create TRIGGER tblUserUpdate
 on Users
 after update
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'update','Users',getdate() 

end

go

create TRIGGER tblUserdelete
 on Users
 after delete
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'delete','Users',getdate() 

end

go

create TRIGGER tblCommitteeInsert
 on Committee
 after insert
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'insert','Committee',getdate()

end

go

create TRIGGER tblCommitteeUpdate
 on Committee
 after update
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'update','Committee',getdate()

end

go

create TRIGGER tblCommitteeDelete
 on Committee
 after delete
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'delete','Committee',getdate()

end

go

create TRIGGER tblSupervisorInsert
 on Supervisor
 after insert
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'insert','Supervisor',getdate() 

end

go

create TRIGGER tblSupervisorUpdate
 on Supervisor
 after update
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'update','Supervisor',getdate() 

end

go

create TRIGGER tblSupervisorDelete
 on Supervisor
 after delete
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'delete','Supervisor',getdate() 

end

go

create TRIGGER tblPanelInsert
 on Panel
 after insert
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select'insert','Panel',getdate() 

end

go


create TRIGGER tblPanelUpdate
 on Panel
 after update
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select'update','Panel',getdate() 

end

go

create TRIGGER tblPanelDelete
 on Panel
 after delete
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select'delete','Panel',getdate() 

end
go

create TRIGGER tblProjectInsert
 on Project
 after insert
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'insert','Project',getdate()

end

go

create TRIGGER tblProjectUpdate
 on Project
 after update
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'update','Project',getdate()

end

go

create TRIGGER tblProjectDelete
 on Project
 after delete
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'delete','Project',getdate()

end

go

create TRIGGER tblStudentInsert
 on Student
 after insert
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'insert','Student',getdate()

end

go

create TRIGGER tblStudentUpdate
 on Student
 after Update
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'update','Student',getdate()

end

go

create TRIGGER tblStudentDelete
 on Student
 after delete
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'delete','Student',getdate()

end

go

create TRIGGER tblDeadlinesInsert
 on Deadlines
 after insert
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'insert','Deadlines',getdate()

end

go

create TRIGGER tblDeadlinesUpdate
 on Deadlines
 after update
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'update','Deadlines',getdate()

end

go

create TRIGGER tblDeadlinesDelete
 on Deadlines
 after delete
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'delete','Deadlines',getdate()

end

go


create TRIGGER tblEvaluationUpdate
 on Evaluation
 after update
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'update','Evaluation',getdate()

end

go

create TRIGGER tblEvaluationInsert
 on Evaluation
 after insert
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'insert','Evaluation',getdate()

end

go

create TRIGGER tblEvaluationDelete
 on Evaluation
 after delete
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'delete','Evaluation',getdate()

end

go

create TRIGGER tblReviewsUpdate
 on Reviews
 after update
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'update','Reviews',getdate()

end

go

create TRIGGER tblReviewsInsert
 on Reviews
 after insert
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'insert','Reviews',getdate()

end

go

create TRIGGER tblReviewsDelete
 on Reviews
 after delete
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'Delete','Reviews',getdate()

end

go

create TRIGGER tblSupervisorReviewsUpdate
 on SupervisorReviews
 after update
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'update','SupervisorReviews',getdate()

end

go

create TRIGGER tblSupervisorReviewsInsert
 on SupervisorReviews
 after insert
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'insert','SupervisorReviews',getdate()

end

go

create TRIGGER tblSupervisorReviewsDelete
 on SupervisorReviews
 after delete
 as
 begin
      insert into OperationsAudit(operationType,tableName,DateofOperation)
	  select 'delete','SupervisorReviews',getdate()

end

go

