-- employees 테이블 생성
create table employees (
	user_id int auto_increment primary key,
    username varchar(100),
    position varchar(100),
    salary decimal(10,2)
    );
    
-- 직원 데이터 추가
insert into employees (username, position, salary)
values ('혜린', 'PM', 90000),
('은우', 'frontend', 80000),
('가을', 'Backend', 92000),
('지수', 'Frontend', 78000),
('민혁', 'Frontend', 96000),
('하온', 'Backend', 130000);

-- Forntend 직책을 가진 직원 중에서 연봉이 90000 이하인 직원의 이름과 연봉
SELECT username, salary FROM employees WHERE position = 'Frontend' AND salary <= 90000;

-- PM 직책을 가진 모든 직원의 연봉을 10% 인상한 후 그 결과를 확인하세요.
UPDATE employees SET salary = salary * 1.1 WHERE position = 'PM';

-- 모든 Backend' 직책을 가진 직원의 연봉을 5% 인상하세요.
update employees set salary = salary * 1.05
where position = 'Backend';

-- 민혁 사원의 데이터를 삭제하세요
delete from employees
where username = '민혁';

-- 모든 직원을 position 별로 그룹화하여 각 직책의 평균 연봉을 계산하세요.
select position, avg(salary) as average_salary
from employees
group by position;

-- employees 테이블을 삭제하세요.
drop table employees
