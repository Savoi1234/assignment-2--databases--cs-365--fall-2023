DROP DATABASE IF EXIST passwords;

CREATE DATABASE passwords;

USE passwords;

CREATE TABLE  IF NOT EXIST website_accounts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    website_name VARCHAR(255) NOT NULL,
    website_url VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARBINARY(255) NOT NULL, 
    comment TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO website_accounts (website_name, website_url, first_name, last_name, username, email, password, comment)
VALUES
 ('Reddit', 'https://www.reddit.com', 'Ella', 'Mason', 'ellamason', 'ella.mason@yahoo.com', AES_ENCRYPT('R3dd!tP@ssw0rd', 'secretkey'), 'Reddit account'),
('GitHub', 'https://www.github.com', 'Oliver', 'Taylor', 'olivertaylor', 'oliver.taylor@gmail.com', AES_ENCRYPT('G!tH@bP@ss123', 'secretkey'), 'GitHub developer account'),
('Wikipedia', 'https://www.wikipedia.org', 'Sophia', 'Morris', 'sophiamorris', 'sophia.morris@yahoo.com', AES_ENCRYPT('W!k!P3d!@P@ss', 'secretkey'), 'Wikipedia contributor account'),
('IMDb', 'https://www.imdb.com', 'Liam', 'White', 'liamwhite', 'liam.white@yahoo.com', AES_ENCRYPT('IMDbU$3rP@ss', 'secretkey'), 'IMDb movie reviewer account'),
('StackOverflow', 'https://stackoverflow.com', 'Ava', 'Harris', 'avaharris', 'ava.harris@gmail.com', AES_ENCRYPT('St@ckP@ssw0rd!', 'secretkey'), 'StackOverflow developer account'),
('Google', 'https://www.google.com', 'Noah', 'Martin', 'noahmartin', 'noah.martin@yahoo.com', AES_ENCRYPT('G00gl3P@ssw0rd', 'secretkey'), 'Google user account'),
('YouTube', 'https://www.youtube.com', 'Isabella', 'Thompson', 'isabellathompson', 'isabella.thompson@yahoo.com', AES_ENCRYPT('Y0uTub3P@ss!', 'secretkey'), 'YouTube creator account'),
('LinkedIn', 'https://www.linkedin.com', 'Ethan', 'Garcia', 'ethangarcia', 'ethan.garcia@yahoo.com', AES_ENCRYPT('L!nk3d!nP@ss123', 'secretkey'), 'LinkedIn professional account'),
('Instagram', 'https://www.instagram.com', 'Mia', 'Martinez', 'miamartinez', 'mia.martinez@yahoo.com', AES_ENCRYPT('Inst@gr@mP@ss!', 'secretkey'), 'Instagram influencer account'),
('Twitter', 'https://www.twitter.com', 'Lucas', 'Robinson', 'lucasrobinson', 'lucas.robinson@gmail.com', AES_ENCRYPT('Tw!tt3rP@ss123', 'secretkey'), 'Twitter user account')

;
