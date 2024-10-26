-- Proveedores
-- Insertar 
DELIMITER //
CREATE PROCEDURE procInsertProveedores(
    IN v_nombre VARCHAR(100),
    IN v_contacto VARCHAR(100),
    IN v_direccion VARCHAR(255)
)
BEGIN
    INSERT INTO tbl_proveedores (prove_nombre, prove_contacto, prove_direccion)
    VALUES (v_nombre, v_contacto, v_direccion);
END //
DELIMITER ;

-- Actualizar
DELIMITER //
CREATE PROCEDURE procUpdateProveedores(
    IN v_id INT,
    IN v_nombre VARCHAR(100),
    IN v_contacto VARCHAR(100),
    IN v_direccion VARCHAR(255)
)
BEGIN
    UPDATE tbl_proveedores
    SET 
        prove_nombre = v_nombre, 
        prove_contacto = v_contacto, 
        prove_direccion = v_direccion
    WHERE prove_id = v_id;
END //
DELIMITER ;

-- Mostrar
DELIMITER //
CREATE PROCEDURE procSelectProveedores()
BEGIN
    SELECT prove_id, prove_nombre, prove_contacto, prove_direccion
    FROM tbl_proveedores;
END //
DELIMITER ;

-- Mostrar DDL
DELIMITER //
CREATE PROCEDURE procSelectProveedoresDDL()
BEGIN
	select prove_id,concat (prove_nombre, ' - ',prove_direccion) AS Informacion
    from tbl_proveedores;
END//
DELIMITER ;

-- Eliminar
DELIMITER //
CREATE PROCEDURE procDeleteProveedores(IN v_id INT)
BEGIN
    DELETE FROM tbl_proveedores WHERE prove_id = v_id;
END //
DELIMITER ;