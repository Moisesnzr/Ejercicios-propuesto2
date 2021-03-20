
-- Creacion y entrada de datos a la tabla Inscrpcion.

drop table inscripcion_est;

create table inscripcion_est(
    Id_inscripcion VARCHAR2 (6) not null,
    Nombre VARCHAR2 (12) not null,
    Apellido VARCHAR2 (30) not null,
    Fecha_nacimiento,
    Sexo CHAR (1),
    Direccion VARCHAR2 (60),
    Telefono_movil VARCHAR2 (10),
    Telefono_fijo VARCHAR2 (10),
    Correo VARCHAR2 (45) not null,
    PRIMARY KEY (Id_inscripcion)
);

describe inscripcion_est;

insert into inscripcion_est values ('INS001', 'Pablo', 'Alcantara Rodriguez', '20/03/1985', 'M', 'Los Prado, Manzana L #16', '8295694851', '8093336598', 'pablo1985_rodri@gmail.com');
insert into inscripcion_est values ('INS002', 'Juan', 'Almanzar Rosario', '02/12/1978', 'M', 'La Caleta, C/ la caletica #102', '8495941623', null, 'juanrosa809rd@gmail.com');
insert into inscripcion_est values ('INS003', 'Gimena', 'Toribio Abinader', '30/05/1995', 'F', 'Caño arriba, la romana #75', '8293695412', '8093331452', 'gimena032@gmail.com');
insert into inscripcion_est values ('INS004', 'Griselda', 'De la Cruz Polanco', '02/12/1978', 'F', 'Carmen renata III manzana L #23', '8094569321', '8093331478', 'griselda78@hotmail.com');
insert into inscripcion_est values ('INS005', 'Moises', 'Nuñez del Rosario', '05/7/2000', 'M', 'Villa de Pantoja Ñ #12, pantoja', '8094569321', null, 'moisesnzr.rd@gmail.com');

    -- Consultas de la tabla inscripcion.
select *from inscripcion_est;

select Nombre, Apellido, Correo from inscripcion_est;

select *from inscripcion_est 
    where Telefono_fijo is null;

select *from inscripcion_est
    where Nombre = 'Griselda' or Sexo = 'F';

select *from inscripcion_est
    where Fecha_nacimiento < '01/01/2000';
    
-- Creacion y entrada de datos a la tabla Empleados.

drop table empleados;

create table empleados(
    Id_empleados VARCHAR2 (6) not null,
    Nombre VARCHAR2 (12) not null,
    Apellido VARCHAR2 (30) not null,
    Fecha_nacimiento Date not null,
    Telefono VARCHAR2 (10),
    Direcion VARCHAR2 (60),
    Salario NUMBER (6,0),
    Profesion VARCHAR2 (30),
    PRIMARY KEY (Id_empleados)
);

describe empleados;

insert into empleados values ('EMP001', 'Raul', 'Polanco Rodriguez', '03/6/1979', '8093567895', 'Calle 10 No. 9 - 78  Centro', 45000, 'Lic. Ciencias Sociales');
insert into empleados values ('EMP002', 'Margarita', 'Polanco Rodriguez', '16/12/1994', '8296547893', 'Carrera 56A No. 51 - 81', 55000, 'Lic. Lengua Española');
insert into empleados values ('EMP003', 'Emilia', 'Dominguez Lebron', '13/10/1989', '8492513652', 'Carrera 22 No. 17-31', 60000, 'Lic. Idiomas');
insert into empleados values ('EMP004', 'Reychell', 'Camacho De La Rosa', '29/01/1974', '8497845621', 'Carrera 10A No. 20 Edificio El Clarín piso 3 ', 55000, 'Lic. Matematicas');
insert into empleados values ('EMP005', 'Melvin', 'Ruiz Allyn', '30/09/1981', '8297485632', 'Calle 20  piso 3 Edificio Cumanday', 40000, 'Lic. Matematicas');

    -- Consultas de la tabla empleados.

select *from empleados;

select Nombre, Salario from empleados;

select *from empleados
    where Salario <= 50000;

select Nombre, Apellido, Telefono from empleados
    where Salario = 55000 or Profesion = 'Lic. Matematicas';
    
select uc.table_name, column_name from user_cons_columns ucc
    join user_constraints uc
    on ucc.constraint_name=uc.constraint_name
    where uc.constraint_type='P' and
    uc.table_name='EMPLEADOS';
    
-- Creacion y entrada de datos a la tabla Calificacion.

drop table calificacion;

