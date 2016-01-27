----
-- phpLiteAdmin database dump (http://phpliteadmin.googlecode.com)
-- phpLiteAdmin version: 1.9.5
-- Exported: 11:45am on January 27, 2016 (CET)
-- database file: /Applications/MAMP/db/sqlite/file_tracking
----
BEGIN TRANSACTION;

----
-- Table structure for user_account
----
CREATE TABLE 'user_account' ('user_id' TEXT PRIMARY KEY NOT NULL, 'user_name' TEXT, 'password' TEXT);

----
-- Data dump for user_account, a total of 0 rows
----

----
-- Table structure for master_record
----
CREATE TABLE 'master_record' ('file_id' TEXT PRIMARY KEY NOT NULL, 'created_by' TEXT, 'to' TEXT, 'description' TEXT);

----
-- Data dump for master_record, a total of 0 rows
----

----
-- Table structure for transaction
----
CREATE TABLE 'transaction' ('file_id' TEXT PRIMARY KEY NOT NULL, 'sender' TEXT, 'receiver' TEXT, 'status' TEXT, 'comment' TEXT, 'date' DATETIME DEFAULT CURRENT_DATE, 'time' DATETIME DEFAULT CURRENT_TIME);

----
-- Data dump for transaction, a total of 0 rows
----

----
-- structure for index sqlite_autoindex_user_account_1 on table user_account
----
;

----
-- structure for index sqlite_autoindex_master_record_1 on table master_record
----
;

----
-- structure for index sqlite_autoindex_transaction_1 on table transaction
----
;
COMMIT;
