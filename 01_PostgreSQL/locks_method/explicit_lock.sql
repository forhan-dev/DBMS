-- Session 1
SELECT balance 
FROM accounts
WHERE account_id = 1
FOR UPDATE;

-- Session 2 (blocked until Session 1 commits/rolls back)
UPDATE accounts 
SET balance = balance + 100 
WHERE account_id = 1;
