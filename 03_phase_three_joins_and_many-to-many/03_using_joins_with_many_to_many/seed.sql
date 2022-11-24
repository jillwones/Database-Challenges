-- -------------------------------------------------------------
-- TablePlus 4.5.0(396)
--
-- https://tableplus.com/
--
-- Database: blog
-- Generation Time: 2022-05-11 14:52:14.0840
-- -------------------------------------------------------------


DROP TABLE IF EXISTS "public"."posts";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS posts_id_seq;

-- Table Definition
CREATE TABLE "public"."posts" (
    "id" SERIAL,
    "title" text,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."posts_tags";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."posts_tags" (
    "post_id" int4,
    "tag_id" int4
);

DROP TABLE IF EXISTS "public"."tags";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS tags_id_seq;

-- Table Definition
CREATE TABLE "public"."tags" (
    "id" SERIAL,
    "name" text,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."posts" ("id", "title") VALUES
(1, 'How to use Git'),
(2, 'Ruby classes'),
(3, 'Using IRB'),
(4, 'My weekend in Edinburgh'),
(5, 'The best chocolate cake EVER'),
(6, 'A foodie week in Spain'),
(7, 'SQL basics');

INSERT INTO "public"."posts_tags" ("post_id", "tag_id") VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 3),
(6, 2),
(7, 1),
(6, 3),
(2, 4),
(3, 4);

INSERT INTO "public"."tags" ("id", "name") VALUES
(1, 'coding'),
(2, 'travel'),
(3, 'cooking'),
(4, 'ruby');

ALTER TABLE "public"."posts_tags" ADD FOREIGN KEY ("tag_id") REFERENCES "public"."tags"("id");
ALTER TABLE "public"."posts_tags" ADD FOREIGN KEY ("post_id") REFERENCES "public"."posts"("id");