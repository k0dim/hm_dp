--(1) количество исполнителей в каждом жанре;

select g.genre_name, count(g.genre_name) as "Кол-во исполнителей"
from traks.auth_genr ag 
	join traks.author a 
		on ag.author_id = a.author_id 
	join traks.genre g 
		on ag.genre_id = g.genre_id 
group by g.genre_name
order by count(g.genre_name) asc
	
--(2) количество треков, вошедших в альбомы 2019-2020 годов;
/* В скрипт INSERT добавлена запись об альбоме входящем в указанный диапозон */

select a.name_album, count(a.name_album) as "Кол-во треков" 
from traks.track t join traks.album a on t.album_id = a.album_id 
where a.release_date between '2019-01-01' and '2020-12-31'
group by a.name_album;

--(3) средняя продолжительность треков по каждому альбому;

select cast(avg(t.duration) as NUMERIC(6,2))  as "Ср. кол-во мин."
from traks.track t join traks.album a on t.album_id = a.album_id 

--(4) все исполнители, которые не выпустили альбомы в 2020 году;

select a.name_author 
from traks.author a 
where a.author_id not in (
	select a2.author_id 
	from traks.alb_auth aa 
		join traks.album a 
			on aa.album_id = a.album_id 
		join traks.author a2 
			on aa.author_id =a2.author_id 
	where a.release_date between '2020-01-01' and '2020-12-31'
	)


--(5) названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
	
select c.name_compilation 
from traks.alb_auth aa 
	join traks.author a 
		on aa.author_id = a.author_id 
	join traks.album a2 
		on aa.album_id = a2.album_id
	join traks.track t 
		on a2.album_id = t.album_id 
	left join traks.track_comp tc 
		on t.track_id = tc.track_id 
	left join traks.compilation c 
		on tc.compilation_id = c.compilation_id
where a.name_author = 'Michael Jackson';


--(6) название альбомов, в которых присутствуют исполнители более 1 жанра;
/* В скрипт INSERT добавлена запись, сделав панк группу еще и рэперами */

select a.name_album
from traks.alb_auth aa
	join traks.album a 
		on aa.album_id = a.album_id
	join traks.author a2 
		on aa.author_id = a2.author_id 
where a2.author_id = (select author_id
	from traks.auth_genr ag 
	group by ag.author_id 
	having count(ag.author_id) > 1)
	
--(7) наименование треков, которые не входят в сборники;

select t.name_track 
from traks.track t 
	left join traks.track_comp tc 
		on t.track_id  = tc.track_id 
where tc.compilation_id is null
	
--(8) исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
		
select a2.name_author  
from traks.track t 
	join traks.album a 
		on t.album_id = a.album_id
	join traks.alb_auth aa 
		on aa.album_id = a.album_id 
	join traks.author a2 
		on a2.author_id = aa.author_id 
where t.duration = (select min(duration)
	from traks.track);

--(9) название альбомов, содержащих наименьшее количество треков;

with t as
(
select a.name_album, count(a.name_album) cna
from traks.track t 
	join traks.album a 
		on t.album_id  = a.album_id 
group by a.name_album 
)

select name_album
from t
where cna = (select min(cna)
	from t)