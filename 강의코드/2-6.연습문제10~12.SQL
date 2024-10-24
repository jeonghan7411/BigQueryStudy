-- 10. type2가 존재하는 포켓몬의 수 
SELECT
  COUNT(id) AS pokemon_cnt
FROM
  basic.pokemon
WHERE type2 IS NOT NULL

-- 11. type2가 있는 포켓몬중에 제일 많은 type1은 ?
SELECT
  type1
  , COUNT(id) AS pokemon_cnt
FROM
  basic.pokemon
WHERE type2 IS NOT NULL
GROUP BY type1
ORDER BY pokemon_cnt DESC
LIMIT 1


-- 12. 단일 타입 포켓몬중 많은 type1은 무엇?
SELECT
  type1
  , COUNT(id) AS pokemon_cnt
FROM
  basic.pokemon
WHERE 
  type2 IS NULL
GROUP BY type1
ORDER BY pokemon_cnt DESC
LIMI 1

