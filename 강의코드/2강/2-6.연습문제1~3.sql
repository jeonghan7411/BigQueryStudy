-- 1. 포켓몬중 type2가 없는 포켓몬의 수를 작성하는 쿼리
힌트 : 컬럼 IS NULL
NULL : 아무것도 없는 값, 값이 존재하지 않을 때 NULL
- 0이랑 다르고 , ""과도 다름 => 값이 없는 상태
NULL은 다른 값과 직접 비교할 수 없음. NULL = NULL 거짓이 아님!  알수 없음!!


SELECT
  COUNT(id) AS cnt
FROM
  basic.pokemon
WHERE 
  type2 IS NULL


-- 2. type2가 없는 포켓몬의 type1과 type1 의 포켓몬수를 알려주는 쿼리. 단, type1의 포켓몬 수가 큰 순으로 정렬
SELECT
  type1
  , COUNT(id) AS cnt
FROM
  basic.pokemon
WHERE type2 IS NULL
GROUP BY type1
ORDER BY cnt DESC


-- 3. type2 상관없이 tpye1의 포켓몬 수를 알수있는 쿼리.
SELECT
  type1
  , COUNT(type1) AS pokemon_cnt
FROM
  basic.pokemon
GROUP BY type1