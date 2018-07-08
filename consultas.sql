-- EMPLEADO
SELECT  * FROM empleado;

-- SUCURSAL
SELECT  * FROM sucursal;

-- INSERT TABLA SUCURSAL
INSERT into sucursal(nombre)
SELECT sucursal FROM empleado
GROUP by sucursal;

-- EMPLEADOS CON SUS RESPECTIVAS SUCURSALES
 SELECT e.nombres,e.cargo,e.edad,e.salario,e.fecha_inicio,s.nombre sucursal FROM empleado e
INNER JOIN sucursal s ON e.sucursal=s.id


-- LISTA DE SUCURSALES
SELECT  * FROM sucursal;

-- CANTIDAD DE EMPLEADOS POR SUCURSAL
SELECT sucursal,count(id)empleados FROM empleado
GROUP BY sucursal;

-- SUCURSALES Y CANTIDAD DE EMPLEADOS POR SUCURSAL
SELECT s.id,s.nombre sucursal,IFNULL(e.empleados,0)empleados from sucursal s
LEFT JOIN (

SELECT sucursal,count(id)empleados FROM empleado
GROUP BY sucursal

)e ON s.id=e.sucursal

-- EMPLEADOS X DEPARTAMENTO
SELECT e.nombres,e.cargo,e.edad,e.salario,e.fecha_inicio,s.nombre sucursal FROM empleado e
INNER JOIN sucursal s ON e.sucursal=s.id;

-- PAGOS TOTALES POR EMPLEADO
SELECT id_empleado,round(sum(monto),2)total FROM pago
GROUP  BY id_empleado;


-- EMPLEADOS X DEPARTAMENTO Y TOTA DE PAGOS

SELECT e.id,e.nombres,e.cargo,e.edad,e.salario,e.fecha_inicio,e.sucursal,IFNULL(p.total,0)TOTAL
FROM (SELECT e.id,e.nombres,e.cargo,e.edad,e.salario,e.fecha_inicio,s.nombre sucursal FROM empleado e
INNER JOIN sucursal s ON e.sucursal=s.id)e
LEFT JOIN
(
SELECT id_empleado,round(sum(monto),2)total FROM pago
GROUP  BY id_empleado
)p ON e.id=p.id_empleado
