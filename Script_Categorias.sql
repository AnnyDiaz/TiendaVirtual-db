-- Categorías
-- Insertar 
DELIMITER //
CREATE PROCEDURE procInsertCategorias(
    IN v_nombre VARCHAR(50)
)
BEGIN
    INSERT INTO tbl_categorias (cate_nombre)
    VALUES (v_nombre);
END //
DELIMITER ;

-- Actualizar
DELIMITER //
CREATE PROCEDURE procUpdateCategorias(
    IN v_id INT,
    IN v_nombre VARCHAR(50)
)
BEGIN
    UPDATE tbl_categorias
    SET 
        cate_nombre = v_nombre
    WHERE cate_id = v_id;
END //
DELIMITER ;

-- Mostrar
DELIMITER //
CREATE PROCEDURE procSelectCategorias()
BEGIN
    SELECT cate_id, cate_nombre
    FROM tbl_categorias;
END //
DELIMITER ;

-- Mostrar DDL
DELIMITER //
CREATE PROCEDURE procSelectCategoriasDDL()
BEGIN
    SELECT cate_id, cate_nombre
    FROM tbl_categorias;
END //
DELIMITER ;


-- Eliminar
DELIMITER //
CREATE PROCEDURE procDeleteCategorias(IN v_id INT)
BEGIN
    DELETE FROM tbl_categorias WHERE cate_id = v_id;
END //
DELIMITER ;