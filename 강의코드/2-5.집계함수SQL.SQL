GROUP BY : 같은 값끼리 모아서 그룹화한다.


WHERE
  - Table에 바로 조건을 설정하고 싶은 경우 사용

HAVING
  - GROUP BY 한 후 조건을 설정하고 싶은 경우 사용

========================================================================
GROUP BY 연습문제


-- 1. pokemon테이블에 있는 포켓몬 수를 구하는 쿼리
SELECT
  COUNT(id) AS cnt
FROM
  basic.pokemon;

-- 2. 포켓몬의 수가 세대별로 얼마나 있는지  알 수 있는 쿼리
SELECT
  generation
  , COUNT(id) AS cnt
FROM
  basic.pokemon
GROUP BY generation;

-- 3. 포켓몬의 수를 타입 별로 집게하고, 포켓몬의 수가 10 이상인 타입만 남기는 쿼리 (포켓몬의 수가 많은 순으로 정렬)
SELECT
  type1
  , count(id) AS cnt
FROM
  basic.pokemon
GROUP BY type1 
HAVING cnt >= 10 
ORDER BY cnt DESC;