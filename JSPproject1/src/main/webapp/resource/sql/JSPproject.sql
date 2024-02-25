CREATE TABLE product(
    p_id VARCHAR2(100) NOT NULL PRIMARY KEY,
    p_name VARCHAR2(100),
    p_unitPrice INTEGER,
    p_description VARCHAR2(300),
    p_category VARCHAR2(100),
    p_manufacturer VARCHAR2(100),
    p_unitsInStock LONG,
    p_size VARCHAR2(100),
    p_fileName VARCHAR2(100)
);