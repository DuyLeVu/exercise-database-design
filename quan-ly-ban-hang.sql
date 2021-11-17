create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
	cID varchar(10) primary key,
    cName varchar(40),
    cAge datetime
);
create table Orders(
	oID varchar(10) primary key,
    cID varchar(10),
    oDate datetime,
    oTotalPrice double,
    foreign key (cID) references Customer(cID)
);
create table Product(
	pID varchar(10) primary key,
    pName varchar(40),
    pPrice double
);
create table OrderDetail(
	oID varchar(10),
	pID varchar(10),
    odQTY int, 
    primary key (oID, pID),
    foreign key (oID) references Orders(oID),
    foreign key (pID) references Product(pID)
);