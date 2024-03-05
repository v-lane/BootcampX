SELECT 
  (SELECT name FROM teachers WHERE teachers.id = teacher_id) AS teacher,
  (SELECT name FROM students WHERE students.id = student_id) AS student,
  (SELECT name FROM assignments WHERE assignments.id = assignment_id) AS assignment,
  (assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM assistance_requests
ORDER BY duration;