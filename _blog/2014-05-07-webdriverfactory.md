---
layout: page
title: И ещё раз о том, как "правильно" запускать браузер
redirect_from: /articles/112-webdriverfactory.html
date: 2014-05-07 12:01:17.000000000 +04:00
author: Алексей Баранцев
teaser: Примерно раз в год я пишу статью про то, «как правильно запускать браузер» :)
  Но эта, надеюсь, будет последняя в серии. Небольшая предыстория. Давным-давно, в 2010 году на конференции SeleniumCamp я рассказывал про оптимизацию скорости выполнения тестов, и одна из первых рекомендаций была «используйте уже запущенный браузер повторно, не перезапускайте его для каждого теста заново». Потому что запуск браузера — весьма длительная и ресурсоёмкая операция. Чуть позже, уже в 2011 году, я написал первую статью, в которой я изложил «теоретические основы науки о запуске браузеров». Через год после этого появилась вторая статья, в которой описывалась конкретная реализация утилиты, управляющей запущенными браузерами. К ней, естественно, прилагался проект с программным кодом этой утилиты. Ещё через год я наконец выложил усовершенствованный вариант этой утилиты на GitHub, и вот теперь пришло время написать сопроводительную документацию
category: Статьи
---
Примерно раз в год я пишу статью про то, «как правильно запускать браузер» :)

Но эта, надеюсь, будет последняя в серии.

