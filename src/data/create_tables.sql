BEGIN; 

DROP TABLE IF EXISTS "category", "article";

CREATE TABLE category (
"id"  INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
"name" VARCHAR(255) NOT NULL,
"createdAt" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
"updatedAt" TIMESTAMPTZ
);

CREATE TABLE article (
"id"  INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
"title" VARCHAR(255) NOT NULL,
"description" TEXT NOT NULL,
"category_id" INT NOT NULL REFERENCES "category"("id") ON DELETE CASCADE,
"createdAt" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
"updatedAt" TIMESTAMPTZ
);

COMMIT;