-- 13. 포켓몬의 이름에 "파"가 들어가는 포켓몬은 어떤 포켓몬?
SELECT
  kor_name
FROM
 basic.pokemon
WHERE kor_name LIKE ('%파%')


-- 14.  뱃지가 6개 이상인 트레이너는 몇명 ?
SELECT
  COUNT(id) AS trainer_cnt
FROM
  basic.trainer
WHERE
  badge_count >= 6

  -- 15.  트레이너가 보유한 포켓몬이 제일 많은 트레어는 누구인가
SELECT
  trainer_id
  , COUNT(pokemon_id) AS pokemo_cnt
FROM
  basic.trainer_pokemon
GROUP BY trainer_id

  -- 16. 포켓몬을 많이 풀어준 트레이너는?
SELECT 
  trainer_id
  , COUNT(trainer_id) AS pokemon_cnt
FROM
  `basic.trainer_pokemon`
WHERE
  status = "Released"
GROUP BY trainer_id
ORDER BY pokemon_cnt
LIMIT 1

  -- 17. 트레이너  별로 풀어준 포켓몬의 비율이 20%가 넘는 포켓몬 트레이너는?
  풀어준 포켓몬의 비율 = (풀어준 포켓몬 수 / 전체 포켓몬의 수)
  힌트 COUNTIF(조건)
SELECT
  trainer_id
  , COUNTIF(status = "Released") AS released_cnt #풀어준 포켓몬의 수
  , COUNT(pokemon_id) AS pokemon_cnt
  , COUNTIF(status = "Released")/ COUNT(pokemon_id) AS released_ratio
FROM
  `basic.trainer_pokemon`
GROUP BY trainer_id
HAVING 
  released_ratio >= 0.2

