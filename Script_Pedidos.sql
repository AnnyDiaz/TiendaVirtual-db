-- Pedidos
-- Insertar 
DELIMITER //
CREATE PROCEDURE procInsertPedidos(
    IN v_fecha DATETIME,
    IN v_estado VARCHAR(50),
    IN v_total DOUBLE,
    IN v_cliente_id INT
)
BEGIN
    INSERT INTO tbl_pedidos (pedi_fecha, pedi_estado, pedi_total, tbl_clientes_cli_id)
    VALUES (v_fecha, v_estado, v_total, v_cliente_id);
END //
DELIMITER ;

-- Actualizar
DELIMITER //
CREATE PROCEDURE procUpdatePedidos(
    IN v_id INT,
    IN v_fecha DATETIME,
    IN v_estado VARCHAR(50),
    IN v_total DOUBLE,
    IN v_cliente_id INT
)
BEGIN
    UPDATE tbl_pedidos
    SET 
        pedi_fecha = v_fecha, 
        pedi_estado = v_estado, 
        pedi_total = v_total, 
        tbl_clientes_cli_id = v_cliente_id
    WHERE pedi_id = v_id;
END //
DELIMITER ;

-- Mostrar
DELIMITER //
CREATE PROCEDURE procSelectPedidos()
BEGIN
    SELECT DISTINCT
        pedi_id, 
        pedi_fecha, 
        pedi_estado,  
        pedi_total, 
        tbl_clientes_cli_id, 
        CONCAT(cli_nombre, ' - ', cli_direccion, ' - ', cli_telefono) AS Informacion
    FROM 
        tbl_pedidos 
    INNER JOIN tbl_clientes ON
        tbl_pedidos.tbl_clientes_cli_id = tbl_clientes.cli_id;
END //
DELIMITER ;



-- Mostrar DDL
DELIMITER //
CREATE PROCEDURE procSelectPedidosDDL()
BEGIN
    SELECT pedi_id, pedi_estado
    FROM tbl_pedidos;
END //
DELIMITER ;

-- Eliminar
DELIMITER //
CREATE PROCEDURE procDeletePedidos(IN v_id INT)
BEGIN
    DELETE FROM tbl_pedidos WHERE pedi_id = v_id;
END //
DELIMITER ;