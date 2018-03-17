---
layout: page
title: Что такое Selenium WebDriver?
joomla_id: 63
joomla_url: what-is-webdriver
date: 2012-09-26 06:23:53.000000000 +04:00
author: Super User
excerpt: |-
  <p><span style="font-family: arial, helvetica, sans-serif; font-size: 13px; line-height: 21.75px;"><img class="caption" src="http://software-testing.ru/images/stories/library/barancev/selenium/logo-selenium.png" border="0" width="150" height="136" style="float: left;" />Автор: </span><a href="about/authors/9-barancev" target="_blank" style="margin: 0px; padding: 0px; color: #095197; font-family: arial, helvetica, sans-serif; font-size: 13px; line-height: 21.75px;">Алексей Баранцев</a></p>
  <p>Эта статья является продолжением более общей статьи <a href="articles/62-what-is-selenium.html">"Что такое Selenium?"</a>, в которой объясняется, какое положение занимает Selenium WebDriver среди других инструментов семейства Selenium.</p>
  <p>Здесь я постараюсь рассказать более подробно о том, что такое Selenium WebDriver, и почему его бессмысленно сравнивать с TestComplete, QuickTest Pro и другими инструментами автоматизации тестирования. И дело не только в том, что Selenium WebDriver бесплатный и открытый – его столь же бессмысленно сравнивать с другими бесплатными инструментами, такими как Sahi или Robot Framework.</p>
  <p>Почему?</p>
  <p>Потому что <strong>Selenium WebDriver – это не инструмент для автоматизации тестирования</strong>.</p>
  <p>А что же это такое?</p>
  <p>На этот вопрос можно дать несколько разных ответов, сначала я дам короткие ответы, а потом – более подробные.</p>
  <p>Кроме того, я объясню, почему Selenium WebDriver имеет такой убогий и неудобный в использовании интерфейс (набор команд), почему он не генерирует красивые отчёты и почему несмотря на всё это он настолько популярен :)</p>
  <p>На всякий случай оговорюсь, что хотя в этой статье речь идёт про WebDriver, многие аргументы справедливы и в отношении Selenium RC, но я не буду ничего говорить специально про эту устаревшую версию, потому что её место – на свалке истории.</p>
  <h2><strong>Итак, что такое Selenium WebDriver?</strong></h2>
