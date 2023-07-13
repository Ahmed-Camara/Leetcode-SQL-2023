WITH filtered AS (
    SELECT id, visit_date, people, (id - ROW_NUMBER() OVER (ORDER BY id)) conGroup 
    FROM stadium 
    WHERE people >= 100
),
validConGroup AS (
    SELECT conGroup, count(id) cnt
    FROM filtered
    GROUP BY conGroup
    HAVING count(id) >= 3
)
SELECT id, TO_CHAR(visit_date, 'yyyy-mm-dd') visit_date, people
FROM filtered JOIN validConGroup USING (conGroup)
ORDER BY visit_date
;