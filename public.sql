-- ----------------------------
-- Sequence structure for komandirovki_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."komandirovki_id_seq";
CREATE SEQUENCE "public"."komandirovki_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for transactions23_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."transactions23_id_seq";
CREATE SEQUENCE "public"."transactions23_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_id_seq";
CREATE SEQUENCE "public"."users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS "public"."banks";
CREATE TABLE "public"."banks" (
  "bik" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "corr_number" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for checks
-- ----------------------------
DROP TABLE IF EXISTS "public"."checks";
CREATE TABLE "public"."checks" (
  "id" int4 NOT NULL DEFAULT nextval('transactions23_id_seq'::regclass),
  "account_number" varchar COLLATE "pg_catalog"."default",
  "transaction_id" varchar COLLATE "pg_catalog"."default",
  "operation_type" varchar COLLATE "pg_catalog"."default",
  "operation_category" varchar COLLATE "pg_catalog"."default",
  "status" varchar COLLATE "pg_catalog"."default",
  "creation_date" varchar COLLATE "pg_catalog"."default",
  "authorization_date" varchar COLLATE "pg_catalog"."default",
  "transaction_date" varchar COLLATE "pg_catalog"."default",
  "original_operation_id" varchar COLLATE "pg_catalog"."default",
  "operation_amount_in_currency" varchar COLLATE "pg_catalog"."default",
  "operation_currency" varchar COLLATE "pg_catalog"."default",
  "amount_in_account_currency" varchar COLLATE "pg_catalog"."default",
  "counterparty" varchar COLLATE "pg_catalog"."default",
  "counterparty_inn" varchar COLLATE "pg_catalog"."default",
  "counterparty_kpp" varchar COLLATE "pg_catalog"."default",
  "counterparty_account" varchar COLLATE "pg_catalog"."default",
  "counterparty_bank_bik" varchar COLLATE "pg_catalog"."default",
  "counterparty_bank_corr_account" varchar COLLATE "pg_catalog"."default",
  "counterparty_bank_name" varchar COLLATE "pg_catalog"."default",
  "payment_purpose" varchar COLLATE "pg_catalog"."default",
  "payment_number" varchar COLLATE "pg_catalog"."default",
  "sequence" varchar COLLATE "pg_catalog"."default",
  "code" varchar COLLATE "pg_catalog"."default",
  "card_number" varchar COLLATE "pg_catalog"."default",
  "mcc" varchar COLLATE "pg_catalog"."default",
  "place_of_transaction_city" varchar COLLATE "pg_catalog"."default",
  "place_of_transaction_country" varchar COLLATE "pg_catalog"."default",
  "organization_address" varchar COLLATE "pg_catalog"."default",
  "bank" varchar COLLATE "pg_catalog"."default",
  "document_creator_status" varchar COLLATE "pg_catalog"."default",
  "budget_classification_code" varchar COLLATE "pg_catalog"."default",
  "oktmo_code" varchar COLLATE "pg_catalog"."default",
  "tax_payment_basis" varchar COLLATE "pg_catalog"."default",
  "tax_period_customs_code" varchar COLLATE "pg_catalog"."default",
  "tax_document_number" varchar COLLATE "pg_catalog"."default",
  "tax_document_date" varchar COLLATE "pg_catalog"."default",
  "tax_payment_type" varchar COLLATE "pg_catalog"."default",
  "transaction_relation_id" int4
)
;

-- ----------------------------
-- Table structure for komandirovki
-- ----------------------------
DROP TABLE IF EXISTS "public"."komandirovki";
CREATE TABLE "public"."komandirovki" (
  "id" int4 NOT NULL DEFAULT nextval('komandirovki_id_seq'::regclass),
  "fio" varchar(255) COLLATE "pg_catalog"."default",
  "date_start" date,
  "date_end" date
)
;

-- ----------------------------
-- Table structure for mcc
-- ----------------------------
DROP TABLE IF EXISTS "public"."mcc";
CREATE TABLE "public"."mcc" (
  "code" varchar(255) COLLATE "pg_catalog"."default",
  "explanation" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for receipts
-- ----------------------------
DROP TABLE IF EXISTS "public"."receipts";
CREATE TABLE "public"."receipts" (
  "id" int4 NOT NULL,
  "fd" varchar(255) COLLATE "pg_catalog"."default",
  "fp" varchar(255) COLLATE "pg_catalog"."default",
  "fn" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS "public"."transactions";
CREATE TABLE "public"."transactions" (
  "id" int4 NOT NULL DEFAULT nextval('transactions23_id_seq'::regclass),
  "account_number" varchar COLLATE "pg_catalog"."default",
  "transaction_id" varchar COLLATE "pg_catalog"."default",
  "operation_type" varchar COLLATE "pg_catalog"."default",
  "operation_category" varchar COLLATE "pg_catalog"."default",
  "status" varchar COLLATE "pg_catalog"."default",
  "creation_date" date,
  "authorization_date" date,
  "transaction_date" date,
  "original_operation_id" varchar COLLATE "pg_catalog"."default",
  "operation_amount_in_currency" varchar COLLATE "pg_catalog"."default",
  "operation_currency" varchar COLLATE "pg_catalog"."default",
  "amount_in_account_currency" varchar COLLATE "pg_catalog"."default",
  "counterparty" varchar COLLATE "pg_catalog"."default",
  "counterparty_inn" varchar COLLATE "pg_catalog"."default",
  "counterparty_kpp" varchar COLLATE "pg_catalog"."default",
  "counterparty_account" varchar COLLATE "pg_catalog"."default",
  "counterparty_bank_bik" varchar COLLATE "pg_catalog"."default",
  "counterparty_bank_corr_account" varchar COLLATE "pg_catalog"."default",
  "counterparty_bank_name" varchar COLLATE "pg_catalog"."default",
  "payment_purpose" varchar COLLATE "pg_catalog"."default",
  "payment_number" varchar COLLATE "pg_catalog"."default",
  "sequence" varchar COLLATE "pg_catalog"."default",
  "code" varchar COLLATE "pg_catalog"."default",
  "card_number" varchar COLLATE "pg_catalog"."default",
  "mcc" varchar COLLATE "pg_catalog"."default",
  "place_of_transaction_city" varchar COLLATE "pg_catalog"."default",
  "place_of_transaction_country" varchar COLLATE "pg_catalog"."default",
  "organization_address" varchar COLLATE "pg_catalog"."default",
  "bank" varchar COLLATE "pg_catalog"."default",
  "document_creator_status" varchar COLLATE "pg_catalog"."default",
  "budget_classification_code" varchar COLLATE "pg_catalog"."default",
  "oktmo_code" varchar COLLATE "pg_catalog"."default",
  "tax_payment_basis" varchar COLLATE "pg_catalog"."default",
  "tax_period_customs_code" varchar COLLATE "pg_catalog"."default",
  "tax_document_number" varchar COLLATE "pg_catalog"."default",
  "tax_document_date" varchar COLLATE "pg_catalog"."default",
  "tax_payment_type" varchar COLLATE "pg_catalog"."default",
  "komandirovka_id" int4
)
;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id" int4 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- View structure for counterparties
-- ----------------------------
DROP VIEW IF EXISTS "public"."counterparties";
CREATE VIEW "public"."counterparties" AS  WITH adas AS (
         SELECT transactions.counterparty,
            transactions.counterparty_inn,
            transactions.counterparty_kpp,
            transactions.counterparty_bank_bik,
            transactions.counterparty_bank_corr_account,
            transactions.counterparty_bank_name
           FROM transactions
          GROUP BY transactions.counterparty, transactions.counterparty_inn, transactions.counterparty_kpp, transactions.counterparty_bank_bik, transactions.counterparty_bank_corr_account, transactions.counterparty_bank_name
        )
 SELECT adas.counterparty,
    adas.counterparty_inn,
    adas.counterparty_kpp,
    adas.counterparty_bank_bik,
    adas.counterparty_bank_corr_account,
    COALESCE(adas.counterparty_bank_name, banks.name) AS counterparty_bank_name
   FROM adas
     LEFT JOIN banks ON adas.counterparty_bank_bik::text = banks.bik::text;

-- ----------------------------
-- View structure for transactions_view
-- ----------------------------
DROP VIEW IF EXISTS "public"."transactions_view";
CREATE VIEW "public"."transactions_view" AS  SELECT transactions.id,
    transactions.account_number,
    transactions.transaction_id,
    transactions.operation_type,
    transactions.operation_category,
    transactions.status,
    transactions.creation_date,
    transactions.authorization_date,
    transactions.transaction_date,
    transactions.original_operation_id,
    transactions.operation_amount_in_currency,
    transactions.operation_currency,
    transactions.amount_in_account_currency,
    transactions.counterparty,
    transactions.counterparty_inn,
    transactions.counterparty_kpp,
    transactions.counterparty_account,
    transactions.counterparty_bank_bik,
    transactions.counterparty_bank_corr_account,
    transactions.counterparty_bank_name,
    transactions.payment_purpose,
    transactions.payment_number,
    transactions.sequence,
    transactions.code,
    transactions.card_number,
    transactions.mcc,
    transactions.place_of_transaction_city,
    transactions.place_of_transaction_country,
    transactions.organization_address,
    transactions.bank,
    transactions.document_creator_status,
    transactions.budget_classification_code,
    transactions.oktmo_code,
    transactions.tax_payment_basis,
    transactions.tax_period_customs_code,
    transactions.tax_document_number,
    transactions.tax_document_date,
    transactions.tax_payment_type,
    transactions.komandirovka_id,
        CASE
            WHEN (EXISTS ( SELECT receipts.id
               FROM receipts
              WHERE receipts.id = transactions.id)) THEN 'ok'::text
            ELSE 'fail'::text
        END AS confirmation_status
   FROM transactions;


-- ----------------------------
-- View structure for komandirovki_view
-- ----------------------------
DROP VIEW IF EXISTS "public"."komandirovki_view";
CREATE VIEW "public"."komandirovki_view" AS  SELECT k.id,
    k.fio,
    k.date_start,
    k.date_end,
    COALESCE(t.total, 0::bigint) AS total,
    COALESCE(tv.failed, 0::bigint) AS failed
   FROM komandirovki k
     LEFT JOIN ( SELECT transactions.komandirovka_id,
            count(*) AS total
           FROM transactions
          GROUP BY transactions.komandirovka_id) t ON k.id = t.komandirovka_id
     LEFT JOIN ( SELECT transactions_view.komandirovka_id,
            count(*) AS failed
           FROM transactions_view
          WHERE transactions_view.confirmation_status = 'fail'::text
          GROUP BY transactions_view.komandirovka_id) tv ON k.id = tv.komandirovka_id;

-- ----------------------------
-- View structure for transactions_with_receipts
-- ----------------------------
DROP VIEW IF EXISTS "public"."transactions_with_receipts";
CREATE VIEW "public"."transactions_with_receipts" AS  SELECT transactions.id,
    transactions.account_number,
    transactions.transaction_id,
    transactions.operation_type,
    transactions.operation_category,
    transactions.status,
    transactions.creation_date,
    transactions.authorization_date,
    transactions.transaction_date,
    transactions.original_operation_id,
    transactions.operation_amount_in_currency,
    transactions.operation_currency,
    transactions.amount_in_account_currency,
    transactions.counterparty,
    transactions.counterparty_inn,
    transactions.counterparty_kpp,
    transactions.counterparty_account,
    transactions.counterparty_bank_bik,
    transactions.counterparty_bank_corr_account,
    transactions.counterparty_bank_name,
    transactions.payment_purpose,
    transactions.payment_number,
    transactions.sequence,
    transactions.code,
    transactions.card_number,
    transactions.mcc,
    transactions.place_of_transaction_city,
    transactions.place_of_transaction_country,
    transactions.organization_address,
    transactions.bank,
    transactions.document_creator_status,
    transactions.budget_classification_code,
    transactions.oktmo_code,
    transactions.tax_payment_basis,
    transactions.tax_period_customs_code,
    transactions.tax_document_number,
    transactions.tax_document_date,
    transactions.tax_payment_type,
    transactions.komandirovka_id,
    receipts.id AS receipt_id,
    receipts.fd AS receipt_fd,
    receipts.fp AS receipt_fp,
    receipts.fn AS receipt_fn
   FROM transactions
     LEFT JOIN receipts ON transactions.id = receipts.id;

-- ----------------------------
-- Function structure for count_noncorfirmed_transactions
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."count_noncorfirmed_transactions"();
CREATE OR REPLACE FUNCTION "public"."count_noncorfirmed_transactions"()
  RETURNS "pg_catalog"."int4" AS $BODY$
	DECLARE
		res int4;
	BEGIN
	-- Routine body goes here...
	SELECT COUNT(*) FROM transactions_view WHERE confirmation_status = 'fail' INTO res;
	RETURN res; 
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for count_noncorfirmed_transactions
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."count_noncorfirmed_transactions"("kid" int4);
CREATE OR REPLACE FUNCTION "public"."count_noncorfirmed_transactions"("kid" int4)
  RETURNS "pg_catalog"."int4" AS $BODY$
	DECLARE
		res int4;
	BEGIN
	-- Routine body goes here...
	SELECT COUNT(*) FROM transactions_view WHERE confirmation_status = 'fail' AND komandirovka_id=kid INTO res;
	RETURN res; 
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_paginated_transactions
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_paginated_transactions"("kid" int4, "current_page" int4, "rows_per_page" int4);
CREATE OR REPLACE FUNCTION "public"."get_paginated_transactions"("kid" int4, "current_page" int4, "rows_per_page" int4=10)
  RETURNS SETOF "public"."transactions_view" AS $BODY$
	DECLARE
    offset_val int4;
	BEGIN
	-- Calculate the offset for pagination
    offset_val := (current_page - 1) * rows_per_page;

    RETURN QUERY
    SELECT *
    FROM transactions_view
		WHERE komandirovka_id = kid
    ORDER BY id
    LIMIT rows_per_page
    OFFSET offset_val;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_paginated_trips
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_paginated_trips"("current_page" int4, "rows_per_page" int4);
CREATE OR REPLACE FUNCTION "public"."get_paginated_trips"("current_page" int4, "rows_per_page" int4=10)
  RETURNS SETOF "public"."komandirovki_view" AS $BODY$
	DECLARE
    offset_val int4;
	BEGIN
	-- Calculate the offset for pagination
    offset_val := (current_page - 1) * rows_per_page;

    RETURN QUERY
    SELECT *
    FROM komandirovki_view
    ORDER BY id
    LIMIT rows_per_page
    OFFSET offset_val;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."komandirovki_id_seq"
OWNED BY "public"."komandirovki"."id";
SELECT setval('"public"."komandirovki_id_seq"', 25, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."transactions23_id_seq"
OWNED BY "public"."transactions"."id";
SELECT setval('"public"."transactions23_id_seq"', 1136, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_id_seq"
OWNED BY "public"."users"."id";
SELECT setval('"public"."users_id_seq"', 1, false);

-- ----------------------------
-- Primary Key structure for table banks
-- ----------------------------
ALTER TABLE "public"."banks" ADD CONSTRAINT "banks_pkey" PRIMARY KEY ("bik");

-- ----------------------------
-- Indexes structure for table checks
-- ----------------------------
CREATE INDEX "ix_transactions23_id_copy1" ON "public"."checks" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table checks
-- ----------------------------
ALTER TABLE "public"."checks" ADD CONSTRAINT "transactions23_copy1_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table komandirovki
-- ----------------------------
ALTER TABLE "public"."komandirovki" ADD CONSTRAINT "komandirovki_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table receipts
-- ----------------------------
ALTER TABLE "public"."receipts" ADD CONSTRAINT "receipts_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table transactions
-- ----------------------------
CREATE INDEX "ix_transactions23_id" ON "public"."transactions" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table transactions
-- ----------------------------
ALTER TABLE "public"."transactions" ADD CONSTRAINT "transactions23_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table checks
-- ----------------------------
ALTER TABLE "public"."checks" ADD CONSTRAINT "transaction_relation_id_rel" FOREIGN KEY ("transaction_relation_id") REFERENCES "public"."transactions" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table transactions
-- ----------------------------
ALTER TABLE "public"."transactions" ADD CONSTRAINT "komandirovka_id_rel" FOREIGN KEY ("komandirovka_id") REFERENCES "public"."komandirovki" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO "banks" ("bik", "corr_number", "name") VALUES ('044525593', '30101810200000000593', 'АО "АЛЬФА-БАНК"');
INSERT INTO "banks" ("bik", "corr_number", "name") VALUES ('044525974', '30101810145250000974', 'АО "Тинькофф Банк"');
INSERT INTO "banks" ("bik", "corr_number", "name") VALUES ('044525225', '30101810400000000225', 'ПАО Сбербанк');
INSERT INTO "banks" ("bik", "corr_number", "name") VALUES ('044525187', '30101810700000000187', 'Банк ВТБ (ПАО)');
INSERT INTO "banks" ("bik", "corr_number", "name") VALUES ('044525068', '30101810645374525068', 'ООО "ОЗОН Банк"');

INSERT INTO "mcc" ("code", "explanation") VALUES ('763', 'Сельскохозяйственные кооперативы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('780', 'Услуги садоводства и ландшафтного дизайна');
INSERT INTO "mcc" ("code", "explanation") VALUES ('1520', 'Генеральные подрядчики – жилое и коммерческое строительство');
INSERT INTO "mcc" ("code", "explanation") VALUES ('1711', 'Генеральные подрядчики по вентиляции');
INSERT INTO "mcc" ("code", "explanation") VALUES ('1731', 'Подрядчики по электричеству');
INSERT INTO "mcc" ("code", "explanation") VALUES ('1740', 'Изоляция');
INSERT INTO "mcc" ("code", "explanation") VALUES ('1750', 'Столярные работы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('1761', 'Кровельные и сайдинговые работы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('1771', 'Подрядчики бетонных работ');
INSERT INTO "mcc" ("code", "explanation") VALUES ('1799', 'Контрактные услуги – нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('2741', 'Различные издательства/ печатное дело');
INSERT INTO "mcc" ("code", "explanation") VALUES ('2791', 'Набор текстов');
INSERT INTO "mcc" ("code", "explanation") VALUES ('2842', 'Санитарная обработка');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3000', 'United Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3001', 'American Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3002', 'Pan American');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3003', 'Eurofly');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3004', 'Dragonair');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3005', 'British Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3006', 'Japan Air Lines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3007', 'Air France');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3008', 'Lufthansa');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3009', 'Air Canada');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3010', 'Royal Dutch Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3011', 'Аэрофлот');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3012', 'Qantas');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3013', 'Alitalia');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3014', 'Saudi Arabian Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3015', 'Swiss International Air Lines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3016', 'Scandinavian Airline System');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3017', 'South African Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3018', 'Varig (Бразилия)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3019', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3020', 'Air India');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3021', 'Air Algerie');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3022', 'Philippine Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3023', 'Mexicana');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3024', 'Pakistan International');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3025', 'Air New Zealand Limited International');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3026', 'Emirates Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3027', 'Union de Transports Aeriens');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3028', 'Air Malta');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3029', 'SN Brussels Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3030', 'Aerolineas Argentinas');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3031', 'Olympic Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3032', 'El Al');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3033', 'Ansett Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3034', 'Etihad Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3035', 'Tap (Португалия)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3036', 'VASP (Бразилия)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3037', 'EgyptAir');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3038', 'Kuwait Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3039', 'Avianca');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3040', 'Gulf Air (Бахрейн)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3041', 'Balkan—Bulgarian Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3042', 'Finnair');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3043', 'Aer Lingus');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3044', 'Air Lanka');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3045', 'Nigeria Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3046', 'Cruzeiro do Sul (Бразилия)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3047', 'Turkish Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3048', 'Royal Air Maroc');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3049', 'Tunis Air');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3050', 'Icelandair');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3051', 'Austrian Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3052', 'LAN Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3053', 'AVIACO (Испания)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3054', 'LADECO (Чили)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3055', 'LAB (Боливия)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3056', 'Jet Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3057', 'Virgin America');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3058', 'Delta');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3059', 'DBA Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3060', 'Northwest Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3061', 'Continental');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3062', 'Hapag-Lloyd Express');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3063', 'U.S. Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3064', 'Adria Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3065', 'Air Inter');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3066', 'Southwest Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3067', 'Vanguard Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3068', 'Air Astana');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3069', 'Sun Country Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3071', 'Air British Columbia');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3072', 'Cebu Pacific');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3073', 'Air Cal');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3075', 'Singapore Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3076', 'Aeromexico');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3077', 'Thai Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3078', 'China Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3079', 'Jetstar Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3081', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3082', 'Korean Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3083', 'Air Afrique');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3084', 'Eva Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3085', 'Midwest Express Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3086', 'Carnival Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3087', 'Metro Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3088', 'Croatia Air');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3089', 'Transaero');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3090', 'Uni Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3092', 'Midway Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3093', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3094', 'Zambia Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3095', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3096', 'Air Zimbabwe');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3097', 'Spanair');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3098', 'Asiana Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3099', 'Cathay Pacific');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3100', 'Malaysian Airline System');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3101', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3102', 'Iberia');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3103', 'Garuda (Индонезия)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3104', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3105', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3106', 'Braathens S.A.F.E. (Норвегия)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3107', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3109', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3110', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3111', 'British Midland');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3112', 'Windward Island');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3113', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3114', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3115', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3116', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3117', 'Venezolana International de Aviacion');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3118', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3119', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3120', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3121', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3122', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3123', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3124', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3125', 'Tan Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3126', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3127', 'Taca International');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3128', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3129', 'Surinam Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3130', 'Sunworld International Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3131', 'VLM Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3132', 'Frontier Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3133', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3134', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3135', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3136', 'Qatar Airways Company W.L.L.');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3137', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3138', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3139', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3140', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3141', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3142', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3143', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3144', 'Virgin Atlantic');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3145', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3146', 'Luxair');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3147', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3148', 'Air Littoral');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3150', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3151', 'Air Zaire');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3152', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3153', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3154', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3155', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3156', 'GO FLY Ltd.');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3157', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3158', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3159', 'Provincetown-Boston Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3160', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3161', 'All Nippon Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3162', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3163', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3164', 'Norontair');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3165', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3166', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3167', 'Aero Continente');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3168', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3169', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3170', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3171', 'Canadian Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3172', 'Nation Air');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3173', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3174', 'JetBlue Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3175', 'Middle East Air');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3176', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3177', 'AirTran Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3178', 'Mesa Air');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3179', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3180', 'Westjet Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3181', 'Malev Hungarian Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3182', 'LOT – Polish Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3183', 'Oman Aviation Services');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3184', 'LIAT');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3185', 'LAV Linea Aeropostal Venezolana');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3186', 'LAP Lineas Aereas Paraguayas');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3187', 'LACSA (Коста Рика)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3188', 'Virgin Express');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3189', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3190', 'Jugoslav Air');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3191', 'Island Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3192', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3193', 'Indian Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3194', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3195', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3196', 'Hawaiian Air');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3197', 'Havasu Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3198', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3199', 'Servicios Aereos Militares');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3200', 'Guyana Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3201', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3202', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3203', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3204', 'Freedom Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3205', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3206', 'China Eastern Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3207', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3208', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3209', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3210', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3211', 'Norwegian Air Shuttle');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3212', 'Dominicana de Aviacion');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3213', 'Braathens Regional Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3214', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3215', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3216', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3217', 'CSA Ceskoslovenske Aerolinie');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3218', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3219', 'Compania Panamena de Aviacion');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3220', 'Compania Faucett');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3221', 'Transportes Aeros Militares Ecuatorianos');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3222', 'Command Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3223', 'Comair');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3224', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3225', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3226', 'Skyways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3227', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3228', 'Cayman Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3229', 'SAETA (Sociedad Ecuatorianas De Transportes Aereo)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3230', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3231', 'SAHSA (Servicio Aero de Honduras)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3232', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3233', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3234', 'Caribbean Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3235', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3236', 'Air Arabia Airline');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3237', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3238', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3239', 'Bar Harbor Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3240', 'Bahamasair');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3241', 'Aviateca (Гватемала)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3242', 'Avensa');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3243', 'Austrian Air Service');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3244', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3245', 'EasyJet');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3246', 'Ryanair');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3247', 'Gol Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3248', 'Tam Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3249', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3250', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3251', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3252', 'ALM Antilean Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3253', 'America West');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3254', 'Trump Airline');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3256', 'Alaska Airlines Inc.');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3257', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3258', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3259', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3260', 'Spirit Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3261', 'Air China');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3262', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3263', 'Aero Servicio Carabobo');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3264', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3265', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3266', 'Air Seychelles');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3267', 'Air Panama International');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3268', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3270', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3274', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3275', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3276', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3277', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3278', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3279', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3280', 'Air Jamaica');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3281', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3282', 'Air Djibouti');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3283', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3284', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3285', 'Aero Peru');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3286', 'Aero Nicaraguenses');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3287', 'Aero Coach Aviation');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3288', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3289', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3290', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3291', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3292', 'Cyprus Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3293', 'Ecuatoriana');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3294', 'Ethiopian Airlines');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3295', 'Kenya Airways');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3296', 'Air Berlin');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3297', 'Tarom Romanian Air Transport');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3298', 'Air Mauritius');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3299', 'Wideroes Flyveselskap');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3300', 'Azul Air');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3301', 'Wizz Air');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3302', 'Flybe Air');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3351', 'Affiliated Auto Rental');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3352', 'American Intl Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3353', 'Brooks Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3354', 'Action Auto Rental');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3355', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3356', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3357', 'Hertz Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3358', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3359', 'Payless Car Rental');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3360', 'Snappy Car Rental');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3361', 'Airways Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3362', 'Altra Auto Rental');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3363', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3364', 'Agency Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3365', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3366', 'Budget Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3367', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3368', 'Holiday Rent-a-wreck');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3369', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3370', 'Rent-a-wreck');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3371', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3372', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3373', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3374', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3375', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3376', 'Ajax Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3377', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3378', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3379', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3380', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3381', 'Europ Car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3382', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3383', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3384', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3385', 'Tropical Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3386', 'Showcase Rental Cars');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3387', 'Alamo Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3388', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3389', 'Avis Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3390', 'Dollar Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3391', 'Europe By Car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3392', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3393', 'National Car Rental');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3394', 'Kemwell Group Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3395', 'Thrifty Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3396', 'Tilden Tent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3397', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3398', 'Econo-car Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3399', 'Amerex Rent-a-Car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3400', 'Auto Host Cost Car Rentals');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3401', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3402', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3403', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3404', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3405', 'Enterprise Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3406', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3407', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3408', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3409', 'General Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3410', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3412', 'A-1 Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3413', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3414', 'Godfrey Natl Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3415', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3416', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3417', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3418', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3419', 'Alpha Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3420', 'Ansa Intl Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3421', 'Allstae Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3422', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3423', 'Avcar Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3425', 'Automate Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3426', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3427', 'Avon Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3428', 'Carey Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3429', 'Insurance Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3430', 'Major Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3431', 'Replacement Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3432', 'Reserve Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3433', 'Ugly Duckling Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3434', 'USA Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3435', 'Value Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3436', 'Autohansa Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3437', 'Cite Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3438', 'Interent Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3439', 'Milleville Rent-a-car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3440', 'Via Route Rent-a-Car');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3441', 'Агентства по аренде автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3501', 'Holiday Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3502', 'Best Western Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3503', 'Sheraton Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3504', 'Hilton Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3505', 'Forte Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3506', 'Golden Tulip Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3507', 'Friendship Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3508', 'Quality Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3509', 'Marriott Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3510', 'Days Inn');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3511', 'Arabella Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3512', 'Inter-continental Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3513', 'Westin Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3514', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3515', 'Rodeway Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3516', 'La Quinta Motor Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3517', 'Americana Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3518', 'Sol Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3519', 'Pullman International Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3520', 'Meridien Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3521', 'Crest Hotels (see Forte Hotels)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3522', 'Tokyo Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3523', 'Pennsula Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3524', 'Welcomgroup Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3525', 'Dunfey Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3526', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3527', 'Downtowner-passport Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3528', 'Red Lion Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3529', 'Cp Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3530', 'Renaissance Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3531', 'Astir Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3532', 'Sun Route Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3533', 'Hotel Ibis');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3534', 'Southern Pacific Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3535', 'Hilton International');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3536', 'Amfac Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3537', 'Ana Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3538', 'Concorde Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3539', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3540', 'Iberotel Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3541', 'Hotel Okura');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3542', 'Royal Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3543', 'Four Seasons Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3544', 'Ciga Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3545', 'Shangri-la International');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3546', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3547', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3548', 'Hoteles Melia');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3549', 'Auberge Des Governeurs');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3550', 'Regal 8 Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3551', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3552', 'Coast Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3553', 'Park Inns International');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3554', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3555', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3556', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3557', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3558', 'Jolly Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3559', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3560', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3561', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3562', 'Comfort Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3563', 'Journey’s End Motls');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3564', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3565', 'Relax Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3566', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3567', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3568', 'Ladbroke Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3569', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3570', 'Forum Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3571', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3572', 'Miyako Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3573', 'Sandman Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3574', 'Venture Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3575', 'Vagabond Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3576', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3577', 'Mandarin Oriental Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3578', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3579', 'Hotel Mercure');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3580', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3581', 'Delta Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3582', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3583', 'Sas Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3584', 'Princess Hotels International');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3585', 'Hungar Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3586', 'Sokos Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3587', 'Doral Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3588', 'Helmsley Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3589', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3590', 'Fairmont Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3591', 'Sonesta Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3592', 'Omni Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3593', 'Cunard Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3594', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3595', 'Hospitality International');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3596', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3597', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3598', 'Regent International Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3599', 'Pannonia Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3600', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3601', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3602', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3603', 'Noah’s Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3604', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3605', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3606', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3607', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3608', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3609', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3610', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3611', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3612', 'Movenpick Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3613', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3614', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3615', 'Travelodge');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3616', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3617', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3618', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3619', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3620', 'Telford International');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3621', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3622', 'Merlin Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3623', 'Dorint Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3624', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3625', 'Hotle Universale');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3626', 'Prince Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3627', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3628', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3629', 'Dan Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3630', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3631', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3632', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3633', 'Rank Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3634', 'Swissotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3635', 'Reso Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3636', 'Sarova Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3637', 'Ramada Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3638', 'Ho Jo Inn');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3639', 'Mount Charlotte Thistle');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3640', 'Hyatt Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3641', 'Sofitel Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3642', 'Novotel Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3643', 'Steigenberger Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3644', 'Econo Lodges');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3645', 'Queens Moat Houses');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3646', 'Swallow Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3647', 'Husa Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3648', 'De Vere Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3649', 'Radisson Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3650', 'Red Rook Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3651', 'Imperial London Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3652', 'Embassy Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3653', 'Penta Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3654', 'Loews Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3655', 'Scandic Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3656', 'Sara Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3657', 'Oberoi Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3658', 'Otani Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3659', 'Taj Hotels International');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3660', 'Knights Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3661', 'Metropole Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3662', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3663', 'Hoteles El Presidents');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3664', 'Flag Inn');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3665', 'Hampton Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3666', 'Stakis Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3667', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3668', 'Maritim Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3669', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3670', 'Arcard Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3671', 'Arctia Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3672', 'Campaniel Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3673', 'Ibusz Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3674', 'Rantasipi Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3675', 'Interhotel Cedok');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3676', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3677', 'Climat De France Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3678', 'Cumulus Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3679', 'Danubius Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3680', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3681', 'Adams Mark Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3682', 'Allstar Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3683', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3684', 'Budget Host Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3685', 'Budgetel Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3686', 'Suisse Chalets');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3687', 'Clarion Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3688', 'Compri Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3689', 'Consort Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3690', 'Courtyard By Marriott');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3691', 'Dillion Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3692', 'Doubletree Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3693', 'Drury Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3694', 'Economy Inns Of America');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3695', 'Embassy Suites');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3696', 'Exel Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3697', 'Farfield Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3698', 'Harley Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3699', 'Midway Motor Lodge');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3700', 'Motel 6');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3701', 'Guest Quarters (formally Pickett Suite Hotels)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3702', 'The Registry Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3703', 'Residence Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3704', 'Royce Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3705', 'Sandman Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3706', 'Shilo Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3707', 'Shoney’s Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3708', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3709', 'Super8 Motels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3710', 'The Ritz Carlton Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3711', 'Flag Inns (Ausralia)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3712', 'Golden Chain Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3713', 'Quality Pacific Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3714', 'Four Seasons Hotel (Australia)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3715', 'Farifield Inn');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3716', 'Carlton Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3717', 'City Lodge Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3718', 'Karos Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3719', 'Protea Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3720', 'Southern Sun Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3721', 'Hilton Conrad');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3722', 'Wyndham Hotel And Resorts');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3723', 'Rica Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3724', 'Iner Nor Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3725', 'Seaines Planation');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3726', 'Rio Suites');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3727', 'Broadmoor Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3728', 'Bally’s Hotel And Casino');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3729', 'John Ascuaga’s Nugget');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3730', 'Mgm Grand Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3731', 'Harrah’s Hotels And Casinos');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3732', 'Opryland Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3733', 'Boca Raton Resort');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3734', 'Harvey/bristol Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3735', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3736', 'Colorado Belle/Edgewater Resort');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3737', 'Riviera Hotel And Casino');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3738', 'Tropicana Resort And Casino');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3739', 'Woodside Hotels And Resorts');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3740', 'Townplace Suites');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3741', 'Millenium Broadway Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3742', 'Club Med');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3743', 'Biltmore Hotel And Suites');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3744', 'Carefree Resorts');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3745', 'St. Regis Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3746', 'The Eliot Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3747', 'Clubcorp/club Resorts');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3748', 'Welesley Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3749', 'The Beverly Hills Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3750', 'Crowne Plaza Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3751', 'Homewood Suites');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3752', 'Peabody Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3753', 'Greenbriah Resorts');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3754', 'Amelia Island Planation');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3755', 'The Homestead');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3756', 'South Seas Resorts');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3757', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3758', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3759', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3760', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3761', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3762', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3763', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3764', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3765', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3766', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3767', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3768', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3769', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3770', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3771', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3772', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3773', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3774', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3775', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3776', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3777', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3778', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3779', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3780', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3781', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3782', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3783', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3784', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3785', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3786', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3787', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3788', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3789', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3790', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3791', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3792', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3793', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3794', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3795', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3796', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3797', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3798', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3799', 'Отели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3800', 'Homestead Suites');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3801', 'Wilderness Hotel and Resort');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3802', 'The Palace Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3803', 'The Wigwam Golf Resort and Spa');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3804', 'The Diplomat Country Club and Spa');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3805', 'The Atlantic');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3806', 'Princeville Resort');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3807', 'Element');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3808', 'LXR (Luxury Resorts)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3809', 'Settle Inn');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3810', 'La Costa Resort');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3811', 'Premier Travel Inns');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3812', 'Hyatt Place');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3813', 'Hotel Indigo');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3814', 'The Roosevelt Hotel NY');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3815', 'Nickelodeon Family Suites by Holiday Inn');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3816', 'Home2Suites');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3817', 'Affinia');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3818', 'Mainstay Suites');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3819', 'Oxford Suites');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3820', 'Jumeirah Essex House');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3821', 'Caribe Royal');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3822', 'Crossland');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3823', 'Grand Sierra Resort');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3824', 'Aria');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3825', 'Vdara');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3826', 'Autograph');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3827', 'Galt House');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3828', 'Cosmopolitan of Las Vegas');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3829', 'Country Inn By Radisson');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3830', 'Park Plaza Hotel');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3831', 'Waldorf');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3832', 'Curio Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3833', 'Canopy');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3834', 'Baymont Inn & Suites');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3835', 'Dolce Hotels and Resorts');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3836', 'Hawthorn by Wyndham');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3837', 'Hoshino Resorts');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3838', 'Kimpton Hotels');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3882', 'Инкассация чека (обналичивание)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3990', 'Экосистема Яндекса');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3991', 'Экосистема Сбера');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3992', 'Экосистемы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3993', 'Экосистемы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3994', 'Экосистемы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3995', 'Экосистемы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3996', 'Экосистемы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3997', 'Экосистемы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3998', 'Экосистемы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('3999', 'Экосистемы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4011', 'Железные дороги – перевозка грузов');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4111', 'Пассажирские перевозки - пригородные и местные пригородные рейсы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4112', 'Пассажирские железнодорожные перевозки');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4119', 'Услуги скорой помощи');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4121', 'Лимузины и такси');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4131', 'Автобусные линии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4214', 'Агентства по автотранспортным перевозкам');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4215', 'Услуги курьера – по воздуху и на земле');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4225', 'Складское хранение общественного пользования –сельскохозяйственных продуктов');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4304', 'Категория неизвестна');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4411', 'Круизные линии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4457', 'Аренда и лизинг суден');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4468', 'Пристани для яхт');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4511', 'Авиалинии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4582', 'Аэропорты');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4722', 'Туристические агентства и организаторы экскурсий');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4723', 'Пакетные туроператоры - только Германия');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4729', 'Услуги пассажирских перевозок – нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4784', 'Платные дороги и мосты');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4789', 'Услуги пассажирских перевозок – нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4812', 'Телекоммуникационное оборудование');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4813', 'Торговые точки телеком клавишного ввода');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4814', 'Телекоммуникационные услуги');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4815', 'МастерФон телефонные услуги – Ежемесячное составление телефонных счетов');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4816', 'Компьютерные сети');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4821', 'Услуги телеграфа');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4829', 'Денежные переводы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4899', 'Кабельные и другие платные телевизионные услуги');
INSERT INTO "mcc" ("code", "explanation") VALUES ('4900', 'Жилищно-коммунальные услуги');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5013', 'Поставщики грузовиков и запчастей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5021', 'Офисная и торговая мебель');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5039', 'Строительные материалы – нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5044', 'Офисное');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5045', 'Компьютеры');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5046', 'Коммерческое оборудование – нигде более не классифицированное');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5047', 'Стоматологическое / лабораторное / медицинское / офтальмологическое оборудование и материалы для больниц');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5051', 'Центры и офисы работ по металлу');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5065', 'Электрические части и оборудование');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5072', 'Оборудование и сопутствующие материалы для технического обеспечения');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5074', 'Оборудование для водопровода и отопительной системы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5085', 'Промышленное оборудование –нигде более не классифицированное');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5094', 'Драгоценные камни и металлы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5099', 'Товары длительного пользования – нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5111', 'Канцелярия');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5122', 'Лекарства');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5131', 'Штучные товары');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5137', 'Мужская');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5139', 'Спец-обувь');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5169', 'Химикалии и смежные вещества - нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5172', 'Нефть и нефтепродукты');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5192', 'Книги');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5193', 'Принадлежности для флористов');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5198', 'Лакокрасочная продукция и сопровождающие товары');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5199', 'Товары недлительного пользования - нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5200', 'Товары для дома');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5211', 'Лесо- и строительный материал');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5231', 'Розничная продажа стекла');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5251', 'Скобяные товары в розницу');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5261', 'Садовые принадлежности (в том числе для ухода за газонами) в розницу');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5262', 'Маркетплейсы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5271', 'Продажа жилых фургонов');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5292', 'Категория неизвестна');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5295', 'Категория неизвестна');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5297', 'Retail Internet Volume');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5298', 'Internet Shopping Grocery Store');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5300', 'Оптовики');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5309', 'Беспошлинные магазины Duty Free');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5310', 'Магазины');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5311', 'Универмаги');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5331', 'Универсальные магазины');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5399', 'Различные товары общего назначения');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5411', 'Бакалейные магазины');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5412', 'Гибридные супермаркеты');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5415', 'Категория неизвестна');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5422', 'Продажа свежего и мороженого мяса');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5441', 'Кондитерские');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5451', 'Продажа молочных продуктов в розницу');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5462', 'Булочные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5499', 'Различные продовольственные магазины - нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5511', 'Легковой и грузовой транспорт – продажа');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5521', 'Продажа легковых и грузовых автомобилей (только подержанных)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5531', 'Автомагазины и товары для дома');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5532', 'Автошины');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5533', 'Автозапчасти и аксессуары');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5541', 'Заправочные станции (с вспомогательными услугами или без)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5542', 'Автоматические заправочные станции');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5551', 'Продажа лодок');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5552', 'Зарядка электромобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5561', 'Дома- автоприцепы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5571', 'Продажа мотоциклов');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5592', 'Продажа домов на колесах');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5598', 'Продажа снегоходов');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5599', 'Продажа различного рода автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5611', 'Мужская одежда и аксессуары');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5621', 'Готовая женская одежда');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5631', 'Аксессуары для женщин');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5641', 'Детская одежда');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5651', 'Одежда для всей семьи');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5655', 'Спортивная одежда');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5661', 'Обувные магазины');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5681', 'Изготовление и продажа меховых изделий');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5691', 'Магазины мужской и женской одежды');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5697', 'Услуги по переделке');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5698', 'Парики и накладки из искусственных волос');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5699', 'Различные магазины одежды и аксессуаров');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5712', 'Оборудование');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5713', 'Покрытия для пола');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5714', 'Ткани');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5715', 'Оптовые продавцы алкоголя');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5718', 'Продажа каминов');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5719', 'Различные специализированные магазины бытовых принадлежностей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5722', 'Бытовое оборудование');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5732', 'Продажа электронного оборудования');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5733', 'Продажа музыкальных инструментов');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5734', 'Продажа компьютерного программного обеспечения');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5735', 'Магазины звукозаписи');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5811', 'Поставщики провизии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5812', 'Места общественного питания');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5813', 'Бары');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5814', 'Фастфуд');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5815', 'Цифровые товары - аудиовизуальные медиа');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5816', 'Цифровые товары – игры');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5817', 'Цифровые товары - приложения (кроме игр)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5818', 'Цифровые товары - мультикатегория');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5912', 'Аптеки');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5921', 'Магазины с продажей спиртных напитков навынос');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5931', 'Секонд-хенды');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5932', 'Антикварные магазины – продажа');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5933', 'Ломбарды');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5935', 'Уничтожение и сбор остатков');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5937', 'Магазины репродукций и антиквариата');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5940', 'Веломагазины – продажа и обслуживание');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5941', 'Спорттовары');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5942', 'Книжные магазины');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5943', 'Магазины офисных');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5944', 'Часы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5945', 'Игрушки');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5946', 'Магазины фотооборудования и фотоприборов');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5947', 'Магазины открыток');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5948', 'Магазины кожаных изделий');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5949', 'Магазины ткани');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5950', 'Магазины хрусталя и изделий из стекла');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5960', 'Прямой маркетинг – страховые услуги');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5961', 'Заказы по почте');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5962', 'Прямой маркетинг – услуги');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5963', 'Продажа "от двери до двери"');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5964', 'Прямой маркетинг – торговля по каталогам');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5965', 'Прямой маркетинг – комбинированный каталог и розничные продавцы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5966', 'Прямой маркетинг - исходящий телемаркетинг');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5967', 'Прямой маркетинг – входящий телемаркетинг');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5968', 'Прямой маркетинг – Продажа по подписке');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5969', 'Прямой маркетинг – другие торговые точки прямого маркетинга (нигде более не классифицированные)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5970', 'Магазины художественных и ремесляных изделий');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5971', 'Галереи и художественные посредники');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5972', 'Магазины монет и марок (филателические и нумизматические)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5973', 'Магазины религиозных товаров');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5975', 'Слуховые аппараты – продажа');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5976', 'Ортопедические товары');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5977', 'Магазины косметики');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5978', 'Магазины печатающих устройств – аренда');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5983', 'Поставщики топлива – уголь');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5992', 'Флористика');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5993', 'Табачные магазины');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5994', 'Дилеры по продаже печатной продукции');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5995', 'Зоомагазины');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5996', 'Плавательные бассейны – продажа и снабжение');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7623', 'Ремонт кондиционеров и холодильников');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5997', 'Магазины электрических бритвенных принадлежностей – распродажа и услуги.');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5998', 'Магазины палаток и навесов');
INSERT INTO "mcc" ("code", "explanation") VALUES ('5999', 'Различные магазины и специальные розничные магазины');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6010', 'Финансовые учреждения – выдача наличных в кассе');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6011', 'Финансовые учреждения – снятие наличных автоматически');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6012', 'Финансовые учреждения – торговля и услуги');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6022', 'Financial Institution (RCL Internal)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6023', 'State Banks (RCL Internal)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6025', 'National Banks (RCL Internal)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6026', 'National Banks Non Federal (RCL Internal)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6028', 'Unincorporated Private Banks (RCL Internal)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6050', 'Квази-Кэш – Финансовые учреждения');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6051', 'Квази-Кэш – Нефинансовые учреждения');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6211', 'Услуги брокеров на рынке ценных бумаг');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6300', 'Услуги страховых компаний');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6381', 'Страховые премии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6399', 'Страхование – нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6513', 'Агенты недвижимости и менеджеры - Аренда');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6529', 'Удалённое пополнение предоплаченной карты - Финансовые организации');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6530', 'Удалённое пополнение предоплаченной карты - Торговая точка');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6531', 'Оплата услуг – денежные переводы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6532', 'Платежная операция - финансовое учреждение');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6533', 'Платежная операция - продавец');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6534', 'Денежный перевод - финансовое учреждение');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6535', 'Права требования на ценности — Финансовые организации');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6536', 'Денежные переводы с карты на карту – зачисление (внутри страны)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6537', 'Денежные переводы с карты на карту – зачисление (между странами)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6538', 'Денежные переводы с карты на карту – списание');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6539', 'Транзакция по финансированию (исключая MoneySend)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6540', 'Пополнение небанковских предоплаченных карт');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6611', 'Переплата (авансовые платежи)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('6760', 'Облигации сберегательного займа');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7011', 'Отели и мотели - нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7012', 'Тайм-шер');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7032', 'Рекреационные и спортивные лагеря');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7033', 'Кемпинги и трейлер-парки');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7210', 'Услуги по уборке и прачечной');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7211', 'Услуги прачечной - семейные и коммерческие');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7216', 'Химчистка');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7217', 'Чистка ковров и обивки мебели');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7221', 'Фотостудии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7230', 'Парикмахерские и салоны красоты');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7251', 'Чистка шляп');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7261', 'Ритуальные услуги и крематории');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7273', 'Знакомства');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7276', 'Служба налоговой подготовки');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7277', 'Долги');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7278', 'Услуги покупок/шоппинга');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7280', 'Пациент больницы – вывод личных средств');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7296', 'Сдача в аренду костюмов');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7297', 'Массажные салоны');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7298', 'Салоны красоты и здоровья');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7299', 'Различные услуги - нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7311', 'Рекламные услуги');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7321', 'Кредитные бюро');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7322', 'Агентства взыскания долгов');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7332', 'Услуги синьки и фотокопирования');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7333', 'Коммерческое искусство');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7338', 'Быстрое копирование');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7339', 'Услуги стенографии и секретарского дела');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7342', 'Дезинсекция');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7349', 'Уборка и техническое обслуживание зданий и помещений');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7361', 'Агентства по трудоустройству');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7372', 'Программирование');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7375', 'Информационно-поисковые услуги');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7379', 'Ремонт компьютеров');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7389', 'Бизнес услуги – нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7392', 'Услуги по консультированию');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7393', 'Детективные агентства');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7394', 'Аренда оборудования и лизинговые услуги');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7395', 'Фотостудии');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7399', 'Бизнес услуги – нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7511', 'Стоянка грузового транспорта');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7512', 'Агентства по прокату автомобилей - нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7513', 'Прокат аксессуаров для трэйлеров и грузовиков.');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7519', 'Прокат домиков на колесах');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7523', 'Паркинги и гаражи');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7531', 'Кузовной ремонт автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7534', 'Шиномонтаж и вулканизация');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7535', 'Покраска автомобилей');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7538', 'Автосервисы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7542', 'Автомойки');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7549', 'Услуги буксировки и эвакуации');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7622', 'Ремонт электроники');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7629', 'Ремонт электрооборудования и малой бытовой техники');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7631', 'Центры ремонта часов и чистки ювелирных изделий');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7641', 'Обивка');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7692', 'Ремонт с помощью сварки');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7699', 'Ремонтные услуги – нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7800', 'Государственные лотереи (только США)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7801', 'Азартные игры в интернете (только США)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7802', 'Лошадиные / собачьи бега (только США)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7829', 'Производство и распространение кинофильмов и видеокассет');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7832', 'Кинотеатры');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7833', 'Экспресс-оплата – Кинотеатр');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7841', 'Видеопрокат');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7911', 'Танцевальные залы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7922', 'Театральные продюсеры (кроме кинофильмов)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7929', 'Музыкальные группы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7932', 'Бильярд-клубы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7933', 'Боулинг');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7941', 'Атлетические поля');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7991', 'Туристические достопримечательности и выставки');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7992', 'Публичные поля для гольфа');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7993', 'Принадлежности для видеоигр');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7994', 'Клубы видеоигр');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7995', 'Азартные игры');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7996', 'Парки аттракционов');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7997', 'Клубы – загородные клубы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7998', 'Аквариумы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('7999', 'Услуги отдыха - нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8011', 'Врачи – нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8021', 'Стоматологи');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8031', 'Остеопаты');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8041', 'Мануальные терапевты');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8042', 'Оптометристы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8043', 'Оптика');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8044', 'Оптические товары и очки (TSYS)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8049', 'Ортопеды');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8050', 'Услуги персонального ухода');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8062', 'Больницы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8071', 'Стоматологические и медицинские лаборатории');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8099', 'Медицинские работники');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8111', 'Адвокаты');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8211', 'Начальная и средняя школы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8220', 'Колледжи');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8241', 'Дистанционные школы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8244', 'Бизнес / секретарские школы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8249', 'Профессиональные школы и училища');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8299', 'Образовательные услуги');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8351', 'Услуги ухода за детьми');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8398', 'Благотворительные организации и социальные службы - сбор средств');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8641', 'Гражданские');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8651', 'Политические организации');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8661', 'Религиозные организации');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8664', 'Категория неизвестна');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8675', 'Автомобильные ассоциации');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8699', 'Членские организации – нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8734', 'Испытательные лаборатории (немедицинские)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8743', 'Испытательные лаборатории (немедицинские)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8911', 'Архитектурные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8931', 'Аудит и бухгалтерский учет');
INSERT INTO "mcc" ("code", "explanation") VALUES ('8999', 'Профессиональные услуги - нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9034', 'I-Purchasing Pilot');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9211', 'Судебные выплаты');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9222', 'Штрафы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9223', 'Платежи по залогам и облигациям');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9311', 'Налоговые платежи');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9390', 'Госуслуги');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9399', 'Государственные услуги - нигде более не классифицированные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9400', 'Перевод на специальный счёт оператора финансовой платформы');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9401', 'I-Purchasing Pilot');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9402', 'Почтовые услуги – только государственные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9405', 'Внутригосударственные закупки - только государственные');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9406', 'Государственные лотереи (кроме США)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9411', 'Платежи по государственному займу');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9700', 'Automated Referral Service (только VISA)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9701', 'Служба проверки учетных данных Visa (только VISA)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9702', 'Аварийные службы GCAS (только VISA)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9751', 'Супермаркеты (Великобритания)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9752', 'Автозаправочные станции (Великобритания)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9754', 'Лошадиные / собачьи бега (только США)');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9950', 'Покупки внутри компании');
INSERT INTO "mcc" ("code", "explanation") VALUES ('9999', 'Категория неизвестна');

INSERT INTO "public"."users" VALUES (1, 'Константин Шмураков', '$argon2id$v=19$m=19456,t=2,p=1$Tx8x25pYA2sPGEb1okZ2ew$JEygmFE3WRgY6AJlMrY+nzepZiO2z8Gj0ITPE+P80nU', 'kostya.shmurakov@mail.ru');