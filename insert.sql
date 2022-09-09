-- Заполнение таблицы "Жанр"
insert into traks.genre(genre_name)
	values('Поп-музыка');

insert into traks.genre(genre_name)
	values('Рок');

insert into traks.genre(genre_name)
	values('Хип-Хоп / Рэп');

insert into traks.genre(genre_name)
	values('Классическая / Опера');

insert into traks.genre(genre_name)	
	values('Блюз');

--АВТОРЫ + ЖАНР
-- Поп
insert into traks.author(name_author)	
	values('Michael Jackson');
insert into traks.auth_genr(author_id, genre_id)	
	values(1, 8);

insert into traks.author(name_author)	
	values('Madonna');
insert into traks.auth_genr(author_id, genre_id)	
	values(2, 8);

insert into traks.author(name_author)	
	values('Britney Spears');
insert into traks.auth_genr(author_id, genre_id)	
	values(3, 8);

-- Рок
insert into traks.author(name_author)	
	values('Red Hot Chili Peppers');
insert into traks.auth_genr(author_id, genre_id)	
	values(4, 9);

insert into traks.author(name_author)	
	values('Linkin Park');
insert into traks.auth_genr(author_id, genre_id)	
	values(5, 9);

insert into traks.author(name_author)	
	values('Led Zeppelin');
insert into traks.auth_genr(author_id, genre_id)	
	values(6, 9);

-- Рэп
insert into traks.author(name_author)	
	values('Eminem');
insert into traks.auth_genr(author_id, genre_id)	
	values(7, 10);

-- Классическая
insert into traks.author(name_author)	
	values('Пётр Чайковский');
insert into traks.auth_genr(author_id, genre_id)	
	values(8, 13);

-- Блюз
insert into traks.author(name_author)	
	values('Tom Waits');
insert into traks.auth_genr(author_id, genre_id)	
	values(9, 14);

--АЛЬБОМЫ
insert into traks.album(name_album, release_date)	
	values('Thriller', '1982-11-30');
insert into traks.alb_auth(author_id, album_id)	
	values(1, 1);

insert into traks.album(name_album, release_date)	
	values('Ray of Light', '1998-02-22');
insert into traks.alb_auth(author_id, album_id)	
	values(2, 2);

insert into traks.album(name_album, release_date)	
	values('Blackout', '2007-10-25');
insert into traks.alb_auth(author_id, album_id)	
	values(3, 3);

insert into traks.album(name_album, release_date)	
	values('Unlimited Love', '2022-01-04');
insert into traks.alb_auth(author_id, album_id)	
	values(4, 4);

insert into traks.album(name_album, release_date)	
	values('Meteora', '2003-03-25');
insert into traks.alb_auth(author_id, album_id)	
	values(5, 5);

insert into traks.album(name_album, release_date)	
	values('Led Zeppelin', '1969-01-12');
insert into traks.alb_auth(author_id, album_id)	
	values(6, 6);

insert into traks.album(name_album, release_date)	
	values('The Eminem Show', '2002-05-26');
insert into traks.alb_auth(author_id, album_id)	
	values(7, 7);

insert into traks.album(name_album, release_date)	
	values('Real Gone', '2004-10-03');
insert into traks.alb_auth(author_id, album_id)	
	values(9, 7);

-- Сборник
insert into traks.compilation(name_compilation, com_release_date)	
	values('Сбоник №1', '2022-01-01');
insert into traks.compilation(name_compilation, com_release_date)	
	values('Сбоник №2', '2021-01-01');
insert into traks.compilation(name_compilation, com_release_date)	
	values('Сбоник №3', '2020-01-01');
insert into traks.compilation(name_compilation, com_release_date)	
	values('Сбоник №4', '2019-01-01');
insert into traks.compilation(name_compilation, com_release_date)	
	values('Сбоник №5', '2018-01-01');
insert into traks.compilation(name_compilation, com_release_date)	
	values('Сбоник №6', '2017-01-01');
insert into traks.compilation(name_compilation, com_release_date)	
	values('Сбоник №7', '2016-01-01');
