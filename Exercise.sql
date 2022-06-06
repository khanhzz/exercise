-- Lấy ra thông tin tất cả các quyển sách thuộc thể loại comedy hoặc drama

SELECT b.title
FROM book b inner join book_category bc 
on b.id = bc.id_book 
INNER JOIN category c 
on c.id = bc.id_category 
WHERE c.id = 4
or c.id = 3

-- Lấy ra id_book, title, author, category của quyển sách được xuất bản từ năm 1800 đến 1900

SELECT b.id, b.title, a.full_name as author, c.name as category
FROM book b inner join book_author ba 
on b.id = ba.id_book 
INNER JOIN author a 
on a.id = ba.id_author 
INNER JOIN book_category bc 
on b.id = bc.id_book 
INNER JOIN category c 
on c.id = bc.id_category
WHERE b.year_of_publication BETWEEN 1800 AND 1900

-- Đếm số sách dựa theo nhà xuất bản (Hiển thị tên nhà xuất bản và số sách thuộc nhà xuất bản đó)

SELECT p.name, COUNT(p.id) as quantity_book
FROM book b inner join publisher p 
on b.id_publisher = p.id 
GROUP BY p.id 