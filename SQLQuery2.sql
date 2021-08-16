insert into Login (Uid,Name,SurName,Address,City,Pincode,Mobile,Password,Email,Gender,EntryDate) values(@Uid,@Name,@SurName,@Address,@City,@Pincode,@Mobile,@Password,@Email,@Gender,GETDATE())

select * from Login;

create TABLE AdminMst
(
IID INT IDENTITY(1,1) PRIMARY KEY,
Username nvarchar(50),
Password nvarchar(50)
)
select * from AdminMst;

Insert into AdminMst(Username,Password) values (@Username,@Password)
select Username,Password from AdminMst where Username=@Username and Password=@Password

