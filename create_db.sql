create schema track;

/* Таблица "Треки" */
create table traks.track(
	track_id serial primary key, /* Первичный ключ */
	name_track varchar(100) not null, /* Наименование трека */
	duration float4 not null, /* Продолжительность в минутах */
	album_id int REFERENCES traks.album(album_id) /* Ключ из таблицы "Альбом" */
);

/* Таблица "Сборник" */
create table traks.compilation(
	compilation_id serial primary key, /* Первичный ключ */
	name_compilation varchar(100) not null, /* Наименование альбома */
	com_release_date date not null /* Дата выхода сборника */
);

/* Таблица "Альбом" */
create table traks.album(
	album_id serial primary key, /* Первичный ключ */
	name_track varchar(100) not null, /* Наименование альбома */
	release_date date not null /* Дата выхода альбома */
);

/* Таблица "Автор" */
create table traks.author(
	author_id serial primary key, /* Первичный ключ */
	name_track varchar(100) not null /* Наименование авторов */
);

/* Таблица связи авторов и альбомов */
create table traks.alb_auth(
	alb_auth_is serial primary key, /* Первичный ключ */
	author_id INTEGER NOT NULL REFERENCES traks.author(author_id), /* Идентификатор авторов */
	album_id INTEGER NOT NULL REFERENCES traks.album(album_id) /* Идентификатор альбомов */
);

/* Таблица "Жанр" */
create table traks.genre(
	genre_id serial primary key, /* Первичный ключ */
	genre_name varchar(100) not null /* Наименование жанров */
);

/* Таблица связи авторов и жанров */
create table traks.auth_genr(
	auth_genr_id serial primary key, /* Первичный ключ */
	author_id INTEGER NOT NULL REFERENCES traks.author(author_id), /* Идентификатор авторов */
	genre_id INTEGER NOT NULL REFERENCES traks.genre(genre_id) /* Идентификатор альбомов */
);

/* Таблица связи треков и сборников */
create table traks.track_comp(
	track_comp_id serial primary key, /* Первичный ключ */
	track_id INTEGER NOT NULL REFERENCES traks.author(author_id), /* Идентификатор авторов */
	compilation_id INTEGER NOT NULL REFERENCES traks.genre(genre_id) /* Идентификатор альбомов */
);