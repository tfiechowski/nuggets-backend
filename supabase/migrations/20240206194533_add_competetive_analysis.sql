CREATE TABLE "competitor_notes" (
  "id" uuid default uuid_generate_v4(),
  "account_id" uuid references basejump.accounts on delete cascade,
  "competitor_name" VARCHAR(128),
  "content" TEXT,
  "created_at" TIMESTAMPTZ DEFAULT NOW(),

  primary key (id)
);