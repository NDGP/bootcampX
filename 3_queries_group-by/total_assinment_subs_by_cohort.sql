SELECT cohorts.name ,COUNT(assignment_submissions.submission_date) as total_submitions
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY total_submitions DESC;