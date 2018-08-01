delete from player where medal  gold;

select cast(avg(weight)as number(5,2))as "남성 몸무게 평균" from player where sex like 'M';

select cast(avg(weight)as number(5,2))as "여성 몸무게 평균" from player where sex like 'F';

select age, count(medal), event from player where sex like 'M' group by age,event ;
select age, count(medal) from player where sex like 'F' group by age ;

select event as "상세종목", cast(avg(height) as number(5,2)) as "금메달 선수 평균 신장" from player where sex like 'M' group by event;
            
select event as "상세종목", cast(avg(weight) as number(5,2)) as "금메달 평균 몸무게" from player where sex like 'F' group by event;


select sport as "종목", cast(avg(height)as number(5,2))as "금메달 선수 평균 신장" 
from player, wevent 
where sex like 'M' 
group by sport;


select sport as "종목", cast(avg(height)as number(5,2)) as "금메달 선수 평균 신장" 
from player, wevent 
where sex like 'F' and player.event=wevent.event
group by sport;


select sport as "종목", cast(avg(height)as number(5,2))as "금메달 선수 평균 신장"  from player, wevent where sex like 'F' group by sport;


select player.games, count(player.medal) from player
        where player.NOC like '%BRA%' 
                group by player.games;
                
                
select NOC, count(medal), match(year) from player 
        where NOC='CHN' or NOC='USA' group by NOC, match(year);