SELECT Users.user_id, CONCAT(UPPER(SUBSTR(Users.name, 1, 1)), LOWER(SUBSTR(Users.name, 2))) AS name
FROM Users
ORDER BY Users.user_id ASC;


-- カラムの最初の文字を取得して大文字にし、残りの文字を取得して小文字にするクエリ