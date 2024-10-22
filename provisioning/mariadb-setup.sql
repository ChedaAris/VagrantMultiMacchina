
CREATE SCHEMA web;


-- CREATE USER 'web'@'10.10.20.10' IDENTIFIED BY 'web';
-- GRANT ALL ON web.* TO 'web'@'10.10.20.10';

USE web;

CREATE TABLE utenti (
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(25),
	email VARCHAR(50),
	password CHAR(64)
);

INSERT INTO utenti (username, email, password) VALUES
('user1', 'user1@example.com', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e'),
('user2', 'user2@example.com', '3bsfeewgte5k232a01c6859541bcb3e81621312sdfsfgddgfu2472u2424h24u2'),
('user3', 'user3@example.com', '4f3c8a4d2ec499a5154568a9f9f86d09d3a7d1e00b1e4a66be9239ecf5820ab6'),
('user4', 'user4@example.com', '6d2f4434a667e5584f6dbcbfc2ed8f569f35c9d144b5a4df06cde7e1f0f6874d'),
('user5', 'user5@example.com', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e'),
('user6', 'user6@example.com', '52a8a9823b5b973d8b0ca0e2a2b7fc1564cb3e8c8ef3a2cae02f4d9038779f7a'),
('user7', 'user7@example.com', 'f3482068a28fd04b91c9d58bbdb42b5d7ab1215d1b7d4d01a890ca75ed27a35a'),
('user8', 'user8@example.com', 'eaab93a722f6f987e2b6e2edc04fef0d539da0a32c7d0c500b0b3c7f8970e25e'),
('user9', 'user9@example.com', 'beaf09e2b65a2cb64ca35a438a6e71e84b3cbfed77d801d4f5bfbfb7c6d1f82c'),
('user10', 'user10@example.com', '9a0b60c7ca458fb3c2c80fc5a1ed93870d33f1304e3d4d84e1983d9d2b268dd2'),
('user11', 'user11@example.com', 'f3482068a28fd04b91c9d58bbdb42b5d7ab1215d1b7d4d01a890ca75ed27a35a'),
('user12', 'user12@example.com', 'g6782068a28fd04b91c9d58bbd12312314b1215d1b74e3d4d84e1ca75ed3afds');