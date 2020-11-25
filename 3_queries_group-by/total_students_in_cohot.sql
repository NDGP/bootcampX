SELECT cohorts.name ,COUNT(students.id) as student_count
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY student_count DESC;