category: Статьи
---
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 13px; line-height: 21.75px;"><img class="caption" src="http://software-testing.ru/images/stories/library/barancev/selenium/logo-selenium.png" border="0" width="150" height="136" style="float: left;" />Автор: </span><a href="about/authors/9-barancev" target="_blank" style="margin: 0px; padding: 0px; color: #095197; font-family: arial, helvetica, sans-serif; font-size: 13px; line-height: 21.75px;">Алексей Баранцев</a></p>
<p>Эта статья является продолжением более общей статьи <a href="articles/62-what-is-selenium.html">"Что такое Selenium?"</a>, в которой объясняется, какое положение занимает Selenium WebDriver среди других инструментов семейства Selenium.</p>
<p>Здесь я постараюсь рассказать более подробно о том, что такое Selenium WebDriver, и почему его бессмысленно сравнивать с TestComplete, QuickTest Pro и другими инструментами автоматизации тестирования. И дело не только в том, что Selenium WebDriver бесплатный и открытый – его столь же бессмысленно сравнивать с другими бесплатными инструментами, такими как Sahi или Robot Framework.</p>
<p>Почему?</p>
<p>Потому что <strong>Selenium WebDriver – это не инструмент для автоматизации тестирования</strong>.</p>
<p>А что же это такое?</p>
<p>На этот вопрос можно дать несколько разных ответов, сначала я дам короткие ответы, а потом – более подробные.</p>
<p>Кроме того, я объясню, почему Selenium WebDriver имеет такой убогий и неудобный в использовании интерфейс (набор команд), почему он не генерирует красивые отчёты и почему несмотря на всё это он настолько популярен :)</p>
<p>На всякий случай оговорюсь, что хотя в этой статье речь идёт про WebDriver, многие аргументы справедливы и в отношении Selenium RC, но я не буду ничего говорить специально про эту устаревшую версию, потому что её место – на свалке истории.</p>
<h2><strong>Итак, что такое Selenium WebDriver?</strong></h2><h2> </h2>
<p><strong>По назначению Selenium WebDriver представляет собой драйвер браузера</strong>, то есть программную библиотеку, которая позволяет разрабатывать программы, управляющие поведением браузера.</p>
<p><strong>По своей сущности Selenium WebDriver представляет собой</strong>:</p>
<ul>
<li><strong>спецификацию программного интерфейса для управления браузером</strong>,</li>
<li><strong>референсные реализации этого интерфейса для нескольких браузеров</strong>,</li>
<li><strong>набор клиентских библиотек для этого интерфейса на нескольких языках программирования</strong>.</li>
</ul>
<p>Теперь понятно, почему бессмысленно сравнивать Selenium WebDriver с "другими инструментами тестирования"? Непонятно? Тогда добавим подробностей.</p>
<h2><strong>Selenium WebDriver – это драйвер браузера</strong></h2>
<p>Наверняка каждый, кто сталкивался с компьютерами, даже не айтишник, знает слово "драйвер". Это такая маленькая программа, точнее программная библиотека, которая позволяет другим программам взаимодействовать с некоторым устройством. Драйвер принтера позволяет печатать что-нибудь на принтере. Драйвер диска позволяет читать и писать данные. Драйвер сетевой карты позволяет обмениваться данными с другими компьютерами по сети.</p>
<p>С драйвером пользователи не работают непосредственно. Они работают с прикладными программами, которые, посредством драйверов, взаимодействуют с теми или иными устройствами. Драйвер не имеет пользовательского интерфейса. Постойте, но ведь иногда бывает пользовательский интерфейс для настройки драйвера? Бывает. Но это интерфейс <em>программы для настройки драйвера</em>, а не самого драйвера. Драйвер имеет только программный интерфейс, его назначение состоит в том, чтобы дать возможность прикладным пользовательским программам взаимодействовать с устройством.</p>
<p>Так вот, <strong>Selenium WebDriver, или просто WebDriver – это драйвер браузера, то есть не имеющая пользовательского интерфейса программная библиотека, которая позволяет различным другим программам взаимодействовать с браузером, управлять его поведением, получать от браузера какие-то данные и заставлять браузер выполнять какие-то команды.</strong></p>
<p>Исходя из этого определения, ясно, что <strong>WebDriver не имеет прямого отношения к тестированию</strong>. Он всего лишь предоставляет автотестам доступ к браузеру. На этом его функции заканчиваются.</p>
<p>Структурирование, группировку и запуск тестов, а также генерацию отчётов о тестировании, обеспечивает фреймворк тестирования, такой как <a href="http://www.junit.org/">JUnit</a> или <a href="http://testng.org/">TestNG</a> для Java, <a href="http://www.nunit.org/">NUnit</a> или <a href="http://www.gallio.org/">Gallio</a> для .Net, <a href="http://rspec.info/">RSpec</a> или <a href="http://cukes.info/">Cucumber</a> для Ruby и так далее. Разработка тестов ведётся в среде <a href="http://www.eclipse.org/">Eclipse</a>, <a href="http://www.jetbrains.com/idea/">Intellij IDEA</a>, <a href="http://www.microsoft.com/visualstudio/rus/products/visual-studio-overview">Visual Studio</a>, <a href="http://www.jetbrains.com/ruby/">RubyMine</a> и так далее. Сборка осуществляется посредством <a href="http://maven.apache.org/">Maven</a>, <a href="http://www.gradle.org/">Gradle</a>, <a href="http://ant.apache.org/">Ant</a>, <a href="http://nant.sourceforge.net/">NAnt</a>,<a href="http://rake.rubyforge.org/">Rake</a> и так далее. Запуск тестов по расписанию и публикацию отчётов выполняет сервер непрерывной интеграции – <a href="http://jenkins-ci.org/">Jenkins</a>, <a href="http://cruisecontrol.sourceforge.net/">CruiseControl</a>, <a href="http://www.atlassian.com/software/bamboo/">Bamboo</a>, <a href="http://www.jetbrains.com/teamcity/">TeamCity</a> и так далее. И всё это – самостоятельные инструменты, не имеющие отношения к проекту Selenium.</p>
<p>Впрочем, в рамках проекта Selenium разрабатывается не только драйвер, но ещё несколько сопутствующих продуктов – Selenium Server позволяет организовать удалённый запуск браузера, при помощи Selenium Grid можно построить кластер из Selenium-серверов. Они встают в один ряд с вышеперечисленными инструментами и фреймворками, потому что также участвуют в построении системы запуска тестов. Кроме того, имеется "рекордер", который называется Selenium IDE, он умеет записывать действия пользователя и генерировать код, в котором используется интерфейс WebDriver для выполнения записанных действий.</p>
<p>Но главным в проекте Selenium является именно WebDriver, это ключевой элемент экосистемы Selenium.</p>
<p>Существуют ли другие драйверы? Разумеется.</p>
<p>Внутри каждого коммерческого "интегрированного" инструмента имеются драйверы браузеров, но они как правило не могут быть использованы отдельно вне этого инструмента. Есть и бесплатные открытые драйверы – <a href="http://watir.com/">Watir</a> предоставляет доступ к основным браузерам, <a href="http://watin.org/">WatiN</a> имеет неплохой драйвер для браузера Internet Explorer, <a href="http://sahi.co.in/">Sahi</a> умеет работать с "большой пятёркой" браузеров.</p>
<h2><strong>Как сравнить Selenium WebDriver с другими инструментами?</strong></h2>
<p>Из всего вышенаписанного можно сделать вывод, что сравнивать WebDriver с каким-нибудь инструментом тестирования типа TestComplete или Sahi бессмысленно. Они находятся в разных весовых категориях. Это всё равно, что сравнивать драйвер принтера с текстовым редактором.</p>
<p>А что можно сравнивать?</p>
<p>Можно сравнивать WebDriver с драйверами, которые включены в состав различных инструментов. Например, можно сравнить:</p>
<ul>
<li>какие браузеры и какие версии браузеров поддерживаются, в том числе мобильные,</li>
<li>какие операционные системы поддерживаются, в том числе мобильные,</li>
<li>можно ли управлять одновременно несколькими браузерами на одной машине, не возникает ли конфликтов,</li>
<li>можно ли управлять браузером на удалённой машине,</li>
<li>какие действия в браузере можно выполнять,</li>
<li>какие данные из браузера можно получать,</li>
<li>насколько точно драйвер эмулирует действия пользователя, то есть генерирует ли он все те же самые события в браузере, которые возникают при работе настоящего пользователя,</li>
<li>можно ли работать с диалоговыми окнами (alert, prompt),</li>
<li>можно ли работать с "нативными" окнами (диалог загрузки файлов),</li>
<li>можно ли работать с HTTPS-протоколами и сертификатами,</li>
<li>и так далее.</li>
</ul>
<p>И вот тут WebDriver оказывается бесспорным лидером.</p>
<p>Впрочем, само сравнение WebDriver с чем бы то ни было выходит за рамки этой статьи, предлагаем читателям сделать это самостоятельно.</p>
<p>Что касается сравнения с "комплексным" инструментами типа TestComplete или Sahi, для этого нужно брать не WebDriver, а полный стек.</p>
<p>Например, стек для технологии Java может быть таким: Jenkins + Maven + Thucydices + JUnit+ WebDriver. К этому добавляются ещё все возможности языка программирования Java, плюс масса плагинов для Maven и Jenkins, а чтобы совсем всё было круто – можно запускать тесты в облаках, используя какой-нибудь сервис типа <a href="https://saucelabs.com/">SauceLabs</a>.</p>
<p>Вот тогда сравнение будет интересным. Но это уже заслуга не только WebDriver, важен весь стек, а не только драйвер браузера. Что касается WebDriver, стоит отметить лишь то, что он прекрасно встраивается практически в любой стек, это одно из его достоинств как "независимого" драйвера.</p>
<p>Разумеется, WebDriver может использоваться не только при тестировании. Ему вообще безразлично, кто и зачем хочет управлять браузером. Вы можете автоматизировать какие-то рутинные задачи. Можете сделать ботов, которые будут флудить в форумах. Можете сделать скрипт, который автоматически снимает скриншоты для документации. Всё что угодно. Драйверу всё равно. Он всего лишь предоставляет доступ к браузеру.</p>
<p>Кроме того, какой бы инструмент вы ни использовали – вполне возможно, что к нему удастся подключить WebDriver, который имеет реализации на самых разных языках – Java, C#, Ruby, Python. И тогда вы в дополнение ко всем возможностям вашего любимого инструмента добавите все достоинства WebDriver. Это стоит потраченных усилий, потому что среди драйверов на данный момент он лучший.</p>
<p>Ну да, я уже несколько раз повторил, что "он лучший", но при этом не привёл сравнения с другими драйверами. И не буду. Потому что есть аргумент, который в перспективе важнее любых сравнений.</p>
<h2><strong>Selenium WebDriver – это спецификация интерфейса для управления браузером</strong></h2>
<p>Самое главное отличие WebDriver от всех остальных драйверов заключается в том, что это "стандартный" драйвер, а все остальные – "нестандартные".</p>
<p>И это не простая фигура речи.</p>
<p>Организация W3C действительно приняла WebDriver за основу при разработке <a href="http://www.w3.org/TR/2012/WD-webdriver-20120710/">стандарта интерфейса для управления браузером</a>. Сейчас он находится в состоянии публичного рассмотрения.</p>
<p>Через год-полтора этот стандарт будет утверждён. И тогда реализация интерфейса WebDriver будет возложена на производителей браузеров, а WebDriver как независимый драйвер, возможно, в будущем исчезнет совсем, потому что он будет встроен непосредственно в браузеры.</p>
<p>Таким образом, можно сказать, что Selenium WebDriver это вообще не инструмент, а спецификация, документ, стандарт, описывающий, какой интерфейс браузеры должны предоставлять наружу, чтобы через этот интерфейс можно было браузером управлять.</p>
<p>Пока стандарт обсуждается, производители браузеров уже действуют. В рамках проекта Selenium было разработано несколько референсных реализаций для различных браузеров, но постепенно эта деятельность переходит в ведение производителей браузеров. Драйвер для браузера Chrome <a href="http://code.google.com/p/chromedriver/">разрабатывается в рамках проекта Chromium</a>, его делает та же команда, которая занимается разработкой самого браузера. Драйвер для браузера Opera <a href="http://www.opera.com/developer/tools/operadriver/">разрабатывается в компании Opera Software</a>. Драйвер для браузера Firefox пока разрабатывается участниками проекта Selenium, но в недрах компании Mozilla уже готовится ему замена, которая носит кодовое название <a href="https://developer.mozilla.org/en-US/docs/Marionette">Marionette</a>. Этот новый драйвер для Firefox уже доступен в девелоперских сборках браузера. На очереди Internet Explorer и Safari, к их разработке сотрудники соответствующих компаний пока не подключились, но кое-какие сдвиги в этом направлении есть, потому что стандарт (даже будущий) обязывает.</p>
<p>В общем, можно сказать, что Selenium это единственный проект по созданию средств автоматизации управления браузерами, в котором участвуют непосредственно компании, разрабатывающие браузеры. Это одна из ключевых причин его успеха.</p>
<p>А что случится после того, как во всех браузерах будет реализован этот стандарт?</p>
<p>Было бы логично ожидать, что производители инструментов тестирования не станут изобретать велосипеды, а будут управлять браузером через стандартный интерфейс. Можно сказать, что все инструменты станут использовать WebDriver для взаимодействия с браузером. Но это будет уже не Selenium WebDriver как независимый драйвер, а Selenium WebDriver как спецификация интерфейса.</p>
<h2><strong>Так почему же у него такой примитивный интерфейс?</strong></h2>
<p>Именно потому, что WebDriver – это:</p>
<ul>
<li>драйвер браузера, то есть библиотека достаточно низкого уровня абстракции,</li>
<li>стандарт на интерфейс управления браузером, то есть минимальный набор команд, который должен быть реализован в каждом браузере.</li>
</ul>
<p>При разработке Selenium WebDriver изначально была поставлена цель – не включать в него ничего лишнего. Стандартный интерфейс управления браузером должен быть простым и стабильным.</p>
<p>Набор команд последовательно сокращался, были выброшены такие «повышающие удобство использования» команды как check, uncheck (для чекбоксов), select (для выпадающих списков). Все они сводятся к более простой команде click и поэтому они лишние. Сейчас в интерфейсе WebDriver осталась только одна избыточная команда – это submit, но может быть когда-нибудь и она будет устранена.</p>
<p>Кроме того, структура интерфейса проектировалась таким образом, чтобы можно было описать его на языке IDL (именно это сделано в стандарте W3C) и сделать реализации на различных языках программирования. Поэтому использовался минимум языковых идиом, минимум «скрытых» переменных, интерфейс «тупой и прямолинейный».</p>
<p>Но зато благодаря этой примитивности интерфейса сейчас для интерфейса WebDriver имеются реализации клиентских библиотек на Java, C#, Ruby, Python, JavaScript, PHP, Perl и даже Haskell!</p>
<p>И благодаря той же самой простоте WebDriver прекрасно интегрируется с любыми другими инструментами, встраивается в любой стек. В этом секрет его популярности и быстрого распространения – он не пытается «победить» другие инструменты, вместо этого он интегрируется с ними.</p>
<h2><strong>А как же удобство использования?</strong></h2>
<p>Эту задачу должны решать расширения, построенные на базе Selenium WebDriver. Именно они должны предоставлять расширенный набор команд, реализуя эти команды через примитивный интерфейс WebDriver. В дистрибутиве Selenium имеется класс Select, предназначенный для работы с выпадающими списками, который является наглядной демонстрацией того, как должны строиться расширения.</p>
<p>Постепенно появляются библиотеки, которые строятся на базе Selenium WebDriver и предоставляют более высокий уровень абстракции: <a href="https://github.com/codeborne/selenide">Selenide</a>, <a href="https://github.com/SeleniumHQ/fluent-selenium">fluent-selenium</a>, <a href="http://watirwebdriver.com/">watir-webdriver</a>, <a href="http://www.thucydides.info/">Thucidides</a>. Популярные фреймворки для проектирования тестов позволяют наряду с другими драйверами использовать WebDriver. Среди таких фреймворков можно упомянуть <a href="http://code.google.com/p/robotframework/">Robot Framework</a>, <a href="http://jnicklas.github.com/capybara/">Capybara</a> и тот же <a href="http://www.thucydides.info/">Thucidides</a>.</p>
<p>Рано или поздно должны появиться вспомогательные библиотеки, облегчающие работу с теми или иными наборами виджетов – jQuery, Prototype, ExtJS, GWT и прочими.</p>
<p>Число таких расширений и инструментов будет расти, сложность тоже. Так что вскоре может так случиться, что вы, используя какой-то инструмент, будете выполнять тесты, даже не подозревая о том, что взаимодействие с браузером осуществляется через драйвер Selenium WebDriver.</p>
<h2><strong>Стоит ли тогда вообще изучать Selenium?</strong></h2>
<p>Может быть лучше изучать эти библиотеки и инструменты более высокого уровня?</p>
<p>Чтобы ответить на этот вопрос, я сформулирую его иначе: кому и зачем стоит изучать Selenium, а кому лучше изучать более высокоуровневые библиотеки и инструменты?</p>
<ol>
<li>Какой бы инструмент вы ни использовали, вам нужно выбрать драйвер, управляющий браузером. Чтобы его выбрать, вы должны знать возможности драйвера – что он может, а чего не может. На этом уровне Selenium необходимо освоить каждому специалисту по автоматизации. При этом конкретно интерфейс WebDriver, если вы с ним работаете, изучать нет необходимости.</li>
<li>Простой набор команд выучить проще, чем «расширенный», то есть Selenium освоить проще, чем его расширение. У этого явления есть и обратная сторона – если вы изучили расширенный набор команд, то внезапно оказывается, что набор команд WebDriver вы при этом тоже освоили.</li>
<li>Расширения, как правило, языково-зависимые, потому что добавление удобства предполагает использование языковых идиом, типичных приёмов организации кода на том или ином языке программирования. Базовый интерфейс WebDriver простой, поэтому освоив его, вы сможете использовать его на любом языке, он будет выглядеть практически одинаково.</li>
<li>Большинство библиотек, нацеленных на повышение удобства интерфейса, улучшают средства поиска элементов – дополнительные типы локаторов, более удобный способ описания локаторов и так далее. Примитивы, соответствующие действиям пользователя, в WebDriver уже и так достаточно хороши. Хотя, конечно, библиотеки будут реализовывать типовые «связки», то есть последовательности этих действий, аналогично тому, как это сделано в классе Select для выпадающих списков.</li>
<li>Если вы используете «таблички» для описания тестов (как в Robot Framework) или специальный язык для описания на уровне предметной области (DSL, Domain Specific Language) – вам нет необходимости знать о примитивах WebDriver. Но если вы реализуете «фикстуры» для тестов, описываете действия, которыми можно будет оперировать в табличках, реализуете DSL – вам придётся работать непосредственно с WebDriver, либо с каким-то его расширением, но не слишком высокоуровневым.</li>
<li>И самый последний аргумент, который, я надеюсь, со временем будет становиться всё менее актуальным – увы, пока хороших расширений катастрофически не хватает. Они обязательно появятся. Может быть, именно вы реализуете одно из таких расширений. Для этого вам понадобиться изучить интерфейс WebDriver. И те, кто будут пользоваться плодами вашего труда, смогут работать с более высокоуровневой библиотекой. А пока приходится использовать непосредственно WebDriver с небольшими надстройками над ним.</li>
</ol>
<p>Надеюсь, всё вышесказанное позволит вам лучше понять, какое место Selenium WebDriver занимает в общей картине мира и как он соотносится с другими инструментами. Если всё ещё остались непонятные моменты – задавайте вопросы в комментариях, я постараюсь всё прояснить.</p>
<p>Ну а если вы решили освоить Selenium WebDriver – <a href="trainings.html">добро пожаловать на мои тренинги</a>, я научу вас пользоваться этим замечательным инструментом, разумеется, в связке с некоторыми другими инструментами, упомянутыми в этой статье.</p>