insert into traks.compilation(name_compilation, com_release_date)	
	values('Сбоник №8', '2015-01-01');


-- Треки
insert into traks.track(name_track, duration, album_id)
	values('Wanna Be Startin Somethin',5.21,1);
insert into traks.track(name_track, duration, album_id)
	values('thriller',4.28,1);
insert into traks.track(name_track, duration, album_id)
	values('human nature',4.06,1);

insert into traks.track(name_track, duration, album_id)
	values('drowned world / substitute for love',5.09,2);
insert into traks.track(name_track, duration, album_id)
	values('swim',5.01,2);
insert into traks.track(name_track, duration, album_id)
	values('sky fits heaven',4.28,2);
	
insert into traks.track(name_track, duration, album_id)
	values('gimme more',4.11,3);
insert into traks.track(name_track, duration, album_id)
	values('heaven on earth',4.53,3);
insert into traks.track(name_track, duration, album_id)
	values('freakshow',2.55,3);
	
insert into traks.track(name_track, duration, album_id)
	values('black summer',3.53,4);
insert into traks.track(name_track, duration, album_id)
	values('aquatic mouth dance',4.21,4);
insert into traks.track(name_track, duration, album_id)
	values('poster child',5.19,4);
	
insert into traks.track(name_track, duration, album_id)
	values('somewhere i belong',3.34,5);
insert into traks.track(name_track, duration, album_id)
	values('hit the floor',2.44,5);
insert into traks.track(name_track, duration, album_id)
	values('dont stay',3.08,5);

insert into traks.track(name_track, duration, album_id)
	values('good times bad times',2.46,6);
insert into traks.track(name_track, duration, album_id)
	values('you shook me',6.28,6);
insert into traks.track(name_track, duration, album_id)
	values('your time is gonna come',4.53,6);

insert into traks.track(name_track, duration, album_id)
	values('top of the hill',4.55,7);
insert into traks.track(name_track, duration, album_id)
	values('sins of my father',10.37,7);
insert into traks.track(name_track, duration, album_id)
	values('dont go into that barn',5.22,7);

-- Треки в сборниках
insert into traks.track_comp(track_id, compilation_id)
	values(4,1);
insert into traks.track_comp(track_id, compilation_id)
	values(7,1);
insert into traks.track_comp(track_id, compilation_id)
	values(13,1);
	
insert into traks.track_comp(track_id, compilation_id)
	values(5,2);
insert into traks.track_comp(track_id, compilation_id)
	values(8,2);
insert into traks.track_comp(track_id, compilation_id)
	values(11,2);
	
insert into traks.track_comp(track_id, compilation_id)
	values(6,3);
insert into traks.track_comp(track_id, compilation_id)
	values(7,3);
insert into traks.track_comp(track_id, compilation_id)
	values(12,3);
	
insert into traks.track_comp(track_id, compilation_id)
	values(7,4);
insert into traks.track_comp(track_id, compilation_id)
	values(9,4);
insert into traks.track_comp(track_id, compilation_id)
	values(13,4);
	
insert into traks.track_comp(track_id, compilation_id)
	values(8,5);
insert into traks.track_comp(track_id, compilation_id)
	values(10,5);
insert into traks.track_comp(track_id, compilation_id)
	values(15,5);
	
insert into traks.track_comp(track_id, compilation_id)
	values(5,6);
insert into traks.track_comp(track_id, compilation_id)
	values(10,6);
insert into traks.track_comp(track_id, compilation_id)
	values(15,6);
	
insert into traks.track_comp(track_id, compilation_id)
	values(24,7);
insert into traks.track_comp(track_id, compilation_id)
	values(23,7);
insert into traks.track_comp(track_id, compilation_id)
	values(19,7);
insert into traks.track_comp(track_id, compilation_id)
	values(17,7);

insert into traks.track_comp(track_id, compilation_id)
	values(20,8);
insert into traks.track_comp(track_id, compilation_id)
	values(14,8);
insert into traks.track_comp(track_id, compilation_id)
	values(18,8);
insert into traks.track_comp(track_id, compilation_id)
	values(16,8);
insert into traks.track_comp(track_id, compilation_id)
	values(7,8);