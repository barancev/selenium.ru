---
layout: page
title: Что такое Selenium WebDriver?
redirect_from: /articles/63-what-is-webdriver.html
date: 2012-09-26 06:23:53.000000000 +04:00
author: Алексей Баранцев
teaser: Эта статья является продолжением более общей статьи "Что такое Selenium?", в которой объясняется, какое положение занимает Selenium WebDriver среди других инструментов семейства Selenium. Здесь я постараюсь рассказать более подробно о том, что такое Selenium WebDriver, и почему его бессмысленно сравнивать с TestComplete, QuickTest Pro и другими инструментами автоматизации тестирования. И дело не только в том, что Selenium WebDriver бесплатный и открытый – его столь же бессмысленно сравнивать с другими бесплатными инструментами, такими как Sahi или Robot Framework
category: Статьи
---
Эта статья является продолжением более общей статьи ["Что такое Selenium?"](/articles/62-what-is-selenium.html), в которой объясняется, какое положение занимает Selenium WebDriver среди других инструментов семейства Selenium.

Здесь я постараюсь рассказать более подробно о том, что такое Selenium WebDriver, и почему его бессмысленно сравнивать с TestComplete, QuickTest Pro и другими инструментами автоматизации тестирования. И дело не только в том, что Selenium WebDriver бесплатный и открытый – его столь же бессмысленно сравнивать с другими бесплатными инструментами, такими как Sahi или Robot Framework.

Почему?

Потому что **Selenium WebDriver – это не инструмент для автоматизации тестирования**.

А что же это такое?

На этот вопрос можно дать несколько разных ответов, сначала я дам короткие ответы, а потом – более подробные.

Кроме того, я объясню, почему Selenium WebDriver имеет такой убогий и неудобный в использовании интерфейс (набор команд), почему он не генерирует красивые отчёты и почему несмотря на всё это он настолько популярен :)

На всякий случай оговорюсь, что хотя в этой статье речь идёт про WebDriver, многие аргументы справедливы и в отношении Selenium RC, но я не буду ничего говорить специально про эту устаревшую версию, потому что её место – на свалке истории.

## Итак, что такое Selenium WebDriver?

**По назначению Selenium WebDriver представляет собой драйвер браузера**, то есть программную библиотеку, которая позволяет разрабатывать программы, управляющие поведением браузера.

**По своей сущности Selenium WebDriver представляет собой**:

* **спецификацию программного интерфейса для управления браузером**,
* **референсные реализации этого интерфейса для нескольких браузеров**,
* **набор клиентских библиотек для этого интерфейса на нескольких языках программирования**.

Теперь понятно, почему бессмысленно сравнивать Selenium WebDriver с "другими инструментами тестирования"? Непонятно? Тогда добавим подробностей.

## Selenium WebDriver – это драйвер браузера

Наверняка каждый, кто сталкивался с компьютерами, даже не айтишник, знает слово "драйвер". Это такая маленькая программа, точнее программная библиотека, которая позволяет другим программам взаимодействовать с некоторым устройством. Драйвер принтера позволяет печатать что-нибудь на принтере. Драйвер диска позволяет читать и писать данные. Драйвер сетевой карты позволяет обмениваться данными с другими компьютерами по сети.

С драйвером пользователи не работают непосредственно. Они работают с прикладными программами, которые, посредством драйверов, взаимодействуют с теми или иными устройствами. Драйвер не имеет пользовательского интерфейса. Постойте, но ведь иногда бывает пользовательский интерфейс для настройки драйвера? Бывает. Но это интерфейс *программы для настройки драйвера*, а не самого драйвера. Драйвер имеет только программный интерфейс, его назначение состоит в том, чтобы дать возможность прикладным пользовательским программам взаимодействовать с устройством.

Так вот, **Selenium WebDriver, или просто WebDriver – это драйвер браузера, то есть не имеющая пользовательского интерфейса программная библиотека, которая позволяет различным другим программам взаимодействовать с браузером, управлять его поведением, получать от браузера какие-то данные и заставлять браузер выполнять какие-то команды.**

Исходя из этого определения, ясно, что **WebDriver не имеет прямого отношения к тестированию**. Он всего лишь предоставляет автотестам доступ к браузеру. На этом его функции заканчиваются.

