---
layout: page
title: Раз селениум, два селениум
redirect_from: /articles/15-selenium-migration.html
date: 2011-07-11 10:17:00.000000000 +04:00
author: Алексей Баранцев
teaser: Три дня тому назад, ровно в полночь (по московскому времени), торжественно, под звуки фанфар, вышла вторая версия инструмента автоматизации веб-приложений Selenium 2.0. И это действительно очень важное событие в жизни тестировщиков, занимающихся автоматизацией веб-приложений, потому что это не простое обновление, а совершенно новый инструмент! На протяжении предыдущих двух месяцев, когда Selenium 2.0 находился на этапе бета-тестирования, и многие уже начали пробовать новую версию, мне неоднократно приходилось отвечать на вопрос, в чем же состоит кардинальное отличие 2.0 от предыдущей версии, и почему они при переходе на 2.0 никакого отличия не заметили. Мне приходилось объяснять, что для “настоящего” перехода на версию 2.0 недостаточно просто загрузить новый дистрибутив, надо ещё и переписать все свои тесты :) И это не совсем шутка, в ней есть изрядная доля правды
category: Статьи
---
Три дня тому назад, ровно в полночь (по московскому времени), торжественно, под звуки фанфар, [вышла вторая версия инструмента автоматизации веб-приложений Selenium 2.0](http://seleniumhq.wordpress.com/2011/07/08/selenium-2-0/). И это действительно очень важное событие в жизни тестировщиков, занимающихся автоматизацией веб-приложений, потому что это не простое обновление, а совершенно новый инструмент!

На протяжении предыдущих двух месяцев, когда Selenium 2.0 находился на этапе бета-тестирования, и многие уже начали пробовать новую версию, мне неоднократно приходилось отвечать на вопрос, **в чем же состоит кардинальное отличие 2.0 от предыдущей версии**, и почему они при переходе на 2.0 никакого отличия не заметили. Мне приходилось объяснять, что для “настоящего” перехода на версию 2.0 недостаточно просто загрузить новый дистрибутив, надо ещё и переписать все свои тесты :) И это не совсем шутка, в ней есть изрядная доля правды.

Заранее предвидя, что с выходом официального релиза количество переходов на новую версию увеличится, и мне придется снова и снова объяснять, чем она отличается от предыдущей и как правильно осуществлять переход, я решил написать эту заметку, дабы впоследствии просто ссылаться на неё.

Первое, что надо запомнить – **Selenium 2.0 обладает полной обратной совместимостью**. Всё, что было в версии 1.0, по прежнему присутствует в новой версии, оно никуда не исчезло и в обозримом будущем не исчезнет. Поэтому можно просто загрузить дистрибутив 2.0, запустить свои старые тесты с новым Selenium-сервером – и всё должно работать как раньше. Между прочим, даже многие старые баги сохранились, потому что при разработке новой версии эту часть кода старались вообще не трогать, усилия были сосредоточены на другом направлении. Впрочем, некоторые изменения всё таки вносились, главным образом нацеленные на поддержку новых версий браузеров Internet Explorer (до версии 9 включительно) и Firefox (до версии 5 включительно).

Но чем же всё таки новая версия отличается от предыдущей?

**Selenium 2.0 состоит из двух практически не связанных друг с другом частей**:

* всё то, что было в версии 1.0, далее будем называть это **Selenium Classic**,
* новый инструмент, в основе которого лежит технология WebDriver, и который как раз был основным направлением развития при разработке версии 2.0, <br />далее будем называть это **WebDriver**.

Фактически это два совершенно разных инструмента, завернутых в общую упаковку. Они имеют разные интерфейсы, то есть наборы команд. В их основе лежат разные технологии. Что же их в них есть общего? Да практически ничего! Разве только то, что оба предназначены для автоматизации управления веб-приложением через браузер :)

WebDriver ранее существовал сам по себе, он вовсе не является результатом эволюционного развития Selenium Classic. Напротив, он появился в новой версии именно потому, что эволюция Selenium Classic зашла в тупик, и для дальнейшего движения вперед нужно было полностью отказаться от существующего технического решения, несмотря на все его достоинства, и выбрать альтернативную технологию. Этой альтернативой стал WebDriver. Он может делать больше, он работает быстрее, он точнее эмулирует действия пользователя, его поддерживают вендоры браузеров (Mozilla, Google, Opera). Это действительно качественный скачок, а не эволюционное развитие.

Ниже я постарался свести в табличку список отличий двух инструментов. Некоторые из них сугубо “внутренние”, невидимые пользователям (то есть разработчикам тестов), некоторые – “внешние”, которые показывают различия в использовании при разработке тестов. Список, конечно, далеко не полный, но даже он даёт представление о том, насколько разные это инструменты.

