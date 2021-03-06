---
layout: page
title: 'Selenium WebDriver: полное руководство, отзыв тренера'
redirect_from: /news/185-selenium-webdriver.html
date: 2017-01-11 08:47:40.000000000 +03:00
author: Алексей Баранцев
teaser: "Перед новогодними каникулами завершила работу первая группа нового тренинга
  \"Selenium WebDriver: полное руководство\". После каждого тренинга мы просим
  участников написать отзыв -- что понравилось, что не понравилось.
  Это помогает нам в следующих тренингах не повторять ошибок и делать их лучше. Кроме того, по уже сложившейся традиции
  после создания нового тренинга и завершения работы первой учебной группы Алексей
  Баранцев пишет “отзыв” со стороны тренера. И это тоже позволяет проанализировать
  возникшие проблемы, чтобы в следующий раз их избегать и делать тренинги ещё качественнее.</p>\r\n<p>Ниже
  некоторые заметки тренера о прошедшем курсе"
category: Новости
---
После каждого тренинга мы просим участников написать отзыв -- что понравилось, что не понравилось. Это помогает нам в следующих тренингах не повторять ошибок и делать их лучше.

Перед новогодними каникулами завершила работу первая группа нового тренинга [Selenium WebDriver: полное руководство](https://software-testing.ru/edu/schedule/242).

С отзывами учеников первой группы курса [можно ознакомиться здесь](http://software-testing.ru/forum/index.php?/topic/34218-selenium-webdriver-polnoe-rukovodstvo-otzyvy-uchastnikov-perv/).

Кроме того, по уже сложившейся традиции после создания нового тренинга и завершения работы первой учебной группы Алексей Баранцев пишет “отзыв” со стороны тренера. И это тоже позволяет проанализировать возникшие проблемы, чтобы в следующий раз их избегать и делать тренинги ещё качественнее.

Ниже некоторые заметки тренера о прошедшем курсе.

1. В конце прошлого года мы решили [все имеющиеся у нас разрозненные тренинги по инструменту Selenium WebDriver](/news/179-selenium-trainings.html) заменить одним универсальным учебным курсом. По нашим планам должно было получиться 12 занятий по 45 минут. Но на самом деле объём записанного материала получился в полтора раза больше. Информации действительно так много. Но цену мы решили пока не поднимать :)

2. В начале курса мы даём участникам анкету, в которой среди прочего предлагается оценить свои навыки программирования по пятибалльной шкале. Результат оказался неожиданным -- средняя оценка примерно 3 балла. При этом та же самая анкета показала, что почти 70% участников имеют практический опыт использования Selenium. Это вызвало некоторые опасения при подготовке заданий для самостоятельной работы. С одной стороны, они должны были быть достаточно сложными, потому что большинство участников уже работало с инструментом и простые задания будут скучны. С другой стороны, они не должны были требовать хороших навыков программирования. Насколько можно судить по результатам выполнения заданий и обсуждению в чате учебной группы -- это сделать удалось. Задания достаточно сложные, для их выполнения нужно хорошо знать Selenium (то есть внимательно смотреть и слушать лекции), но с точки зрения программирования они весьма просты.

3. Та же самая анкета в очередной раз подтвердила, что мы не зря уделяем больше внимания языкам Java, C# и Python. Один из вопросов анкеты звучал так: “Какой из пяти языков Вы можете назвать наиболее предпочтительным для себя?” Вот как распределились языковые предпочтения участников (по горизонтали -- значения в процентах):
![языки](/images/blog/languages.png)

4. В этом тренинге был впервые использован новый формат лекций. Они не только разбиты на небольшие модули -- это мы уже и раньше делали. Теперь на одной странице размещается и модуль, и относящиеся к нему примеры и ссылки на дополнительные материалы. Судя по отзывам учеников, это оказалось весьма удобно.

5. В процессе создания примеров к лекциям было найдено некоторое количество багов в Selenium. Во-первых, благодаря нашим ученикам, обнаружились явные дефекты в Selenium, пусть небольшие, но всё равно дефекты (некоторые из них, кстати, уже исправлены и в следующем релизе их не будет). Во-вторых, были выявлены несоответствия в реализациях на разных языках. Они проявились в процессе создания примеров к лекциям. Например, оказалось, что в реализации на Ruby вообще нет класса `ExpectedConditions`, а в реализации на JavaScript отсутствует вспомогательный класс для работы с выпадающими списками (`Select`). Поэтому хочется сказать спасибо нашим ученикам за то, что они помогают улучшать инструмент Selenium!
