-- 7,trainer테이블에서 "Iris", "Whitney","Cynthia"트레이너의 정보를 알수 있는 쿼리
힌트 : IN

SELECT
  *
FROM
 basic.trainer
WHERE
  name IN ('Iris','Whitney','Cynthia')

  --  8.전체 포켓몬 수
  SELECT
  COUNT(id) AS pokemon_cnt
FROM
 basic.pokemon


-- 9.세대 별로 포켓몬 수가 얼마나 되는지 알 수 있는 쿼리를 작성
SELECT
  generation
  , COUNT(id) AS pokemon_cnt
FROM
  basic.pokemon
GROUP BY generation