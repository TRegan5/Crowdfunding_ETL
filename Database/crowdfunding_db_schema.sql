-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/D8IgWK
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "contacts" (
    "contact_id" INTEGER   NULL,
    "first_name" VARCHAR(50)   NULL,
    "last_name" VARCHAR(50)   NULL,
    "email" VARCHAR(50)   NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "category" (
    "category_id" VARCHAR   NULL,
    "category" VARCHAR(50)   NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR   NULL,
    "subcategory" VARCHAR(50)   NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" INTEGER   NULL,
    "contact_id" INTEGER   NULL,
    "company_name" VARCHAR(50)   NULL,
    "description" TEXT   NULL,
    "goal" FLOAT   NULL,
    "pledged" FLOAT   NULL,
    "outcome" VARCHAR(50)   NULL,
    "backers_count" INTEGER   NULL,
    "country" VARCHAR(50)   NULL,
    "currency" VARCHAR(50)   NULL,
    "launched_date" DATE   NULL,
    "end_date" DATE   NULL,
    "category_id" VARCHAR   NULL,
    "subcategory_id" VARCHAR   NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "contacts" ADD CONSTRAINT "fk_contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign" ("contact_id");

ALTER TABLE "category" ADD CONSTRAINT "fk_category_category_id" FOREIGN KEY("category_id")
REFERENCES "campaign" ("category_id");

ALTER TABLE "subcategory" ADD CONSTRAINT "fk_subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "campaign" ("subcategory_id");

