-- 4. 전설 여부에 따른 포켓몬 수를 알 수 있는 쿼리 작성.

SELECT
  is_legendary
  , COUNT(id) AS pokemon_cnt
FROM
  basic.pokemon
GROUP BY is_legendary

-- 5. 동명 이인이 있는 이름은 무었일까?

SELECT
  name
  , COUNT(name) AS trainer_cnt
FROM
  basic.trainer
GROUP BY name
HAVING trainer_cnt >= 2

-- WHERE : 원본 데이터 FROM절에 있는 데이터에 조건을 설정하고 싶은 경우
-- HAVING : GROUP BY 와 함께 집계 결과에 조건을 설정하고 싶은 경우


-- 6. trainer 테이블에서 "Iris" 트레이너의 정보를 알 수 있는 쿼리
SELECT
  *
FROM
  basic.trainer
WHERE
  name = "Iris"