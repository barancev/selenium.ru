---
layout: page
title: 'Selenium 2.0: замедляем тесты и подсвечиваем элементы'
redirect_from: /articles/19-webdriver-slow-and-highlight.html
date: 2011-08-22 13:32:15.000000000 +04:00
author: Алексей Баранцев
teaser: Это очень короткая и не совсем типичная для меня статья. Меня обычно беспокоит противоположный вопрос – как сделать, чтобы Selenium не тормозил. Но недавно участники тренинга “Программирование для тестировщиков” задали мне вопрос, можно ли замедлить выполнение тестов, потому что они выполняются слишком быстро и поэтому “не видно, что там происходит”. С одной стороны, приятно, что Selenium такой шустрый. Но с другой стороны, раз надо замедлить – почему бы и нет. Поскольку я в последнее время всех агитирую переходить на WebDriver, то есть Selenium 2, здесь я тоже расскажу, как это реализовать на новой версии. А заодно расскажу ещё и о том, как заставить WebDriver подсвечивать элементы перед тем, как кликнуть или ввести какие-нибудь данные, ибо реализуется это с использованием того же самого механизма.
category: Статьи
---
Это очень короткая и не совсем типичная для меня статья. Меня обычно беспокоит противоположный вопрос – как сделать, чтобы Selenium не тормозил. Но недавно участники тренинга [Программирование для тестировщиков](https://software-testing.ru/edu/schedule/1) задали мне вопрос, можно ли замедлить выполнение тестов, потому что они выполняются слишком быстро и поэтому “не видно, что там происходит”. С одной стороны, приятно, что Selenium такой шустрый. Но с другой стороны, раз надо замедлить – почему бы и нет. Поскольку я в последнее время всех агитирую переходить на WebDriver, то есть Selenium 2, здесь я тоже расскажу, как это реализовать на новой версии. А заодно расскажу ещё и о том, как заставить WebDriver подсвечивать элементы перед тем, как кликнуть или ввести какие-нибудь данные, ибо реализуется это с использованием того же самого механизма.

Selenium 2 содержит специальный класс, предназначенный как раз для решения такого рода задач – `EventFiringWebDriver`. Он представляет собой обертку вокруг “обычного” драйвера, которая используется следующим образом:

{% highlight java %}
WebDriver regularDriver = new FirefoxDriver();
EventFiringWebDriver driver = new EventFiringWebDriver(regularDriver);
driver.registerListener(
  new ListenerThatWaitsBeforeAnyAction(5, TimeUnit.SECONDS));
{% endhighlight %}

А собственно замедлением, как это явствует из названия, будет заниматься класс `ListenerThatMakesTestsWaitBeforeAnyAction`, который можно найти в приложении к этой статье.

Устроен он так: он расширяет ничего-не-делающий класс AbstractEventFiringListener и переопределяет в нём все методы, соответствующие действиям пользователя (кликам, заполнениям полей, нажатиям кнопок back и forward) следующим образом:

{% highlight java %}
@Override
public void beforeClickOn(WebElement element, WebDriver driver)  {
  try {
    Thread.sleep(timeout);
  } catch  (InterruptedException e) {
  }
}
{% endhighlight %}

Перед каждым действием `EventFiringWebDriver` будет сначала обращаться к зарегистрированному обработчику событий, который сделает паузу указанной длительности, замедляя тем самым выполнение тестов и давая пользователю возможность следить за происходящим.

В приложении имеется ещё один класс-обработчик `ListenerThatHiglilightsElements`, который можно зарегистрировать в `EventFiringWebDriver` вместо замедлителя, и который будет не только “притормаживать” тесты, но и подсвечивать их перед выполнением какого-либо действия. Чтобы элемент мигнул три раза по полсекунды, его надо подключить вот так:

{% highlight java %}
EventFiringWebDriver driver = new EventFiringWebDriver(regularDriver);  
driver.registerListener(
  new ListenerThatHiglilightsElementsBeforeAnyAction(3, 500, TimeUnit.MILLISECONDS));
{% endhighlight %}

Вот как устроен внутри этот обработчик:

{% highlight java %}
@Override
public void beforeClickOn(WebElement element, WebDriver  driver) {
  flash(element, driver);
}

@Override
public void beforeChangeValueOf(WebElement element,  WebDriver driver) {
  flash(element, driver);
}

private void flash(WebElement element, WebDriver driver) {
  JavascriptExecutor js = ((JavascriptExecutor) driver);
  String bgcolor  = element.getCssValue("backgroundColor");
  for (int i = 0; i < count; i++) {
    changeColor(color, element, js);
    changeColor(bgcolor, element, js);
  }
}

private void changeColor(String color, WebElement element,  JavascriptExecutor js) {
  js.executeScript("arguments[0].style.backgroundColor = '"+color+"'",  element);
  try {
    Thread.sleep(interval);
  }  catch (InterruptedException e) {
  }
}
{% endhighlight %}

Разумеется, аналогичным образом можно реализовать и другие расширения стандартной функциональности Selenium 2 – журналирование действий, снятие скриншотов в подходящий момент, обработку типовых ошибок и тому подобное.

### Приложение

[selenium-events.zip](http://software-testing.ru/files/library/barancev/selenium-events.zip) -- в архиве находится проект для Eclipse, содержащий описанные в статье классы-обработчики и примеры их использования.
