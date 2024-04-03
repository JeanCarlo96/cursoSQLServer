-- Cusso de introducción de la BD

-- Creación de la BD
create database test;

-- Creacion tabla persona
create table test.persona (
pk_id    int(4)      not null auto_increment,
cedula   varchar(10),
nombre   varchar(25),
edad     int(3),
fk_cargo int(4),
primary key (pk_id),
foreign key (fk_cargo) references test.cargo (pk_id)
) engine=innodb;

-- Insertar elementos en la tabla
-- Forma 1
insert into test.persona values(1, '1234567890', 'Jean Marchesini', 27, 1);

-- Forma 2
insert into test.persona (cedula, nombre, edad, fk_cargo) values ('2314523670', 'Jonathan Silva', 30, 3);

-- Consulta de registros
select *
from test.persona

select nombre
from test.persona

-- Eliminar una tabla
drop table test.persona;

-- Creación de tabla cargo
create table test.cargo(
pk_id  int(4) not null auto_increment,
nombre varchar(25),
primary key (pk_id)
)engine=innodb;

-- Insertando datos en la tabla cargo
insert into test.cargo (nombre) values ('Ingeniero');
insert into test.cargo (nombre) values ('Doctor');
insert into test.cargo (nombre) values ('Veterinario');

-- Consultar Datos
select *
from test.cargo

-- Inner Join 
select p.nombre, p.cedula, c.nombre
from test.persona p inner join test.cargo c on p.fk_cargo = c.pk_id

-- Left Join
select p.nombre, p.cedula, c.nombre
from test.persona p left join test.cargo c on p.fk_cargo = c.pk_id

-- Update
update test.persona set nombre = 'Debian', cedula = '123'
where pk_id = 1

update test.persona set nombre = 'Jonathan Morocho', fk_cargo = 1
where pk_id = 2

-- Delete
delete from test.persona 
where pk_id = 1

-- Creacion de tabla con fecha
create table test.ingreso_planta(
pk_id int(4) not null auto_increment,
nombre_puerta varchar(25),
dia_ingreso   date,
hora_ingreso  datetime,
fk_persona    int(4) not null,
primary key (pk_id),
foreign key (fk_persona) references test.persona(pk_id)
)engine=innodb;

-- Eliminar una tabla
drop table test.ingreso_planta;

-- Insertando datos en ingreso_planta

insert into test.ingreso_planta (nombre_puerta, dia_ingreso, hora_ingreso, fk_persona)
                        values ('Puerta 01',   curdate(),   now(),        2);
                       
-- Consulta
select *
from test.ingreso_planta

-- Funciones

delimiter //
create function test.contar_registros()
returns integer
begin
	declare resultado int;

    select count(pk_id) into resultado
    from test.ingreso_planta
    where dia_ingreso = curdate();
   
   return resultado;
end//

DELIMITER //

CREATE FUNCTION test.holaMundo() RETURNS VARCHAR(30)
BEGIN
  DECLARE salida VARCHAR(30);
  SET salida = 'Hola mundo con variables';
  RETURN salida;
END
//

select test.contar_registros();

select test.holaMundo();
-- Eliminar funcion
drop function contar_registros;

-- Modificar estructura de una tabla
select *
from test.ingreso_planta

-- Alter
alter table test.ingreso_planta add column dia_semana varchar(15) after hora_ingreso 

-- Trigger

delimiter /

create trigger test.inserta_dia_semana
before insert on test.ingreso_planta 
for each row
begin
	declare dia_insertar varchar(15);
    select DAYNAME(curdate()) into dia_insertar;
   
   set new.dia_semana = dia_insertar;
  
  
end/

-- Eliminar el trigger
drop trigger test.inserta_dia_semana;

-- Insertar un valor cuando tenemos un trigger
insert into test.ingreso_planta(nombre_puerta, dia_ingreso, hora_ingreso, fk_persona)
                         values('Puerta 02',   curdate(),   now(),        2);
                        
insert into test.ingreso_planta(nombre_puerta, dia_ingreso, hora_ingreso, fk_persona)
                         values('Puerta 03',   curdate(),   now(),        2)
                         
                         
-- Vistas
create view test.reporte as (
select per.nombre, per.cedula, ip.hora_ingreso, ip.dia_semana, ip.nombre_puerta
from test.persona per inner join test.cargo car         on per.fk_cargo  = car.pk_id 
                      inner join test.ingreso_planta ip on ip.fk_persona = per.pk_id
); 

-- Ejecutar Vista
select *
from test.reporte;


-- Cursores
select *
from test.ingreso_planta

                        
insert into test.ingreso_planta(nombre_puerta, dia_ingreso, hora_ingreso, fk_persona)
                         values('Puerta 04',   curdate(),   now(),        2)

-- Crear un cursor que tome los registros que tengan la columna dia_seman en NULL y los agregue un número

                         
delimiter /

create procedure test.convertir_fechas()
begin
   declare x int(11);
   declare id_ int(11);
   declare dia_ date;
   declare err_no_more_records condition for 1329;
   declare c cursor for   
   select pk_id, dia_ingreso from test.ingreso_planta where isnull(dia_semana);  
   declare exit handler for err_no_more_records
  begin
  end;
	  
  open c;
  set x = 0;
  size: loop
  fetch c into id_, dia_;
  update test.ingreso_planta set dia_semana = concat('No. ', x, ' ', dayname(dia_)) 
  where pk_id = id_;
  set x = x + 1;
		
  end loop size;
  close c;
end
  


/

-- Llamada al cursos
call test.convertir_fechas();
















