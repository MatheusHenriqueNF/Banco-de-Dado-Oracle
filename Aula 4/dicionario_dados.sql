SELECT DISTINCT object_type
FROM user_objects;

DESC user_objects;

SELECT object_name, object_type
FROM user_objects WHERE object_type = 'TABLE';

SELECT object_name, object_type
FROM all_objects;