-- Productos
-- Insertar 
DELIMITER //
CREATE PROCEDURE procInsertProductos(
    IN v_nombre VARCHAR(100),
    IN v_descripcion TEXT,
    IN v_precio DECIMAL,
    IN v_categoria_id INT,
    IN v_proveedor_id INT
)
BEGIN
    INSERT INTO tbl_productos (pro_nombre, pro_descripcion, pro_precio, tbl_categorias_cate_id, tbl_proveedores_prove_id)
    VALUES (v_nombre, v_descripcion, v_precio, v_categoria_id, v_proveedor_id);
END //
DELIMITER ;

-- Actualizar
DELIMITER //
CREATE PROCEDURE procUpdateProductos(
    IN v_id INT,
    IN v_nombre VARCHAR(100),
    IN v_descripcion TEXT,
    IN v_precio DECIMAL,
    IN v_categoria_id INT,
    IN v_proveedor_id INT
)
BEGIN
    UPDATE tbl_productos
    SET 
        pro_nombre = v_nombre, 
        pro_descripcion = v_descripcion, 
        pro_precio = v_precio, 
        tbl_categorias_cate_id = v_categoria_id, 
        tbl_proveedores_prove_id = v_proveedor_id
    WHERE pro_id = v_id;
END //
DELIMITER ;

-- Mostrar
DELIMITER //
CREATE PROCEDURE procSelectProductos()
BEGIN
    SELECT DISTINCT
        p.pro_id,  
        p.pro_nombre,
        p.pro_descripcion, 
        p.pro_precio,
        c.cate_id AS categoria_id, 
        c.cate_nombre AS categoria_nombre, 
        pr.prove_id AS proveedor_id, 
        pr.prove_nombre AS proveedor_nombre 
    FROM tbl_productos p
    INNER JOIN tbl_categorias c
        ON p.tbl_categorias_cate_id = c.cate_id
    INNER JOIN tbl_proveedores pr
        ON p.tbl_proveedores_prove_id = pr.prove_id;
END//
DELIMITER ;

-- Mostrar DDL

DELIMITER //
CREATE PROCEDURE procSelectProductosDDL()
BEGIN
	select pro_id,concat (pro_nombre, ' - ',pro_precio) AS Productos
    from tbl_productos;
END//
DELIMITER ;

-- Eliminar
DELIMITER //
CREATE PROCEDURE procDeleteProductos(IN v_id INT)
BEGIN
    DELETE FROM tbl_productos WHERE pro_id = v_id;
END //
DELIMITER ;