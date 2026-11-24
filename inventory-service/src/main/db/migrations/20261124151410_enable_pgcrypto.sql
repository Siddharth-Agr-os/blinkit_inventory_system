-- migrate:up
ENABLE EXTENSION IF NOT EXISTS pgcrypto;

-- migrate:down
DROP EXTENSION IF EXISTS pgcrypto;
