﻿# language: ru

@IgnoreOnCIMainBuild
@ExportScenarios


Функциональность: Служебные сценарии для автоинструкций

 
	
Сценарий: Я рисую стрелку в автоинструкции от "Картинка1" до "Картинка2"

	#[autodoc.ignorestep]
	И я определяю координаты картинки "Картинка2" как "Координаты"
	
	Дано я рисую стрелку от "Картинка1" до "$Координаты$"
			|'Цвет'          | 'Зеленый'      |
			|'Длительность'  | '3000'         |
			|'ТочкаОткуда'   | 'СерединаПраво'|
			|'ТочкаКуда'     | 'СерединаЛево' |
	И пауза 2	
	
	#[autodoc.ignorestep]
	И пауза 2
	


