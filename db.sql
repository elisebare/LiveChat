DROP TABLE IF EXISTS users, channels, subscribers, messages, sessions CASCADE;

CREATE TABLE users (
  id serial PRIMARY KEY,
  email varchar (255) unique,
  hashed_pass varchar (255)
);

CREATE TABLE channels (
  id serial PRIMARY KEY,
  name varchar (255),
  port int,
  is_private BOOLEAN,
  archive BOOLEAN
);

CREATE TABLE subscribers (
  id serial PRIMARY KEY,
  user_id int NOT NULL, 
  FOREIGN KEY(user_id) 
    REFERENCES users(id),
  channel_id int NOT NULL,
  FOREIGN KEY(channel_id)
    REFERENCES channels(id)
);

CREATE TABLE messages(
  id serial PRIMARY KEY,
  created_at varchar (255), 
  channel_id int NOT NULL, 
  FOREIGN KEY (channel_id)
    REFERENCES channels(id),
  user_id int NOT NULL,
  FOREIGN KEY (user_id)
    REFERENCES users(id)
);

CREATE TABLE sessions (
  id serial PRIMARY KEY,
  ssid varchar (255),
  user_id int NOT NULL,
  FOREIGN KEY (user_id) 
    REFERENCES users(id)
);