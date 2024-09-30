-- Clientes
-- Insertar 
DELIMITER //
CREATE PROCEDURE procInsertClientes(
    IN v_nombre VARCHAR(50),
    IN v_apellido VARCHAR(50),
    IN v_direccion VARCHAR(255),
    IN v_telefono VARCHAR(20)
)
BEGIN
    INSERT INTO tbl_clientes (cli_nombre, cli_apellido, cli_direccion, cli_telefono)
    VALUES (v_nombre, v_apellido, v_direccion, v_telefono);
END //
DELIMITER ;

-- Actualizar
DELIMITER //
CREATE PROCEDURE procUpdateClientes(
    IN v_id INT,
    IN v_nombre VARCHAR(50),
    IN v_apellido VARCHAR(50),
    IN v_direccion VARCHAR(255),
    IN v_telefono VARCHAR(20)
)
BEGIN
    UPDATE tbl_clientes
    SET 
        cli_nombre = v_nombre, 
        cli_apellido = v_apellido, 
        cli_direccion = v_direccion, 
        cli_telefono = v_telefono
    WHERE cli_id = v_id;
END //
DELIMITER ;

-- Mostrar
DELIMITER //
CREATE PROCEDURE procSelectClientes()
BEGIN
    SELECT cli_id, cli_nombre, cli_apellido, cli_direccion, cli_telefono 
    FROM tbl_clientes;
END //
DELIMITER ;

-- Eliminar
DELIMITER //
CREATE PROCEDURE procDeleteClientes(IN v_id INT)
BEGIN
    DELETE FROM tbl_clientes WHERE cli_id = v_id;
END //
DELIMITER ;