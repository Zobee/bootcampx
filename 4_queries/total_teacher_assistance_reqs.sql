SELECT COUNT(*) as total_assistances, teachers.name 
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE teacher_id = (
  SELECT id FROM teachers
  WHERE name='Waylon Boehm'
)
GROUP BY teachers.name;