Небольшая предыстория. Давным-давно, в 2010 году на конференции SeleniumCamp я рассказывал про оптимизацию скорости выполнения тестов, и одна из первых рекомендаций была «используйте уже запущенный браузер повторно, не перезапускайте его для каждого теста заново». Потому что запуск браузера — весьма длительная и ресурсоёмкая операция. Чуть позже, уже в 2011 году, я написал [первую статью](/blog/65-how-to-start-browser-in-theory.html), в которой я изложил «теоретические основы науки о запуске браузеров». Через год после этого появилась [вторая статья](/blog/66-how-to-start-browser-with-driver-factory.html), в которой описывалась конкретная реализация утилиты, управляющей запущенными браузерами. К ней, естественно, прилагался проект с программным кодом этой утилиты. Ещё через год я наконец выложил усовершенствованный вариант этой утилиты на [GitHub](https://github.com/barancev/webdriver-factory/), и вот теперь пришло время написать сопроводительную документацию.

## Что это такое?

WebDriverFactory — это библиотека, которая помогает управлять запущенными экземплярами WebDriver (ну и браузерами тоже, поскольку каждому экземпляру драйвера соответствует свой экземпляр браузера).

Цель: предоставить пользователям инструмент, который умеет

* автоматически создавать драйвер (и запускать браузер) по требованию в момент первого использования,
* повторно использовать уже созданные драйверы, если есть такая возможность,
* автоматически останавливать старый и запускать новый, когда понадобился драйвер с другими характеристиками,
* автоматически запускать нового драйвера, если предыдущий экземпляр недоступен,
* останавливать все запущенные драйверы одной командой.

По сравнению с тем, что было описано в предыдущей статье, я отказался от следующих «сомнительных фич»

* автоматический перезапуск драйвера после заданного количества использований — раньше это было актуально, когда у браузера Firefox наблюдались серьёзные утечки памяти, сейчас эта «фича» уже практически невостребована, а если очень нужно — её можно реализовать при помощи несложного счётчика на уровне конфигурацинных методов тестового набора (@Before)
* автоматический останов всех драйверов при завершении работы виртуальной машины Java — эта фича осталась, но её не рекомендуется использовать, потому что с некоторыми браузерами возникают проблемы именно при остановке их из shutdown hook, так что лучше явно в конце выполнять остановку всех драйверов специальной командой.

(Вообще говоря, название «фабрика» (Factory) не совсем правильное, потому что эта библиотека реализует шаблон проектирования, который больше похож на [Object Pool](http://sourcemaking.com/design_patterns/object_pool), но я решил оставить сложившееся исторически название, потому что и «пул» тоже является одной из вариаций общей концепции [Factory](http://en.wikipedia.org/wiki/Factory_(software_concept))).

## Как подключить библиотеку к проекту?

Если вы используете Maven — достаточно просто добавить зависимости от фабрики и от самой библиотеки Selenium:

{% highlight xml %}
<dependency>
  <groupId>ru.stqa.selenium</groupId>
  <artifactId>webdriver-factory</artifactId>
  <version>2.0</version>
</dependency>
<dependency>
  <groupId>org.seleniumhq.selenium</groupId>
  <artifactId>selenium-java</artifactId>
  <version>2.53.0</version>
</dependency>
<dependency>
  <groupId>org.seleniumhq.selenium</groupId>
  <artifactId>selenium-server</artifactId>
  <version>2.53.0</version>
</dependency>
{% endhighlight %}

Номер последней доступной версии смотрите в [центральном репозитории Maven](http://search.maven.org/#browse%7C-716647851).

Если вы не используете Maven — тогда оттуда же из центрального репозитория нужно скачать jar-файл `webdriver-factory-2.0.jar` (номер версии может быть другим, конечно) и подключить его к вашему проекту так, как вы подключаете другие jar-файлы.

## Как это работает?

Фабрика имеет два основных режима работы:

* `SINGLETON` — в каждый момент времени может существовать не более одного экземпляра WebDriver, управляемого фабрикой
* `THREADLOCAL_SINGLETON` — в каждый момент времени в каждом потоке может существовать не более одного экземпляра WebDriver, управляемого фабрикой

По умолчанию используется режим работы THREADLOCAL_SINGLETON. Режимы работы можно переключать, если нет ни одного запущенного драйвера:

{% highlight java %}
WebDriverFactory.setMode(WebDriverFactoryMode.SINGLETON);
{% endhighlight %}

### Режим работы `SINGLETON`

Давайте рассмотрим, как работает вот такой сценарий:

{% highlight java %}
// 1. первый запрос на получение драйвера
Capabilities firefox = DesiredCapabilities.firefox();
WebDriver driver = WebDriverFactory.getDriver(firefox);
// 2. второй запрос на получение драйвера, с теми же характеристиками
driver = WebDriverFactory.getDriver(firefox);
// 3. третий запрос на получение драйвера, с другими характеристиками
Capabilities chrome = DesiredCapabilities.chrome();
driver = WebDriverFactory.getDriver(chrome);
// 4. остановка драйвера
WebDriverFactory.dismiss(driver);
{% endhighlight %}

* При первом запросе запускается новый драйвер (и новый браузер).
* При втором запросе, поскольку требуется драйвер с теми же характеристиками, возвращается ранее запущенный драйвер.
* При третьем запросе, поскольку требуется драйвер с другими характеристиками, предыдущий драйвер автоматически останавливается, и вместо него запускается новый, с запрашиваемыми характеристиками.
* Метод dismiss останавливает единственный существующий драйвер.

### Режим работы `THREADLOCAL_SINGLETON`

Этот режим работы необходим при параллельном выполнении тестов в нескольких потоках, чтобы избежать конфликтов. Он работает аналогично предыдущему, но только для каждого потока проверки выполняются независимо.

То есть если весь вышеуказанный код выполняется в одном и том же потоке — всё будет работать точно так же, как описано в предыдущем разделе: сначала запускается новый драйвер, потом он повторно используется, потом он останавливается и вместо него запускается драйвер с другими характеристиками, и наконец этот последний драйвер останавливается.

Но если тесты работают в нескольких параллельно выполняющихся потоках, то второй запрос драйвера с теми же характеристиками может случиться в другом потоке, и тогда будет создан новый драйвер, несмотря на то, что драйвер с нужными характеристиками уже есть. У каждого потока свой драйвер, использовать драйвер другого потока фабрика не позволит.

Аналогично, если потребовался драйвер с другими характеристиками — он будет запущен, но остановлен при этом может быть только драйвер, который ранее был запущен в том же самом потоке. Драйверы, принадлежащие другим потокам, останутся нетронутыми.

## Чем ещё полезна фабрика?

Есть у фабрики ещё пара полезных функций, помимо хранения драйверов для повторного использования и их автоматического перезапуска.

Перед тем, как вернуть клиенту существующий драйвер, фабрика проверяет, что он функционирует нормально — вызывает метод `getCurrentUrl()`. Если этот метод отработает успешно — фабрика вернёт клиенту этот ранее запущенный драйвер. Но если возникают проблемы, драйвер считается «испорченным», в этом случае фабрика запустит новый и вернёт его. В любом случае, клиент получит старый или новый, но работающий драйвер, удовлетворяющий заданным характеристикам.

Кроме того, поскольку фабрика хранит все запущенные драйверы, она позволяет в конце остановить все оставшиеся активные драйверы одной командой `dismissAll()`:

{% highlight java %}
@AfterSuite
public void stopAllDrivers() {
  WebDriverFactory.dismissAll();
}
{% endhighlight %}

В проекте на GitHub можно посмотреть [примеры использования фабрики](https://github.com/barancev/webdriver-factory-samples/tree/master/src/test/java/ru/stqa/selenium/factory/samples) с тестовыми фреймворками JUnit и TestNG.

## Будет ли продолжение?

Возможно, в будущем появятся новые режимы работы фабрики, накладывающие меньше ограничений и ориентированные на удалённый запуск с использованием Selenium Grid. Но с концептуальной точки зрения я считаю для себя тему запуска браузеров закрытой. Впрочем, я буду рад ошибиться. Если есть какие-то идеи развития — [присылайте пулл-реквесты](https://github.com/barancev/webdriver-factory/)!

