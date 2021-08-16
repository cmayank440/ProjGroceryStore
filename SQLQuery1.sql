create table tblUsers
(
Uid int identity(1,1) primary key not null,
Name nvarchar(100)Null, 
SurName nvarchar(100)Null,
Address nvarchar(100)Null,
City nvarchar(100)Null,
Pincode nvarchar(100)Null,
Mobile nvarchar(100)Null,
Password nvarchar(100)Null,
Email nvarchar(100)Null,
Gender nvarchar(100)Null,
EntryDate datetime,

)
--insert into tblUsers Values('coderbaba','123','coderbaba@yahoo.com','Coder baba','Admin')
--insert into tblUsers Values('user','123','user@yahoo.com','Userbabu','User')

select * from tblUsers  
--Usertype nvarchar(50) default 'User'