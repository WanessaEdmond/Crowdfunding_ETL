<<<<<<< HEAD
﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/tjys9X
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(25)   NOT NULL,
    "Last_name" varchar(25)   NOT NULL,
    "email" varchar(50)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(25)   NOT NULL,
    "description" varchar(50)   NOT NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" varchar(15)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(4)   NOT NULL,
    "currency" varchar(4)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_ids" varchar(5)   NOT NULL,
    "subcategory_ids" varchar(10)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_ids" varchar(5)   NOT NULL,
    "category" varchar(25)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_ids"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_ids" varchar(10)   NOT NULL,
    "subcategory" varchar(25)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_ids"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_ids" FOREIGN KEY("category_ids")
REFERENCES "category" ("category_ids");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_ids" FOREIGN KEY("subcategory_ids")
REFERENCES "subcategory" ("subcategory_ids");

=======
﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/tjys9X
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(25)   NOT NULL,
    "Last_name" varchar(25)   NOT NULL,
    "email" varchar(40)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(25)   NOT NULL,
    "description" varchar(50)   NOT NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" varchar(15)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(4)   NOT NULL,
    "currency" varchar(4)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_ids" varchar(5)   NOT NULL,
    "subcategory_ids" varchar(10)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_ids" varchar(5)   NOT NULL,
    "category" varchar(25)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_ids"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_ids" varchar(10)   NOT NULL,
    "subcategory" varchar(25)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_ids"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_ids" FOREIGN KEY("category_ids")
REFERENCES "category" ("category_ids");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_ids" FOREIGN KEY("subcategory_ids")
REFERENCES "subcategory" ("subcategory_ids");

>>>>>>> 5e1a5287b1ae8990cf0d9fd275e59e45bf41a9c6