create table calificacion(
    Id_calificacion VARCHAR2(6) not  null,
    Nombre VARCHAR2 (12) not null,
    Apellido VARCHAR2 (30) not null,
    Curso VARCHAR2 (10),
    Nota_Periodo1 NUMBER(3,0),
    Nota_Periodo2 NUMBER(3,0),
    Nota_Periodo3 NUMBER(3,0),
    Nota_Examen NUMBER(3,0),
    Nota_Total Number (3,0),
    PRIMARY KEY (Id_calificacion)
);

describe calificacion;

insert into calificacion values ('CAL001', 'Pablo', 'Alcantara Rodriguez', 'Sexto', 90.50, 80.41, 95, 88, 88.47);
insert into calificacion values ('CAL002', 'Juan', 'Almanzar Rosario', 'Quinto', 88, 69, 70.60, 78, 76.4);
insert into calificacion values ('CAL003', 'Gimena', 'Toribio Abinader','Sexto', 98, 91, 93, 88, 92.5);
insert into calificacion values ('CAL004', 'Griselda', 'De la Cruz Polanco', 'Noveno', 85, 100, 70.68, 92, 86.92);
insert into calificacion values ('CAL005', 'Moises', 'Nuñez del Rosario', 'Cuarto',85, 85.50, 90, 99, 89.87);

    -- Consultas de la tabla calificacion.

select *from calificacion;

select Nombre, Apellido, Nota_Total from calificacion;

select *from calificacion
    where Curso = 'Sexto';

select Nombre, Apellido from calificacion
    where Nota_Periodo2 >= 90 and Nota_Periodo3 >= 90;
    
select uc.table_name, column_name from user_cons_columns ucc
    join user_constraints uc
    on ucc.constraint_name=uc.constraint_name
    where uc.constraint_type='P' and
    uc.table_name='CALIFICACION';

-- Creacion y entrada de datos a la tabla Pago de estudiante y sus 5 consultas.

drop table pago_est;

create table pago_est(
    Id_pago VARCHAR2 (6) not null,
    Nombre VARCHAR2 (12) not null,
    Apellido VARCHAR2 (30) not null,
    Fecha_pago Date,
    Total_pago NUMBER(4),
    PRIMARY KEY (Id_pago)
);

describe pago_est;

insert into pago_est values ('PAG001', 'Pablo', 'Alcantara Rodriguez', '28/02/2021', 5000);
insert into pago_est values ('PAG002', 'Juan', 'Almanzar Rosario', '28/02/2021', 5500);
insert into pago_est values ('PAG003', 'Gimena', 'Toribio Abinader', '28/02/2021', 5500);
insert into pago_est values ('PAG004', 'Griselda', 'De la Cruz Polanco', '30/01/2021', 5000);
insert into pago_est values ('PAG005', 'Moises', 'Nuñez del Rosario', '30/01/2021', 5500);

    -- Consultas de la tabla Pago de estudiante.

select *from pago_est;

select Nombre, Apellido, Total_pago from pago_est;

select *from pago_est
    where Fecha_pago = '28/02/2021';

select Nombre, Apellido from pago_est
    where Fecha_pago > '30/01/2021' and Total_pago = 5500;
    
select uc.table_name, column_name from user_cons_columns ucc
    join user_constraints uc
    on ucc.constraint_name=uc.constraint_name
    where uc.constraint_type='P' and
    uc.table_name='PAGO_EST';

-- Creacion y entrada de datos a la tabla Registro Conducta y sus 5 consultas.

drop table Registro_conducta;

create table Registro_conducta(
    Id_Rgtconducta VARCHAR2 (6) not null,
    Nombre VARCHAR2 (12)not null,
    Apellido VARCHAR2 (30) not null,
    Conducta VARCHAR2(5) not null,
    PRIMARY KEY (Id_Rgtconducta)
);

describe Registro_conducta;

insert into Registro_conducta values ('REC001', 'Pablo', 'Alcantara Rodriguez', 'Mala');
insert into Registro_conducta values ('REC002', 'Juan', 'Almanzar Rosario', 'Buena');
insert into Registro_conducta values ('REC003', 'Gimena', 'Toribio Abinader', 'Buena');
insert into Registro_conducta values ('REC004', 'Griselda', 'De la Cruz Polanco', 'Mala');
insert into Registro_conducta values ('REC005', 'Moises', 'Nuñez del Rosario', 'Mala');

    -- Consultas de la tabla Registro de Conducta.

select *from Registro_conducta;

select Nombre, Apellido, Conducta from Registro_conducta;

select *from Registro_conducta
    where Conducta = 'Mala';

select Nombre, Apellido from Registro_conducta
    where Id_Rgtconducta != 'REC001';
    
select uc.table_name, column_name from user_cons_columns ucc
    join user_constraints uc
    on ucc.constraint_name=uc.constraint_name
    where uc.constraint_type='P' and
    uc.table_name='REGISTRO_CONDUCTA';  