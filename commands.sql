-- commands.sql
USE passwords;

-- 1. Create a new entry
INSERT INTO website_accounts (website_name, website_url, first_name, last_name, username, email, password, comment)
VALUES ('NewSite', 'https://newsite.com', 'Tom', 'Cruise', 'tomcruise', 'tom.cruise@example.com', AES_ENCRYPT('newpassword', 'secretkey'), 'New entry comment');

-- 2. Get the password associated with the URL of one of the entries
SELECT AES_DECRYPT(password, 'secretkey') AS decrypted_password FROM website_accounts WHERE website_url = 'https://www.reddit.com';
SELECT CAST(AES_DECRYPT(password,'secretkey', @init_vector) AS CHAR) AS 'Plain Text Password' FROM website_accounts LIMIT 1; 

-- 3. Get all the password-related data, including the password, associated with URLs that have https
SELECT website_url, AES_DECRYPT(password, 'secretkey') AS decrypted_password, comment FROM website_accounts WHERE website_url LIKE 'https://%';
SELECT CAST(AES_DECRYPT(password,'secretkey', @init_vector) AS CHAR) AS 'Plain Text Password' FROM website_accounts LIMIT 2; 

-- 4. Change a URL associated with one of the passwords
UPDATE website_accounts SET website_url = 'https://stackoverflowss.com'WHERE AES_DECRYPT(password, 'secretkey') = 'St@ckP@ssw0rd!';

-- 5. Change any password
UPDATE website_accounts SET password = AES_ENCRYPT('githubpassword', 'secretkey') WHERE website_url = 'https://www.github.com';

-- 6. Remove a URL
DELETE FROM website_accounts WHERE website_url = 'https://newsite.com';

-- 7. Remove a password (Setting it to null)
UPDATE website_accounts SET password = NULL WHERE website_url = 'https://www.wikipedia.org';

