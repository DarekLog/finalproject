/*DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    id SERIAL PRIMARY KEY,
    first VARCHAR (255) NOT NULL,
    last VARCHAR (255) NOT NULL,
    email VARCHAR (255) NOT NULL UNIQUE,
    password VARCHAR (255) NOT NULL,
    imageUrl TEXT,
    bio TEXT,
    ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS reset_codes;

CREATE TABLE reset_codes
(
    id SERIAL PRIMARY KEY,
    email VARCHAR NOT NULL,
    code VARCHAR NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS friendships;*/

CREATE TABLE friendships
(
    id SERIAL PRIMARY KEY,
    sender_id INT REFERENCES users(id) NOT NULL,
    receiver_id INT REFERENCES users(id) NOT NULL,
    accepted BOOLEAN DEFAULT FALSE NOT NULL
);

/*DROP TABLE IF EXISTS chat;*/

CREATE TABLE chat
(
    id SERIAL PRIMARY KEY,
    sender_id INT REFERENCES users(id) NOT NULL,
    text_message TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);