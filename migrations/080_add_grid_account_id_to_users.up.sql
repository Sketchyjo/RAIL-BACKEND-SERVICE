-- Add grid_account_id column to users table for Grid integration
ALTER TABLE users ADD COLUMN IF NOT EXISTS grid_account_id VARCHAR(64);

-- Create index for efficient lookups
CREATE INDEX IF NOT EXISTS idx_users_grid_account_id ON users(grid_account_id);
