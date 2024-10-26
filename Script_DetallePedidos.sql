-- Detalles de Pedido
-- Insertar 
DELIMITER //
CREATE PROCEDURE procInsertDetallePedidos(
    IN v_cantidad INT,
    IN v_precio DECIMAL,
    IN v_producto_id INT,
    IN v_pedido_id INT
)
BEGIN
    INSERT INTO tbl_detalles_pedido (det_cantidad, det_precio, tbl_productos_pro_id, tbl_pedidos_pedi_id)
    VALUES (v_cantidad, v_precio, v_producto_id, v_pedido_id);
END //
DELIMITER ;

-- Actualizar
DELIMITER //
CREATE PROCEDURE procUpdateDetallePedidos(
    IN v_id INT,
    IN v_cantidad INT,
    IN v_precio DECIMAL,
    IN v_producto_id INT,
    IN v_pedido_id INT
)
BEGIN
    UPDATE tbl_detalles_pedido
    SET 
        det_cantidad = v_cantidad, 
        det_precio = v_precio, 
        tbl_productos_pro_id = v_producto_id, 
        tbl_pedidos_pedi_id = v_pedido_id
    WHERE det_id = v_id;
END //
DELIMITER ;

-- Mostrar
DELIMITER //
CREATE PROCEDURE procSelectDetallesPedidos()
BEGIN
    SELECT det_id, det_cantidad, det_precio, tbl_productos_pro_id, tbl_pedidos_pedi_id
    FROM tbl_detalles_pedido;
END //
DELIMITER ;

-- Mostrar DDL
DELIMITER //
CREATE PROCEDURE procSelectDetallesPedidosDDL()
BEGIN
    SELECT det_id, det_cantidad, det_precio, tbl_productos_pro_id, tbl_pedidos_pedi_id
    FROM tbl_detalles_pedido;
END //
DELIMITER ;

-- Eliminar
DELIMITER //
CREATE PROCEDURE procDeleteDetallePedidos(IN v_id INT)
BEGIN
    DELETE FROM tbl_detalles_pedido WHERE det_id = v_id;
END //
DELIMITER ;