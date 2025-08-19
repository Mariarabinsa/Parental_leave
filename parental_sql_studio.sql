use parental;

CREATE TABLE parental_leave (
Company VARCHAR(50),
Industry VARCHAR(50),
Paid_Maternity_Leave INT,
Unpaid_Maternity_Leave INT,
Paid_Paternity_Leave INT,
Unpaid_Paternity_Leave VARCHAR(50)
);
SELECT * FROM parent_leave;

--1
  create procedure get_parent1
   as
   begin
      select *
      from parental_leave
      order by Company asc;
end;

exec get_parent1;

--2 List all industries in asc order

create procedure get_industries
as
begin
     select *
     from parental_leave
     order by Industry asc;
end;

exec get_industries;


-- 3 count all companies 
create procedure get_count_total_company1
as
begin
     select COUNT(*)
     AS total_companies
     from parental_leave;    
end;

exec get_count_total_company1;

-- 4 count all industry
     
create procedure get_count_total_industries
as
begin
     select COUNT(*)
     AS total_industries
     from parental_leave;    
end;

exec get_count_total_industries;

-- 5 List all paid_maternity_leave in asc order

create procedure get_paid_maternity_leaves
   as
   begin
      select *
      from parental_leave
      order by Paid_Maternity_Leave asc;
end;

exec get_paid_maternity_leaves;

-- 6 Which company offers the most paid paternity leave?

create procedure get_top_paid_paternity_leave_companies
   as
   begin
      select top 1
      Company,
      [Paid_Paternity_Leave]
      from parent_leave
      order by Paid_Maternity_Leave desc;
end;

exec get_top_paid_paternity_leave_companies;

--7 sum of unpaid maternity leave

create procedure get_unpaid_maternity_leave_
   as
   begin
      select sum(unpaid_maternity_leave)
      from parent_leave
end;

exec get_unpaid_maternity_leave_;