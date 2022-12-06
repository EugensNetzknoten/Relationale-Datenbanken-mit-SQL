USE [master];
GO



--DROP DATABASE [MiniBank]
--GO

CREATE DATABASE [MiniBank]
	CONTAINMENT = NONE
ON  PRIMARY 
	( NAME = N'MiniBank', FILENAME = N'C:\SQL-Kurs\DB\Projekt\MiniBank.mdf' , SIZE = 8192KB , FILEGROWTH = 10%)
LOG ON 
	( NAME = N'MiniBank_log', FILENAME = N'C:\SQL-Kurs\DB\Projekt\MiniBank_log.ldf' , SIZE = 8192KB , FILEGROWTH = 10%)
GO



-- change owner to sa
--USE [MiniBank]
--GO
--ALTER AUTHORIZATION ON DATABASE::[MiniBank] TO [sa]
--GO