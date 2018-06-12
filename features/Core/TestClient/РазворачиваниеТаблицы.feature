﻿# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb8310
@IgnoreOnUFSovm82Builds

@tree


Функционал: Разворачивание таблицы

Как Разработчик я хочу
Чтобы у меня был функционал для разворачивания таблицы
Для того чтобы использовать эти команды



Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	
	
Сценарий: Разворачивание таблицы в режиме иерархический список
	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник2"
	Тогда открылось окно "Справочник2"
	И     я нажимаю на кнопку "Иерархический список"
	
	И     я нажимаю на кнопку "Создать группу"
	Тогда открылось окно "Справочник2 (создание группы)"
	И     в поле "Наименование" я ввожу текст "Группа1"
	И     я активизирую поле "Код"
	И     я нажимаю на кнопку "Записать и закрыть"
	
	Тогда открылось окно "Справочник2"
	И     я нажимаю на кнопку "Создать группу"
	Тогда открылось окно "Справочник2 (создание группы)"
	И     в поле "Наименование" я ввожу текст "Группа2"
	И     я активизирую поле с именем "Код"
	И     я нажимаю на кнопку "Записать и закрыть"
	
	И     я нажимаю на кнопку "Создать группу"
	Тогда открылось окно "Справочник2 (создание группы)"
	И     в поле "Наименование" я ввожу текст "Группа3"
	И     я нажимаю на кнопку "Записать и закрыть"

	И     в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Группа1'      |
	
	
	И     я нажимаю на кнопку "Создать"
	Тогда открылось окно "Справочник2 (создание)"
	И     в поле "Наименование" я ввожу текст "В группе1"
	И     из выпадающего списка "Родитель" я выбираю "Группа1"
	И     я нажимаю на кнопку "Записать и закрыть"
	
	И     в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Группа1'      |
	
	И     в таблице  "Список" я перехожу на один уровень вниз
	
	Если Версия платформы ">=" "8.3.11" Тогда
		Тогда таблица формы с именем "Список" стала равной:
			| 'Наименование' |
			| 'Группа1'      |
			| 'В группе1'    |
	Иначе
		Тогда таблица формы с именем "Список" стала равной:
			| 'Наименование' |
			| 'В группе1'    |
			| 'Группа1'      |
	
	И     в таблице  "Список" я перехожу на один уровень вверх
	
	Тогда таблица формы с именем "Список" стала равной:
		| 'Наименование' |
		| 'Группа1'      |
		| 'Группа2'      |
		| 'Группа3'      |
	
	И     Я закрываю текущее окно
	
	
Сценарий: Разворачивание таблицы в режиме Дерево
	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник2"
	Тогда открылось окно "Справочник2"
	И     я нажимаю на кнопку "Дерево"
	
	И     я нажимаю на кнопку "Создать группу"
	Тогда открылось окно "Справочник2 (создание группы)"
	И     в поле "Наименование" я ввожу текст "Группа1"
	И     я нажимаю на кнопку "Записать и закрыть"
	
	Тогда открылось окно "Справочник2"
	И     я нажимаю на кнопку "Создать группу"
	Тогда открылось окно "Справочник2 (создание группы)"
	И     в поле "Наименование" я ввожу текст "Группа2"
	И     я нажимаю на кнопку "Записать и закрыть"
	
	И     я нажимаю на кнопку "Создать группу"
	Тогда открылось окно "Справочник2 (создание группы)"
	И     в поле "Наименование" я ввожу текст "Группа3"
	И     я нажимаю на кнопку "Записать и закрыть"

	И     в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Группа1'      |
	

	И    Я закрыл все окна клиентского приложения
	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник2"
	
	И     в таблице "Список" я разворачиваю текущую строку
	
	И     в таблице "Список" я разворачиваю строку:
		| 'Наименование' |
		| 'Группа1'      |
	
#	И     в таблице "Список" я сворачиваю текущую строку
	