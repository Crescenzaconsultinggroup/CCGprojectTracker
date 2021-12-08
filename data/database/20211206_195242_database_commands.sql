ALTER TABLE "ccgprojecttracking$projectdetails_employee_2" DROP CONSTRAINT "uniq_ccgprojecttracking$projectdetails_employee_2_ccgprojecttracking$projectdetailsid";
DROP INDEX "idx_ccgprojecttracking$projectdetails_employee_2_ccgprojecttracking$employee_ccgprojecttracking$projectdetails";
ALTER TABLE "ccgprojecttracking$projectdetails_employee_2" RENAME TO "ccgprojecttracking$projectdetails_dataarchitect";
CREATE INDEX "idx_ccgprojecttracking$projectdetails_dataarchitect_ccgprojecttracking$employee_ccgprojecttracking$projectdetails" ON "ccgprojecttracking$projectdetails_dataarchitect" ("ccgprojecttracking$employeeid" ASC,"ccgprojecttracking$projectdetailsid" ASC);
ALTER TABLE "ccgprojecttracking$projectdetails_dataarchitect" ADD CONSTRAINT "uniq_ccgprojecttracking$projectdetails_dataarchitect_ccgprojecttracking$projectdetailsid" UNIQUE ("ccgprojecttracking$projectdetailsid");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_ccgprojecttracking$projectdetails_employee_2_ccgprojecttracking$projectdetailsid' AND "column_id" = '21597280-4c6f-3b28-aec5-dd4841756c22';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_ccgprojecttracking$projectdetails_dataarchitect_ccgprojecttracking$projectdetailsid', 
'3afc4543-63a2-4c5d-8f0f-58106e90eed7', 
'21597280-4c6f-3b28-aec5-dd4841756c22');
UPDATE "mendixsystem$association"
 SET "association_name" = 'CCGProjectTracking.ProjectDetails_DataArchitect', 
"table_name" = 'ccgprojecttracking$projectdetails_dataarchitect', 
"parent_entity_id" = '7e5a92cd-6a2a-45e7-877f-3e27f7e39873', 
"child_entity_id" = 'b31af98b-1bb0-450c-9ef0-706c48f5c6dd', 
"parent_column_name" = 'ccgprojecttracking$projectdetailsid', 
"child_column_name" = 'ccgprojecttracking$employeeid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_ccgprojecttracking$projectdetails_dataarchitect_ccgprojecttracking$employee_ccgprojecttracking$projectdetails'
 WHERE "id" = '3afc4543-63a2-4c5d-8f0f-58106e90eed7';
CREATE TABLE "ccgprojecttracking$projectdetails_businessco" (
	"ccgprojecttracking$projectdetailsid" BIGINT NOT NULL,
	"ccgprojecttracking$employeeid" BIGINT NOT NULL,
	PRIMARY KEY("ccgprojecttracking$projectdetailsid","ccgprojecttracking$employeeid"));
CREATE INDEX "idx_ccgprojecttracking$projectdetails_businessco_ccgprojecttracking$employee_ccgprojecttracking$projectdetails" ON "ccgprojecttracking$projectdetails_businessco" ("ccgprojecttracking$employeeid" ASC,"ccgprojecttracking$projectdetailsid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('60169a75-c7a5-49f1-a235-4808e146ebfb', 
'CCGProjectTracking.ProjectDetails_BusinessCo', 
'ccgprojecttracking$projectdetails_businessco', 
'7e5a92cd-6a2a-45e7-877f-3e27f7e39873', 
'b31af98b-1bb0-450c-9ef0-706c48f5c6dd', 
'ccgprojecttracking$projectdetailsid', 
'ccgprojecttracking$employeeid', 
'idx_ccgprojecttracking$projectdetails_businessco_ccgprojecttracking$employee_ccgprojecttracking$projectdetails');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211206 19:52:42';
