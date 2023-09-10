-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/tjys9X
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(25)   NOT NULL,
    "Last_name" varchar(25)   NOT NULL,
    "email" varchar(70)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(100)   NOT NULL,
    "description" varchar(200)   NOT NULL,
    "goal" float  NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(20)   NOT NULL,
    "currency" varchar(20)   NOT NULL,
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

SELECT * 
FROM contacts as c
Limit 5;

SELECT * 
FROM campaign as c
Limit 5;

SELECT * 
FROM category as c
Limit 5;

SELECT * 
FROM subcategory as c
Limit 5;

SELECT cpg.backers_count, cpg.cf_id, cpg.outcome
FROM campaign as cpg
WHERE (cpg.outcome = 'live')
ORDER BY cpg.backers_count DESC;

SELECT  c.first_name, c.email, d.goal, d.outcome
FROM contacts as c
Inner JOIN campaign as d ON c.contact_id = d.contact_id 
