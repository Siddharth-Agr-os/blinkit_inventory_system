-- migrate:up
CREATE TABLE IF NOT EXISTS users (
    user_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    email_id TEXT NOT NULL UNIQUE,
    phone_number TEXT NOT NULL UNIQUE,
    password_hash TEXT NOT NULL UNIQUE, 
    store_address TEXT,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- migrate:down
DROP TABLE IF EXISTS users;
