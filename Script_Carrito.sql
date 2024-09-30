-- Carrito
-- Insertar 
DELIMITER //
CREATE PROCEDURE procInsertCarrito(
    IN v_cantidad INT,
    IN v_precio_unitario DECIMAL,
    IN v_producto_id INT,
    IN v_cliente_id INT
)
BEGIN
    INSERT INTO tbl_carrito (carri_cantidad, carri_precio_unitario, tbl_productos_pro_id, tbl_clientes_cli_id)
    VALUES (v_cantidad, v_precio_unitario, v_producto_id, v_cliente_id);
END //
DELIMITER ;

-- Actualizar
DELIMITER //
CREATE PROCEDURE procUpdateCarrito(
    IN v_id INT,
    IN v_cantidad INT,
    IN v_precio_unitario DECIMAL,
    IN v_producto_id INT,
    IN v_cliente_id INT
)
BEGIN
    UPDATE tbl_carrito
    SET 
        carri_cantidad = v_cantidad, 
        carri_precio_unitario = v_precio_unitario, 
        tbl_productos_pro_id = v_producto_id, 
        tbl_clientes_cli_id = v_cliente_id
    WHERE carri_id = v_id;
END //
DELIMITER ;

-- Mostrar
DELIMITER //
CREATE PROCEDURE procSelectCarrito()
BEGIN
    SELECT carri_id, carri_cantidad, carri_precio_unitario, tbl_productos_pro_id, tbl_clientes_cli_id
    FROM tbl_carrito;
END //
DELIMITER ;

-- Eliminar
DELIMITER //
CREATE PROCEDURE procDeleteCarrito(IN v_id INT)
BEGIN
    DELETE FROM tbl_carrito WHERE carri_id = v_id;
END //
DELIMITER ;