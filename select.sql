--tìm Sinh viên trùng hoàn toàn ngày/tháng/năm sinh
SELECT * FROM Sv
WHERE ns = '2004-01-13';

SELECT * FROM Sv
WHERE DAY(ns) = 13 AND MONTH(ns) = 01;

SELECT * FROM Sv
WHERE MONTH(ns) = 01 AND YEAR(ns) = 2004;

SELECT * FROM Sv
WHERE ten = N'Sơn';

SELECT * FROM Sv
WHERE hodem = N'Nguyễn Lam Sơn';

SELECT * FROM Sv
WHERE LEN(sdt) = 10 AND (
    SELECT COUNT(*) 
    FROM (
        SELECT TOP 10 
            CASE 
                WHEN SUBSTRING(sdt, number, 1) != SUBSTRING('0325708861', number, 1) 
                THEN 1 ELSE NULL 
            END AS Diff
        FROM master..spt_values
        WHERE type = 'P' AND number BETWEEN 1 AND 10
    ) AS Differences
    WHERE Diff IS NOT NULL
) = 1;

SELECT * FROM Sv
WHERE lop LIKE '%KMT%'
ORDER BY 
    ten COLLATE Vietnamese_CI_AS,
    hodem COLLATE Vietnamese_CI_AS;

SELECT * FROM Sv
WHERE lop LIKE '%KMT%'
AND ten IN (
    N'Lan', N'loan', N'Mai', N'Hương', N'Thùy', N'Ngọc', N'Hồng',
    N'Thảo', N'Trang', N'Diệp', N'Nhung', N'Nguyệt', N'Yến', N'Hoa'
);