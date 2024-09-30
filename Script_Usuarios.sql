-- Usuarios

-- Insertar 
DELIMITER //
CREATE PROCEDURE procInsertUsuarios(
    IN v_nombre VARCHAR(50),
    IN v_apellido VARCHAR(50),
    IN v_correo VARCHAR(100),
    IN v_contrasena TEXT,
    IN v_direccion VARCHAR(255),
    IN v_telefono VARCHAR(20),
    IN v_tipo ENUM('Cliente', 'Administrador'), 
    IN v_salt TEXT
)
BEGIN
    INSERT INTO tbl_usuarios (usu_nombre, usu_apellido, usu_correo, usu_contrasena, usu_direccion, usu_telefono, usu_tipo, usu_salt)
    VALUES (v_nombre, v_apellido, v_correo, v_contrasena, v_direccion, v_telefono, v_tipo, v_salt);
END //
DELIMITER ;

-- Actualizar
DELIMITER //
CREATE PROCEDURE procUpdateUsuarios(
    IN v_id INT,
    IN v_nombre VARCHAR(50),
    IN v_apellido VARCHAR(50),
    IN v_correo VARCHAR(100),
    IN v_contrasena TEXT,
    IN v_direccion VARCHAR(255),
    IN v_telefono VARCHAR(20),
    IN v_tipo ENUM('Cliente', 'Administrador'),
    IN v_salt TEXT
)
BEGIN
    UPDATE tbl_usuarios
    SET 
        usu_nombre = v_nombre, 
        usu_apellido = v_apellido, 
        usu_correo = v_correo, 
        usu_contrasena = v_contrasena, 
        usu_direccion = v_direccion, 
        usu_telefono = v_telefono, 
        usu_tipo = v_tipo, 
        usu_salt = v_salt
    WHERE usu_id = v_id;
END //
DELIMITER ;

-- Mostrar
DELIMITER //
CREATE PROCEDURE procSelectUsuarios()
BEGIN
    SELECT usu_id, usu_nombre, usu_apellido, usu_correo, usu_contrasena, usu_direccion, usu_telefono, usu_tipo, usu_salt
    FROM tbl_usuarios;
END //
DELIMITER ;

-- Eliminar
DELIMITER //
CREATE PROCEDURE procDeleteUsuarios(IN v_id INT)
BEGIN
    DELETE FROM tbl_usuarios WHERE usu_id = v_id;
END //
DELIMITER ;