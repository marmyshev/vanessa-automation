# language: ru


@[ИмяФичи]=SimpleGenerateTest;E:\commons\Rep\vanessa-bdd\features\SelfTests\




Функционал: Проверка генерации простого epf файла.

Как Пользователь
Я Хочу: чтобы чтобы при нажатии на кнопку Выполнить в толстой форме происходила геренация epf файла

Сценарий: Генерация EPF в режиме толстых форм
 Когда Запущена сервисная база в режиме толстых форм
 И Нажата кнопка Выполнить
 Тогда будет создан файл 'SimpleGenerateTest.epf'
 
Сценарий: Проверка передачи в контекст основных параметров
 Когда Происходит выполение теста
 Тогда у объекта контекст есть свойство 'КаталогПроекта'
 И у объекта контекст есть свойство 'КаталогФич'
