SELECT * 
FROM test_a
LEFT JOIN test_b ON test_b.id = test_a.id
WHERE test_b.id IS NULL;