-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/tjys9X
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [contacts] (
    [contact_id] int  NOT NULL ,
    [first_name] varchar(25)  NOT NULL ,
    [Last_name] varchar(25)  NOT NULL ,
    [email] varchar(40)  NOT NULL ,
    CONSTRAINT [PK_contacts] PRIMARY KEY CLUSTERED (
        [contact_id] ASC
    )
)

CREATE TABLE [campaign] (
    [cf_id] int  NOT NULL ,
    [contact_id] int  NOT NULL ,
    [company_name] varchar(25)  NOT NULL ,
    [description] varchar(50)  NOT NULL ,
    [goal] int  NOT NULL ,
    [pledged] int  NOT NULL ,
    [outcome] varchar(15)  NOT NULL ,
    [backers_count] int  NOT NULL ,
    [country] varchar(4)  NOT NULL ,
    [currency] varchar(4)  NOT NULL ,
    [launched_date] date  NOT NULL ,
    [end_date] date  NOT NULL ,
    [category_ids] varchar(5)  NOT NULL ,
    [subcategory_ids] varchar(10)  NOT NULL ,
    CONSTRAINT [PK_campaign] PRIMARY KEY CLUSTERED (
        [cf_id] ASC
    )
)

CREATE TABLE [category] (
    [category_ids] varchar(5)  NOT NULL ,
    [category] varchar(25)  NOT NULL ,
    CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED (
        [category_ids] ASC
    )
)

CREATE TABLE [subcategory] (
    [subcategory_ids] varchar(10)  NOT NULL ,
    [subcategory] varchar(25)  NOT NULL ,
    CONSTRAINT [PK_subcategory] PRIMARY KEY CLUSTERED (
        [subcategory_ids] ASC
    )
)

ALTER TABLE [campaign] WITH CHECK ADD CONSTRAINT [FK_campaign_contact_id] FOREIGN KEY([contact_id])
REFERENCES [contacts] ([contact_id])

ALTER TABLE [campaign] CHECK CONSTRAINT [FK_campaign_contact_id]

ALTER TABLE [campaign] WITH CHECK ADD CONSTRAINT [FK_campaign_category_ids] FOREIGN KEY([category_ids])
REFERENCES [category] ([category_ids])

ALTER TABLE [campaign] CHECK CONSTRAINT [FK_campaign_category_ids]

ALTER TABLE [campaign] WITH CHECK ADD CONSTRAINT [FK_campaign_subcategory_ids] FOREIGN KEY([subcategory_ids])
REFERENCES [subcategory] ([subcategory_ids])

ALTER TABLE [campaign] CHECK CONSTRAINT [FK_campaign_subcategory_ids]

COMMIT TRANSACTION QUICKDBD