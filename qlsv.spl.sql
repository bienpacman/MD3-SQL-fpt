USe quanlysinhvien;
-- Sử dụng hàm count để hiển thị số lượng sinh viên ở từng nơi
select address , count(studentId) as 'số lượng sinh viên'
from student 
group by address;

-- Tính điểm trung bình các môn học của mỗi học viên bằng cách sử dụng hàm AVG
select S.StudentId,S.StudentName,avg(mark)
from student S join mark M on S.StudentId = M.StudentId
group by S.StudentId, S.StudentName;

-- Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) > 15;

-- Sử dụng Having và All để tìm học viên có điểm trung bình lớn nhất
SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);