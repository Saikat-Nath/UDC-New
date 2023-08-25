CREATE TABLE groups (
    id SERIAL PRIMARY KEY,  
    name TEXT NOT NULL UNIQUE,  
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
);


CREATE TABLE datasets (
    id SERIAL PRIMARY KEY,
    group_id INTEGER REFERENCES groups(id) ON DELETE CASCADE,
    name TEXT NOT NULL, 
    color TEXT NOT NULL,
    table_name SERIAL NOT NULL UNIQUE
   
);
)
docker exec -it 28 psql -U geo_user -d geo_db -W

password = geo_password


CREATE TABLE dataset_columns(
    id SERIAL PRIMARY KEY,
    dataset_id INTEGER REFERENCES datasets(id) ON DELETE CASCADE,
    column_name TEXT NOT NULL,
    column_geo BOOLEAN NOT NULL,
    column_time BOOLEAN NOT NULL
   
);

INSERT INTO groups (name) VALUES 
('Group A'),
('Group B'),
('Group C');

-- Datasets for Group A
INSERT INTO datasets (group_id, name, table_name) VALUES 
(1, 'Dataset A1', 'table_a1'),
(1, 'Dataset A2', 'table_a2');

-- Datasets for Group B
INSERT INTO datasets (group_id, name, table_name) VALUES 
(2, 'Dataset B1', 'table_b1'),
(2, 'Dataset B2', 'table_b2');

-- Datasets for Group C
INSERT INTO datasets (group_id, name, table_name) VALUES 
(3, 'Dataset C1', 'table_c1'),
(3, 'Dataset C2', 'table_c2');


-- Columns for Dataset A1
INSERT INTO dataset_columns (dataset_id, column_name, column_notnan, column_geo, column_time, color) VALUES 
(1, 'Column A1_1', TRUE, FALSE, FALSE, 'red'),
(1, 'Column A1_2', FALSE, TRUE, FALSE, 'blue'),
(1, 'Column A1_3', TRUE, FALSE, TRUE, 'green');

-- Columns for Dataset A2
INSERT INTO dataset_columns (dataset_id, column_name, column_notnan, column_geo, column_time, color) VALUES 
(2, 'Column A2_1', TRUE, FALSE, TRUE, 'yellow'),
(2, 'Column A2_2', FALSE, FALSE, FALSE, 'purple'),
(2, 'Column A2_3', TRUE, TRUE, FALSE, 'orange');