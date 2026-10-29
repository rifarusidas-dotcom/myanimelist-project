
CREATE SCHEMA IF NOT EXISTS salam;

CREATE TABLE IF NOT EXISTS salam.mahasiswa (
    nim VARCHAR(15),
    nama VARCHAR(100),
    umur INT,
    email VARCHAR(100)
);

INSERT INTO salam.mahasiswa (nim, nama, umur, email)
VALUES
    ('12345', 'Andi', 20, 'andi@email.com'),
    ('12346', 'Budi', 21, 'budi@email.com'),
    ('12347', 'Citra', 19, 'citra@email.com');

CREATE USER backend_dev WITH PASSWORD 'Backend123!';
CREATE USER bi_dev WITH PASSWORD 'Bi123!';
CREATE USER data_engineer WITH PASSWORD 'Data123!';

GRANT USAGE ON SCHEMA salam TO backend_dev;
GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA salam TO backend_dev;

GRANT USAGE ON SCHEMA salam TO bi_dev;
GRANT SELECT ON ALL TABLES IN SCHEMA salam TO bi_dev;

GRANT USAGE, CREATE ON SCHEMA salam TO data_engineer;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA salam
TO data_engineer;

ALTER TABLE salam.mahasiswa OWNER TO data_engineer;
