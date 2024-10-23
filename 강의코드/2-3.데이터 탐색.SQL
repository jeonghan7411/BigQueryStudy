 SELECT
  id
 FROM 'basic.pkemon'

 # inflearn-bigquery : 프로젝트id
 # basic : dataset
 # bpokemon : table
 # '<프로젝트 id>.<데이터셋>.<테이블>'
 #  프로젝트는 id는 꼭 명시할 필요는 없을 수도 있음(프로젝트가 단일이라면!)
 #  프로젝트를 여러개 사용한다면 명시하는 것이 좋음 => 쿼리를 실행할 때 어떤 프로젝트인지 확인하는 과정이 존재
 #  프로젝트 명시 => 불편
 #  프로젝트를 제외하고 사용해도 괜찮긴 함(여러 프로젝트를 쓸 때는 명시해야한다)
 #  프로젝트 id를 제외하고 작성 할때 는 ''필요 없음
 #  데이터를 활용하고 싶은 목적이 있어야, 어떤 컬럼을 선택할지 알 수 있게 됨

 # 가독성 있는 쿼리


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