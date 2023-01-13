-- Esquema de la DB

CREATE TABLE subcontractor (
    sid SERIAL PRIMARY KEY,
    s_lname VARCHAR(30) NOT NULL,
    s_fname VARCHAR(30) NOT NULL,
    salary INTEGER NOT NULL
);

CREATE TABLE builder (
    bid SERIAL PRIMARY KEY,
    b_lname VARCHAR(30) NOT NULL,
    b_fname VARCHAR(30) NOT NULL,
    license VARCHAR(30) NOT NULL
);

CREATE TABLE neighborhood (
    nid SERIAL PRIMARY KEY,
    n_name VARCHAR(30) NOT NULL,
    city VARCHAR(30) NOT NULL
);

CREATE TABLE hire_info (
    bid INTEGER,
    sid INTEGER,
    hire_date DATE NOT NULL,
    PRIMARY KEY(bid, sid),
    CONSTRAINT fk_builder_hireinfo
        FOREIGN KEY(bid) REFERENCEs builder(bid),
    CONSTRAINT fk_subcontractor_hireinfo
        FOREIGN KEY(sid) REFERENCEs subcontractor(sid)
);

CREATE TABLE house (
    hid SERIAL PRIMARY KEY,
    h_name VARCHAR(30) NOT NULL,
    finish_date DATE,
    price INTEGER,
    bid INTEGER NOT NULL,
    nid INTEGER NOT NULL,
    CONSTRAINT fk_builder_house
        FOREIGN KEY(bid) REFERENCEs builder(bid),
    CONSTRAINT fk_neighborhood_house
        FOREIGN KEY(nid) REFERENCEs neighborhood(nid)
);