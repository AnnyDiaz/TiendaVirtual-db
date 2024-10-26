-- Pagos
-- Insertar 
DELIMITER //
CREATE PROCEDURE procInsertPagos(
    IN v_fecha DATETIME,
    IN v_monto DOUBLE,
    IN v_metodo_pago VARCHAR(50),
    IN v_estado VARCHAR(50),
    IN v_pedido_id INT,
    IN v_cliente_id INT
)
BEGIN
    INSERT INTO tbl_pagos (pag_fecha, pag_monto, pag_metodo_pago, pag_estado, tbl_pedidos_pedi_id, tbl_pedidos_tbl_clientes_cli_id)
    VALUES (v_fecha, v_monto, v_metodo_pago, v_estado, v_pedido_id, v_cliente_id);
END //
DELIMITER ;

-- Actualizar
DELIMITER //
CREATE PROCEDURE procUpdatePagos(
    IN v_id INT,
    IN v_fecha DATETIME,
    IN v_monto DOUBLE,
    IN v_metodo_pago VARCHAR(50),
    IN v_estado VARCHAR(50),
    IN v_pedido_id INT,
    IN v_cliente_id INT
)
BEGIN
    UPDATE tbl_pagos
    SET 
        pag_fecha = v_fecha, 
        pag_monto = v_monto, 
        pag_metodo_pago = v_metodo_pago, 
        pag_estado = v_estado, 
        tbl_pedidos_pedi_id = v_pedido_id, 
        tbl_pedidos_tbl_clientes_cli_id = v_cliente_id
    WHERE pag_id = v_id;
END //
DELIMITER ;

-- Mostrar
DELIMITER //
CREATE PROCEDURE procSelectPagos()
BEGIN
    SELECT pag_id, pag_fecha, pag_monto, pag_metodo_pago, pag_estado, tbl_pedidos_pedi_id, tbl_pedidos_tbl_clientes_cli_id
    FROM tbl_pagos;
END //
DELIMITER ;

-- Mostrar DDL
DELIMITER //
CREATE PROCEDURE procSelectPagosDDL()
BEGIN
    SELECT pag_id, pag_fecha, pag_monto, pag_metodo_pago, pag_estado, tbl_pedidos_pedi_id, tbl_pedidos_tbl_clientes_cli_id
    FROM tbl_pagos;
END //
DELIMITER ;

-- Eliminar
DELIMITER //
CREATE PROCEDURE procDeletePagos(IN v_id INT)
BEGIN
    DELETE FROM tbl_pagos WHERE pag_id = v_id;
END //
DELIMITER ;