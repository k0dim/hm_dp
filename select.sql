-- Жанры
select * from traks.genre g;
-- Авторы
select * from traks.author a; 
-- Жанры и Авторы
select * from traks.auth_genr;
-- Альбомы
select * from traks.album a;
-- Альбомы и Авторы
select * from traks.alb_auth aa;
--Сборники
select * from traks.compilation c;
-- Треки
select * from traks.track t;
-- Треки в сборниках
select  * from  traks.track_comp tc;

-- название и год выхода альбомов, вышедших в 2018 году;

	select a.name_album, a.release_date 
	from traks.album a 
	where release_date >= '2018-01-01'
	and release_date <= '2018-12-31';

-- название и продолжительность самого длительного трека;

	select t.name_track, t.duration 
	from traks.track t 
	where t.duration = (select max(t.duration) from traks.track t);
	
-- название треков, продолжительность которых не менее 3,5 минуты;

	select t.name_track, t.duration
	from traks.track t 
	where t.duration >= 3.30;
	
-- названия сборников, вышедших в период с 2018 по 2020 год включительно;

	select c.name_compilation 
	from traks.compilation c 
	where c.com_release_date  >= '2018-01-01'
	and c.com_release_date <= '2020-12-31';

-- исполнители, чье имя состоит из 1 слова;

	select a.name_author 
	from traks.author a 
	where a.name_author not like '% %'
	
-- название треков, которые содержат слово "мой"/"my".
	
	select t.name_track  
	from traks.track t 
	where t.name_track like '%мой%' or t.name_track like '%my%' 
	