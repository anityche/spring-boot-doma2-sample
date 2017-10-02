TRUNCATE TABLE code_category;
INSERT INTO code_category(category_key, category_name, created_by, created_at, version) VALUES ('GNR0001', '性別', 'none', NOW(), 1);

TRUNCATE TABLE code;
INSERT INTO code(code_category_id, code_key, code_value, code_alias, display_order, is_invalid, created_by, created_at, version)(SELECT (SELECT code_category_id FROM code_category WHERE category_key = 'GNR0001' AND deleted_at IS NULL), '01', '男', 'male', 1, 0, 'none', NOW(), 1);
INSERT INTO code(code_category_id, code_key, code_value, code_alias, display_order, is_invalid, created_by, created_at, version)(SELECT (SELECT code_category_id FROM code_category WHERE category_key = 'GNR0001' AND deleted_at IS NULL), '02', '女', 'female', 2, 0, 'none', NOW(), 1);