Структурирование, группировку и запуск тестов, а также генерацию отчётов о тестировании, обеспечивает фреймворк тестирования, такой как [JUnit](http://www.junit.org/) или [TestNG](http://testng.org/) для Java, [NUnit](http://www.nunit.org/) или [Gallio](http://www.gallio.org/) для .Net, [RSpec](http://rspec.info/) или [Cucumber](http://cukes.info/) для Ruby и так далее. Разработка тестов ведётся в среде [Eclipse](http://www.eclipse.org/), [Intellij IDEA](http://www.jetbrains.com/idea/), [Visual Studio](http://www.microsoft.com/visualstudio/rus/products/visual-studio-overview), [RubyMine](http://www.jetbrains.com/ruby/) и так далее. Сборка осуществляется посредством [Maven](http://maven.apache.org/), [Gradle](http://www.gradle.org/), [Ant](http://ant.apache.org/), [NAnt](http://nant.sourceforge.net/), [Rake](http://rake.rubyforge.org/) и так далее. Запуск тестов по расписанию и публикацию отчётов выполняет сервер непрерывной интеграции [Jenkins](http://jenkins-ci.org/), [CruiseControl](http://cruisecontrol.sourceforge.net/), [Bamboo](http://www.atlassian.com/software/bamboo/), [TeamCity](http://www.jetbrains.com/teamcity/) и так далее. Всё это самостоятельные инструменты, не имеющие отношения к проекту Selenium.

Впрочем, в рамках проекта Selenium разрабатывается не только драйвер, но ещё несколько сопутствующих продуктов – Selenium Server позволяет организовать удалённый запуск браузера, при помощи Selenium Grid можно построить кластер из Selenium-серверов. Они встают в один ряд с вышеперечисленными инструментами и фреймворками, потому что также участвуют в построении системы запуска тестов. Кроме того, имеется "рекордер", который называется Selenium IDE, он умеет записывать действия пользователя и генерировать код, в котором используется интерфейс WebDriver для выполнения записанных действий.

Но главным в проекте Selenium является именно WebDriver, это ключевой элемент экосистемы Selenium.

Существуют ли другие драйверы? Разумеется.

Внутри каждого коммерческого "интегрированного" инструмента имеются драйверы браузеров, но они как правило не могут быть использованы отдельно вне этого инструмента. Есть и бесплатные открытые драйверы – [Watir](http://watir.com/) предоставляет доступ к основным браузерам, [WatiN](http://watin.org/) имеет неплохой драйвер для браузера Internet Explorer, [Sahi](http://sahi.co.in/) умеет работать с "большой пятёркой" браузеров.

## Как сравнить Selenium WebDriver с другими инструментами?

Из всего вышенаписанного можно сделать вывод, что сравнивать WebDriver с каким-нибудь инструментом тестирования типа TestComplete или Sahi бессмысленно. Они находятся в разных весовых категориях. Это всё равно, что сравнивать драйвер принтера с текстовым редактором.

А что можно сравнивать?

Можно сравнивать WebDriver с драйверами, которые включены в состав различных инструментов. Например, можно сравнить:

* какие браузеры и какие версии браузеров поддерживаются, в том числе мобильные,
* какие операционные системы поддерживаются, в том числе мобильные,
* можно ли управлять одновременно несколькими браузерами на одной машине, не возникает ли конфликтов,
* можно ли управлять браузером на удалённой машине,
* какие действия в браузере можно выполнять,
* какие данные из браузера можно получать,
* насколько точно драйвер эмулирует действия пользователя, то есть генерирует ли он все те же самые события в браузере, которые возникают при работе настоящего пользователя,
* можно ли работать с диалоговыми окнами (alert, prompt),
* можно ли работать с "нативными" окнами (диалог загрузки файлов),
* можно ли работать с HTTPS-протоколами и сертификатами,
* и так далее.

И вот тут WebDriver оказывается бесспорным лидером.

Впрочем, само сравнение WebDriver с чем бы то ни было выходит за рамки этой статьи, предлагаем читателям сделать это самостоятельно.

Что касается сравнения с "комплексным" инструментами типа TestComplete или Sahi, для этого нужно брать не WebDriver, а полный стек.

Например, стек для технологии Java может быть таким: Jenkins + Maven + Thucydices + JUnit+ WebDriver. К этому добавляются ещё все возможности языка программирования Java, плюс масса плагинов для Maven и Jenkins, а чтобы совсем всё было круто – можно запускать тесты в облаках, используя какой-нибудь сервис типа [SauceLabs](https://saucelabs.com/).

Вот тогда сравнение будет интересным. Но это уже заслуга не только WebDriver, важен весь стек, а не только драйвер браузера. Что касается WebDriver, стоит отметить лишь то, что он прекрасно встраивается практически в любой стек, это одно из его достоинств как "независимого" драйвера.

Разумеется, WebDriver может использоваться не только при тестировании. Ему вообще безразлично, кто и зачем хочет управлять браузером. Вы можете автоматизировать какие-то рутинные задачи. Можете сделать ботов, которые будут флудить в форумах. Можете сделать скрипт, который автоматически снимает скриншоты для документации. Всё что угодно. Драйверу всё равно. Он всего лишь предоставляет доступ к браузеру.

Кроме того, какой бы инструмент вы ни использовали – вполне возможно, что к нему удастся подключить WebDriver, который имеет реализации на самых разных языках – Java, C#, Ruby, Python. И тогда вы в дополнение ко всем возможностям вашего любимого инструмента добавите все достоинства WebDriver. Это стоит потраченных усилий, потому что среди драйверов на данный момент он лучший.

Ну да, я уже несколько раз повторил, что "он лучший", но при этом не привёл сравнения с другими драйверами. И не буду. Потому что есть аргумент, который в перспективе важнее любых сравнений.

## Selenium WebDriver – это спецификация интерфейса для управления браузером

Самое главное отличие WebDriver от всех остальных драйверов заключается в том, что это "стандартный" драйвер, а все остальные – "нестандартные".

И это не простая фигура речи.

Организация W3C действительно приняла WebDriver за основу при разработке [стандарта интерфейса для управления браузером](http://www.w3.org/TR/2012/WD-webdriver-20120710/). Сейчас он находится в состоянии публичного рассмотрения.

Через год-полтора этот стандарт будет утверждён. И тогда реализация интерфейса WebDriver будет возложена на производителей браузеров, а WebDriver как независимый драйвер, возможно, в будущем исчезнет совсем, потому что он будет встроен непосредственно в браузеры.

Таким образом, можно сказать, что Selenium WebDriver это вообще не инструмент, а спецификация, документ, стандарт, описывающий, какой интерфейс браузеры должны предоставлять наружу, чтобы через этот интерфейс можно было браузером управлять.

Пока стандарт обсуждается, производители браузеров уже действуют. В рамках проекта Selenium было разработано несколько референсных реализаций для различных браузеров, но постепенно эта деятельность переходит в ведение производителей браузеров. Драйвер для браузера Chrome [разрабатывается в рамках проекта Chromium](http://code.google.com/p/chromedriver/), его делает та же команда, которая занимается разработкой самого браузера. Драйвер для браузера Opera [разрабатывается в компании Opera Software](http://www.opera.com/developer/tools/operadriver/). Драйвер для браузера Firefox пока разрабатывается участниками проекта Selenium, но в недрах компании Mozilla уже готовится ему замена, которая носит кодовое название [Marionette](https://developer.mozilla.org/en-US/docs/Marionette). Этот новый драйвер для Firefox уже доступен в девелоперских сборках браузера. На очереди Internet Explorer и Safari, к их разработке сотрудники соответствующих компаний пока не подключились, но кое-какие сдвиги в этом направлении есть, потому что стандарт (даже будущий) обязывает.

В общем, можно сказать, что Selenium это единственный проект по созданию средств автоматизации управления браузерами, в котором участвуют непосредственно компании, разрабатывающие браузеры. Это одна из ключевых причин его успеха.

А что случится после того, как во всех браузерах будет реализован этот стандарт?

Было бы логично ожидать, что производители инструментов тестирования не станут изобретать велосипеды, а будут управлять браузером через стандартный интерфейс. Можно сказать, что все инструменты станут использовать WebDriver для взаимодействия с браузером. Но это будет уже не Selenium WebDriver как независимый драйвер, а Selenium WebDriver как спецификация интерфейса.

## Так почему же у него такой примитивный интерфейс?

Именно потому, что WebDriver – это:

* драйвер браузера, то есть библиотека достаточно низкого уровня абстракции,
* стандарт на интерфейс управления браузером, то есть минимальный набор команд, который должен быть реализован в каждом браузере.

При разработке Selenium WebDriver изначально была поставлена цель – не включать в него ничего лишнего. Стандартный интерфейс управления браузером должен быть простым и стабильным.

Набор команд последовательно сокращался, были выброшены такие «повышающие удобство использования» команды как check, uncheck (для чекбоксов), select (для выпадающих списков). Все они сводятся к более простой команде click и поэтому они лишние. Сейчас в интерфейсе WebDriver осталась только одна избыточная команда – это submit, но может быть когда-нибудь и она будет устранена.

Кроме того, структура интерфейса проектировалась таким образом, чтобы можно было описать его на языке IDL (именно это сделано в стандарте W3C) и сделать реализации на различных языках программирования. Поэтому использовался минимум языковых идиом, минимум «скрытых» переменных, интерфейс «тупой и прямолинейный».

Но зато благодаря этой примитивности интерфейса сейчас для интерфейса WebDriver имеются реализации клиентских библиотек на Java, C#, Ruby, Python, JavaScript, PHP, Perl и даже Haskell!

И благодаря той же самой простоте WebDriver прекрасно интегрируется с любыми другими инструментами, встраивается в любой стек. В этом секрет его популярности и быстрого распространения – он не пытается «победить» другие инструменты, вместо этого он интегрируется с ними.

## А как же удобство использования?

Эту задачу должны решать расширения, построенные на базе Selenium WebDriver. Именно они должны предоставлять расширенный набор команд, реализуя эти команды через примитивный интерфейс WebDriver. В дистрибутиве Selenium имеется класс Select, предназначенный для работы с выпадающими списками, который является наглядной демонстрацией того, как должны строиться расширения.

Постепенно появляются библиотеки, которые строятся на базе Selenium WebDriver и предоставляют более высокий уровень абстракции: [Selenide](https://github.com/codeborne/selenide), [fluent-selenium](https://github.com/SeleniumHQ/fluent-selenium), [watir-webdriver](http://watirwebdriver.com/), [Thucidides](http://www.thucydides.info/). Популярные фреймворки для проектирования тестов позволяют наряду с другими драйверами использовать WebDriver. Среди таких фреймворков можно упомянуть [Robot Framework](http://code.google.com/p/robotframework/), [Capybara](http://jnicklas.github.com/capybara/) и тот же [Thucidides](http://www.thucydides.info/).

Рано или поздно должны появиться вспомогательные библиотеки, облегчающие работу с теми или иными наборами виджетов – jQuery, Prototype, ExtJS, GWT и прочими.

Число таких расширений и инструментов будет расти, сложность тоже. Так что вскоре может так случиться, что вы, используя какой-то инструмент, будете выполнять тесты, даже не подозревая о том, что взаимодействие с браузером осуществляется через драйвер Selenium WebDriver.

## Стоит ли тогда вообще изучать Selenium?

Может быть лучше изучать эти библиотеки и инструменты более высокого уровня?

Чтобы ответить на этот вопрос, я сформулирую его иначе: кому и зачем стоит изучать Selenium, а кому лучше изучать более высокоуровневые библиотеки и инструменты?

* Какой бы инструмент вы ни использовали, вам нужно выбрать драйвер, управляющий браузером. Чтобы его выбрать, вы должны знать возможности драйвера – что он может, а чего не может. На этом уровне Selenium необходимо освоить каждому специалисту по автоматизации. При этом конкретно интерфейс WebDriver, если вы с ним работаете, изучать нет необходимости.
* Простой набор команд выучить проще, чем «расширенный», то есть Selenium освоить проще, чем его расширение. У этого явления есть и обратная сторона – если вы изучили расширенный набор команд, то внезапно оказывается, что набор команд WebDriver вы при этом тоже освоили.
* Расширения, как правило, языково-зависимые, потому что добавление удобства предполагает использование языковых идиом, типичных приёмов организации кода на том или ином языке программирования. Базовый интерфейс WebDriver простой, поэтому освоив его, вы сможете использовать его на любом языке, он будет выглядеть практически одинаково.
* Большинство библиотек, нацеленных на повышение удобства интерфейса, улучшают средства поиска элементов – дополнительные типы локаторов, более удобный способ описания локаторов и так далее. Примитивы, соответствующие действиям пользователя, в WebDriver уже и так достаточно хороши. Хотя, конечно, библиотеки будут реализовывать типовые «связки», то есть последовательности этих действий, аналогично тому, как это сделано в классе Select для выпадающих списков.
* Если вы используете «таблички» для описания тестов (как в Robot Framework) или специальный язык для описания на уровне предметной области (DSL, Domain Specific Language) – вам нет необходимости знать о примитивах WebDriver. Но если вы реализуете «фикстуры» для тестов, описываете действия, которыми можно будет оперировать в табличках, реализуете DSL – вам придётся работать непосредственно с WebDriver, либо с каким-то его расширением, но не слишком высокоуровневым.
* И самый последний аргумент, который, я надеюсь, со временем будет становиться всё менее актуальным – увы, пока хороших расширений катастрофически не хватает. Они обязательно появятся. Может быть, именно вы реализуете одно из таких расширений. Для этого вам понадобиться изучить интерфейс WebDriver. И те, кто будут пользоваться плодами вашего труда, смогут работать с более высокоуровневой библиотекой. А пока приходится использовать непосредственно WebDriver с небольшими надстройками над ним.

Надеюсь, всё вышесказанное позволит вам лучше понять, какое место Selenium WebDriver занимает в общей картине мира и как он соотносится с другими инструментами. Если всё ещё остались непонятные моменты – задавайте вопросы в комментариях, я постараюсь всё прояснить.

Ну а если вы решили освоить Selenium WebDriver – [добро пожаловать на мои тренинги](/trainings/), я научу вас пользоваться этим замечательным инструментом, разумеется, в связке с некоторыми другими инструментами, упомянутыми в этой статье.
