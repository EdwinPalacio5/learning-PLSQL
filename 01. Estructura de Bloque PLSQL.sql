-- Estructura de Bloque PL/SQL

/*
DECLARE (opcional)
� Variables, cursores, excepciones definida por usuario

BEGIN (mandatorio)
� Setencias SQL
� Sentencias PL/SQL

EXCEPTION (opcional)
� Acciones a desarrollar cuando ocurre una excepci�n

END; (mandatorio)
*/

-- Tipos de Bloque

/*
An�nimo

  [DECLARE]
  BEGIN
    --sentencias
  [EXCEPTION]
  END;
  
Procedimiento

  PROCEDURE nombre
  IS
  BEGIN
    --sentencias
  [EXCEPTION]
  END;

Funci�n

  FUNCTION nombre
  RETURN tipoDato
  IS
  BEGIN
    --sentencias
    RETURN valor;
  [EXCEPTION]
  END;

*/

-- Ejemplo Bloque Anonimo:

-- Para habilitar la salida en SQL Developer
SET SERVEROUTPUT ON;

DECLARE
  v_fname VARCHAR(20);
BEGIN
  SELECT  first_name INTO v_fname
  FROM    employees
  WHERE   employee_id=100;

--paquete predefinido Oracle (DBMS_OUTPUT)y su procedimiento (PUT_LINE) 
  DBMS_OUTPUT.PUT_LINE('El primer nombre del empleado es ' || v_fname);
END;

/*
Resultado:
  Procedimiento PL/SQL terminado correctamente.
  El primer nombre del empleado es Steven
*/




