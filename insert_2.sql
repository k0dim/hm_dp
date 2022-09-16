-- Заполнение таблицы "Жанр"
insert into traks.genre(genre_name)
	values
	('Поп-музыка'),
	('Рок'),
	('Хип-Хоп / Рэп'),
	('Классическая / Опера'),
	('Блюз');

--АВТОРЫ + ЖАНР
insert into traks.author(name_author)	
	values
	('Michael Jackson'),
	('Madonna'),
	('Britney Spears'),
	('Red Hot Chili Peppers'),
	('Linkin Park'),
	('Led Zeppelin'),
	('Eminem'),
	('Пётр Чайковский'),
	('Tom Waits');
	
insert into traks.auth_genr(author_id, genre_id)	
	values
	(1, 8),
	(2, 8),
	(3, 8),
	(4, 9),
	(5, 9),
	(6, 9),
	(7, 10),
	(8, 13),
	(9, 14);
	


--АЛЬБОМЫ
insert into traks.album(name_album, release_date)	
	values
	('Thriller', '1982-11-30'),
	('Ray of Light', '1998-02-22'),
	('Blackout', '2007-10-25'),
	('Unlimited Love', '2022-01-04'),
	('Meteora', '2003-03-25'),
	('Led Zeppelin', '1969-01-12'),
	('The Eminem Show', '2002-05-26'),
	('Real Gone', '2004-10-03');
	
	
insert into traks.alb_auth(author_id, album_id)	
	values
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(9, 7);

-- Сборник
insert into traks.compilation(name_compilation, com_release_date)	
	values(
	'Сбоник №1', '2022-01-01'),
	('Сбоник №2', '2021-01-01'),
	('Сбоник №3', '2020-01-01'),
	('Сбоник №4', '2019-01-01'),
	('Сбоник №5', '2018-01-01'),
	('Сбоник №6', '2017-01-01'),
	('Сбоник №7', '2016-01-01'),
	('Сбоник №8', '2015-01-01');


-- Треки
insert into traks.track(name_track, duration, album_id)
	values
	('Wanna Be Startin Somethin',5.21,1),
	('thriller',4.28,1),
	('human nature',4.06,1),
	('drowned world / substitute for love',5.09,2),
	('swim',5.01,2),
	('sky fits heaven',4.28,2),
	('gimme more',4.11,3),
	('heaven on earth',4.53,3),
	('freakshow',2.55,3),
	('black summer',3.53,4),
	('aquatic mouth dance',4.21,4),
	('poster child',5.19,4),
	('somewhere i belong',3.34,5),
	('hit the floor',2.44,5),
	('dont stay',3.08,5),
	('good times bad times',2.46,6),
	('you shook me',6.28,6),
	('your time is gonna come',4.53,6),
	('top of the hill',4.55,7),
	('sins of my father',10.37,7),
	('dont go into that barn',5.22,7);

-- Треки в сборниках
insert into traks.track_comp(track_id, compilation_id)
	values
	(4,1),
	(7,1),
	(13,1),
	(5,2),
	(8,2),
	(11,2),
	(6,3),
	(7,3),
	(12,3),
	(7,4),
	(9,4),
	(13,4),
	(8,5),
	(10,5),
	(15,5),
	(5,6),
	(10,6),
	(15,6),
	(24,7),
	(23,7),
	(19,7),
	(17,7),
	(20,8),
	(14,8),
	(18,8),
	16,8),
	(7,8);
	

insert into traks.author(name_author)	
	values('Порнофильмы');
insert into traks.auth_genr(author_id, genre_id)	
	values(10, 9);

insert into traks.album(name_album, release_date)
	values
	('Ритуалы', '2019-04-25'),
	('Это пройдет', '2020-02-28';

insert into traks.alb_auth(author_id, album_id)	
	values
	(10, 8),
	(10, 9);

insert into traks.track(name_track, duration, album_id)
	values
	('Ритуалы',4.42,8),
	('Это пройдёт',3.56,9),
	('Дядя Володя',3.11,9),
	('Нас догонит любовь',3.47,9),
	('Чужое горе',3.54,9),
	('Звёздочка',5.12,9),
	('Доброе сердце',4.11,9),
	('Уроки любви',5.16,9);

insert into traks.auth_genr(author_id, genre_id)	
	values(10, 8);