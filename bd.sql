CREATE DATABASE LasChakalitas;
use LasChakalitas;

Create TABLE Computadoras(
	id_Compu int not null auto_increment primary key,
    nombre varchar (100),
    modelo varchar(100),
    numeroSerie varchar(100),
    Procesador varchar(100),
    Memoria_RAM int,
    Memoria_interna varchar(100),
    Sistema varchar(100)
);

create table Ususarios(
	id_Usuario int not null auto_increment primary key,
    nombre varchar(100),
    contrasenia varchar(250)
);

create table Historial(
	id int not null auto_increment primary key,
    id_Compu int not null,
    nombre varchar (100),
    modelo varchar(100),
    numeroSerie varchar(100),
    Procesador varchar(100),
    Memoria_RAM int,
    Memoria_interna varchar(100),
    Sistema varchar(100),
    estado varchar(100),
    foreign key (id_Compu) references Computadoras(id_Compu)
	
);


-- drop database LasChakalitas;




delimiter //
create trigger Historial_AI
After insert on Computadoras
FOR each row
begin
	INSERT INTO Historial(id_compu, nombre, modelo, numeroSerie, procesador, memoria_ram, Memoria_interna, sistema, estado) 
    VALUES (new.id_compu, 
    new.nombre, 
    new.modelo, 
    new.numeroSerie, 
    new.procesador, 
    new.memoria_ram, 
    new.Memoria_interna,
    new.sistema, 
    "Alta");
    
END; //
    
    
delimiter //
create trigger Historial_AU
After insert on Computadoras
FOR each row
begin
	INSERT INTO Historial(id_compu, nombre, modelo, numeroSerie, procesador, memoria_ram, Memoria_interna, sistema, estado) 
    VALUES (new.id_compu, 
    new.nombre, 
    new.modelo, 
    new.numeroSerie, 
    new.procesador, 
    new.memoria_ram, 
    new.Memoria_interna,
    new.sistema, 
    "Alta");
    
END; //
    
    