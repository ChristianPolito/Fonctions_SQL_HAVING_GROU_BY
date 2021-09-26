SELECT w.firstname, w.lastname, t.name, p.enrollment_date
FROM wizard AS w
LEFT JOIN player AS p
on w.id= p.wizard_id
LEFT JOIN team AS t
on p.team_id=t.id
WHERE dayofweek(p.enrollment_date) = 2
AND t.name='Gryffindor'
ORDER BY enrollment_date ASC;
