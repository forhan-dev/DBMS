-- Create a profile
CREATE PROFILE secure_profile LIMIT
    FAILED_LOGIN_ATTEMPTS 3
    PASSWORD_LIFE_TIME 30;

-- Check if profile exists
SELECT profile 
FROM dba_profiles 
WHERE profile = 'SECURE_PROFILE';


-- Assign profile to a user
ALTER USER trainee_user 
PROFILE secure_profile;

-- Drop profile with cascade
DROP PROFILE secure_profile 
CASCADE;