| | Selenium Classic | WebDriver |
| Способ взаимодействия с браузером | В браузер внедряется специальная универсальная библиотека Selenium Core, написанная на JavaScript, и позволяющая выполнять набор команд, эмулирующих действия пользователя | Взаимодействие с браузером происходит через нативный интерфейс (для каждого браузера свой), через который выполняются команды, частично реализованные на JavaScript, а частично нативные |
| Набор команд | Большой, хаотически сложившийся в результате эволюции | Минимальный, соответствующий тому, какие действия может выполнять пользователь, в основном всё сводится к `click` и `sendKeys` |
| События, генерируемые в браузере в результате тестовых воздействий | Многие события не генерируются, нужно это делать искусственно, иногда явно вызывая операцию fireEvent | События генерируются в точности такие же, как при ручном выполнении, потому что воздействие на браузер максимально точно эмулирует действия пользователя |
| Удаленное управление браузером | Да, с использованием протокола Selenium Remote Control | Да, с использованием протокола WebDriver JSON |
| Поиск элементов | Всегда от корня дерева DOM | Можно задавать контекст поиска – либо все дерево DOM, либо отдельный элемент и его поддерево (то есть вложенные элементы) |
| Ожидание появления элемента (перед совершением некоторого действия с ним) | Эксплицитное, с использованием класса `Wait` | Либо эксплицитное, с использованием класса `WebDriverWait`, либо имплицитное – все команды поиска элементов автоматически становятся ожидающими |
| Работа с невидимыми элементами | Возможна | Невозможна (потому что пользователь вручную не может этого делать) |

Теперь пришло время рассказать о том, **как переходить с Selenium Classic на WebDriver**. Вопрос о том, надо ли переходить оставим в стороне, оставшаяся часть статьи предназначена для тех, кто уже принял решение о переходе, имея некоторое количество тестов, разработанных с использованием Selenium Classic.

Я немного слукавил, умолчав одну важную деталь – **WebDriver может “эмулировать” интерфейс Selenium Classic для Java и .Net**. Вот оно, объединяющее звено! И это звено играет крайне важную роль при миграции – можно продолжать использовать старый набор команд, но выполняться они будут с использованием новой технологии взаимодействия с браузером. Это позволяет переписывать тесты постепенно.

![Emulation](http://software-testing.ru/images/stories/library/barancev/selenium/selenium1_emulation.png)

Алгоритм миграции таков

* Меняем инициализацию Selenium – вместо `DefaultSelenium` используем `WebDriverBackedSelenium` (это и есть эмулятор старого набора команд).
* Запускаем тесты, смотрим, где "сбоит" и дорабатываем.
* Постепенно переписываем тесты на новую систему команд, так чтобы в тестах использовался `WebDriver` непосредственно, а не через ширму эмулятора `WebDriverBackedSelenium`.
* Когда все тесты переписаны, убираем `WebDriverBackedSelenium`, оставляем только чистый `WebDriver`, эмулятор больше не нужен.

Увы, второй шаг в этом алгоритме является неизбежным. Несмотря на то, что в режиме эмуляции поддерживается старый набор команд, работать они могут несколько иначе, чем раньше. На самом деле они работают лучше, правильнее, но это всё равно плохо, потому что для старых плохо работающих команд приходилось создавать "костыли", и они теперь мешают.

Например, если ранее после `click` не срабатывали какие-нибудь обработчики событий, приходилось добавлять вызовы методов `fireEvent`. В режиме эмуляции `click` генерирует все события, так что `fireEvent` больше не нужен, и даже вреден, поскольку приведет к повторному срабатыванию обработчика, его необходимо удалять.

Другой широкораспространенный случай – при вводе текста в поле командой `type` не срабатывали обработчики клавиатурных событий (`keyUp`, `keyPress`, `keyDown`), так что их приходилось генерировать отдельно, иногда даже при помощи "нативных" методов нажатия клавиш. `WebDriver` в режиме эмуляции генерирует все нужные события при вводе текста, поэтому все эти дополнительные ухищрения опять таки оказываются лишними, их надо удалять.

Ещё некоторые отличия `WebDriverBackedSelenium` (то есть `WebDriver` в режиме эмуляции) от Selenium Classic можно найти в официальной документации в [разделе, посвященном миграции](http://seleniumhq.org/docs/appendix_migrating_from_rc_to_webdriver.html). Вероятно, этот список ещё будет пополняться. Но в целом практика показывает, что переход осуществляется достаточно безболезненно.

И ещё раз напомню, что эта возможность на данный момент доступна только для Java и .Net, разработчикам на других языках придется ещё немного подождать, пока будут реализованы эмуляторы для всех языков, либо переписывать тесты сразу все, без использования эмулятора.

**Если вам нужна помощь в миграции на новую версию, в разработке новых тестов, или просто надо навести порядок в существующих тестах – пишите на адрес <mailto:info@software-testing.ru>, мы любим автоматизацию и умеем это делать.**
