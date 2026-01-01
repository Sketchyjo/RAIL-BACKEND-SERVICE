-- Remove grid_account_id column from users table
DROP INDEX IF EXISTS idx_users_grid_account_id;
ALTER TABLE users DROP COLUMN IF EXISTS grid_account_id;
