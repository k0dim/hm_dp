-- количество исполнителей в каждом жанре;

select g.genre_name, count(g.genre_name) as "Кол-во исполнителей"
from traks.auth_genr ag 
	join traks.author a 
		on ag.author_id = a.author_id 
	join traks.genre g 
		on ag.genre_id = g.genre_id 
group by g.genre_name
order by count(g.genre_name) asc
	
-- количество треков, вошедших в альбомы 2019-2020 годов;
/* В скрипт INSERT добавлена запись об альбоме входящем в указанный диапозон */

select a.name_album, count(a.name_album) as "Кол-во треков" 
from traks.track t join traks.album a on t.album_id = a.album_id 
where a.release_date between '2019-01-01' and '2020-12-31'
group by a.name_album;

-- средняя продолжительность треков по каждому альбому;

select cast(avg(t.duration) as NUMERIC(6,2))  as "Ср. кол-во мин."
from traks.track t join traks.album a on t.album_id = a.album_id 

-- все исполнители, которые не выпустили альбомы в 2020 году;

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


-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
	
with comp_auth as(
	select *
	from (
			select c.name_compilation, t.album_id 
			from traks.track_comp tc 
				join traks.track t 
					on t.track_id = tc.track_id 
				join traks.compilation c 
					on c.compilation_id = tc.compilation_id) as t1
		join (
			select a2.name_author, a.album_id 
			from traks.alb_auth aa 
				join traks.album a 
					on aa.album_id = a.album_id 
				join traks.author a2 
					on aa.author_id = a2.author_id ) as t2
		on t1.album_id = t2.album_id
)
select ca.name_compilation
from comp_auth ca
where ca.name_author = 'Michael Jackson';
		
-- название альбомов, в которых присутствуют исполнители более 1 жанра;
/* В скрипт INSERT добавлена запись, сделав панк группу еще и рэперами */

select name_album
from traks.alb_auth aa 
	join traks.album a 
		on aa.album_id = a.album_id 
	join traks.author a2 
		on aa.author_id = a2.author_id
where a2.author_id in (
	select a.author_id
	from traks.auth_genr ag 
		join traks.author a 
			on ag.author_id = a.author_id 
		join traks.genre g 
			on ag.genre_id = g.genre_id 
	group by a.author_id
	having count(a.author_id) > 1
);

-- наименование треков, которые не входят в сборники;

select t.name_track 
from traks.track t 
	left join(
		select t.track_id, tc.compilation_id  
		from traks.track_comp tc 
			join traks.track t 
				on t.track_id = tc.track_id 
			join traks.compilation c 
				on c.compilation_id = tc.compilation_id
		) t2
	on t.track_id = t2.track_id
where t2.track_id is null;
	
-- исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
		
select t1.name_author
from (
		select a.album_id, a2.name_author 
		from traks.alb_auth aa 
			join traks.album a 
				on aa.album_id = a.album_id 
			join traks.author a2 
				on aa.author_id = a2.author_id
		) t1
	join traks.track t 
		on t1.album_id = t.album_id 
where t.duration = (select min(duration)
	from traks.track);

-- название альбомов, содержащих наименьшее количество треков;

with t1 as(
	select a.name_album, count(a.name_album) cna
	from traks.track t 
		join traks.album a 
			on t.album_id  = a.album_id 
	group by a.name_album
)
select t1.name_album
from t1
where cna in (select min(cna)
	from t1)