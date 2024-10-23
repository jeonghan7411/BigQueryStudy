================================================
연습문제
-- 1. trainer 테이블에 있는 모든 테이블을 보여주는 SQL 쿼리 작성
SELECT
  *
FROM
  basic.trainer;

-- 2. trainer테이블에 테이블에 있는 트레이너의 name을 출력하는 쿼리
SELECT
  name
FROM
  basic.trainer;

-- 3. trainer테이블에 있는 트레이너의 name, age를 출력하는 쿼리
SELECT
  name
  , age
FROM
  basic.trainer;

-- 4. trainer테이블에서 id가 3인 트레이너의 name, age, hometown을 출력하는 쿼리
SELECT
  name
  , age
  , hometown
FROM
  basic.trainer
WHERE
  id = 3;

-- 5. pokemon 테이블에서 피카츄의 공격력과 체력을 확인할 수 있는 쿼리
SELECT
  attack
  , hp
FROM
  basic.pokemon
WHERE
  kor_name = "피카츄";

================================================