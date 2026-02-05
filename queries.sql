

-- USER
INSERT INTO "User" ("username", "email", "password", "user_role") 
    VALUES
        ('sam', 'sam@gmail.com', 'sam12R', 'admin'),
        ('kevin', 'kevin@gmail.com', 'kevin@R', 'user'),
        ('peter', 'peter@gmail.com', 'Pete12', 'user');



SELECT * FROM "User" WHERE "username" = 'kevin';

SELECT "id"  FROM "User" WHERE "username" = 'sam' AND "email" = 'sam@gmail.com';

UPDATE "User" SET "email" = 'kevin2@gmail.com' WHERE "username" = 'kevin';


DELETE FROM "User" WHERE "username" = 'peter';




-- EXPENSE
INSERT INTO "Expense" ("name", "description", "amount", "expense_type", "user_id")
    VALUES 
        ('Phone Bill', 'Monthly phone bill', 200,'need', (SELECT "id"  FROM "User" WHERE "username" = 'sam' AND "email" = 'sam@gmail.com')),
        ('Food', 'Monthly food cost', 122,'want',  (SELECT "id"  FROM "User" WHERE "username" = 'sam' AND "email" = 'sam@gmail.com')),
        ('fuel', 'Today fuel cost', 1000,'need',  (SELECT "id"  FROM "User" WHERE "username" = 'sam' AND "email" = 'sam@gmail.com'));


SELECT "name", "amount" FROM "Expense" WHERE  "amount" = (SELECT MAX("amount") FROM "Expense" GROUP BY "amount");

UPDATE "Expense" SET "amount" = 255 WHERE "name" = 'Food';


DELETE FROM "Expense" WHERE "name" = 'fuel';



-- TASK
INSERT INTO "Task" ("name", "description","user_id") VALUES
    ('write', 'writing a novel',(SELECT "id"  FROM "User" WHERE "username" = 'sam' AND "email" = 'sam@gmail.com')),
    ('read', 'reading a paper', (SELECT "id"  FROM "User" WHERE "username" = 'sam' AND "email" = 'sam@gmail.com')),
    ('draw', 'draw a house', (SELECT "id"  FROM "User" WHERE "username" = 'sam' AND "email" = 'sam@gmail.com'));

SELECT "name", "description" FROM "Task" WHERE  "description" LIKE '%writing%';

UPDATE "Task" SET "description" = 'reading a news paper' WHERE "name" = 'read';


DELETE FROM "Task" WHERE "name" = 'draw';

-- TRAVEL
INSERT INTO "Travel" ("name", "description","milage" ,"user_id") VALUES
    ('Colombo', 'company meeting',202,(SELECT "id"  FROM "User" WHERE "username" = 'sam' AND "email" = 'sam@gmail.com')),
    ('Medawachchiya', 'work',20 ,(SELECT "id"  FROM "User" WHERE "username" = 'sam' AND "email" = 'sam@gmail.com')),
    ('Anuradhapura', 'lecture', 22, (SELECT "id"  FROM "User" WHERE "username" = 'sam' AND "email" = 'sam@gmail.com'));

SELECT "name", "description" FROM "Travel" WHERE  "description" LIKE '%company%';

UPDATE "Travel" SET "description" = 'Company meeting' WHERE "name" = 'Colombo';


DELETE FROM "Travel" WHERE "name" = 'Medawachchiya';
