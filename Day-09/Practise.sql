 -- Problem: https://leetcode.com/problems/department-top-three-salaries/?envType=study-plan-v2&envId=top-sql-50
 
-- Solution:

/* Write your T-SQL query statement below */
with unique_Salary as
    (
        select e.name as Employee,
        e.salary as Salary,
        d.name as Department,
        dense_rank() over(
        PARTITION by d.name
        order by e.salary desc
        ) rank_value
        from employee e
        join department d on d.id=e.departmentid
    )

select Department,Employee,Salary 
from unique_Salary
where rank_value <= 3

-- Problem: https://leetcode.com/problems/second-highest-salary/?envType=study-plan-v2&envId=top-sql-50

-- Solution:   

/* Write your T-SQL query statement below */

SELECT MAX(salary) AS SecondHighestSalary
FROM
(
    SELECT salary,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS rank_sal
    FROM Employee
) t
WHERE rank_sal = 2;