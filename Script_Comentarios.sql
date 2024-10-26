-- Comentarios
-- Insertar 
DELIMITER //
CREATE PROCEDURE procInsertComentarios(
    IN v_texto TEXT,
    IN v_fecha DATETIME,
    IN v_producto_id INT,
    IN v_cliente_id INT
)
BEGIN
    INSERT INTO tbl_comentarios (comen_texto, comen_fecha, tbl_productos_pro_id, tbl_clientes_cli_id)
    VALUES (v_texto, v_fecha, v_producto_id, v_cliente_id);
END //
DELIMITER ;

-- Actualizar
DELIMITER //
CREATE PROCEDURE procUpdateComentarios(
    IN v_id INT,
    IN v_texto TEXT,
    IN v_fecha DATETIME,
    IN v_producto_id INT,
    IN v_cliente_id INT
)
BEGIN
    UPDATE tbl_comentarios
    SET 
        comen_texto = v_texto, 
        comen_fecha = v_fecha, 
        tbl_productos_pro_id = v_producto_id, 
        tbl_clientes_cli_id = v_cliente_id
    WHERE comen_id = v_id;
END //
DELIMITER ;

-- Mostrar
DELIMITER //
CREATE PROCEDURE procSelectComentarios()
BEGIN
    SELECT comen_id, comen_texto, comen_fecha, tbl_productos_pro_id, tbl_clientes_cli_id
    FROM tbl_comentarios;
END //
DELIMITER ;

-- Mostrar DDL
DELIMITER //
CREATE PROCEDURE procSelectComentariosDDL()
BEGIN
    SELECT comen_id, comen_texto, comen_fecha, tbl_productos_pro_id, tbl_clientes_cli_id
    FROM tbl_comentarios;
END //
DELIMITER ;

-- Eliminar
DELIMITER //
CREATE PROCEDURE procDeleteComentarios(IN v_id INT)
BEGIN
    DELETE FROM tbl_comentarios WHERE comen_id = v_id;
END //
DELIMITER ;