---
layout: page
title: Изменения в политике поддержки старых версий браузеров
redirect_from: /news/43-old-browser-support.html
date: 2012-04-03 14:41:11.000000000 +04:00
author: Алексей Баранцев
teaser: Начиная с версии 2.21 в Selenium изменятся правила поддержки старых версий браузеров. Правила поддержки браузеров периодически пересматриваются, потому что поддерживать совместимость со старыми версиями браузеров довольно сложно -- приходится делать специальные \"обходы\" для известных проблем, которые уже устранены в более новых версиях. Это приводит к раздуванию кода и повышает сложность его сопровождения. Но, конечно, поддержка старых версий необходима, потому что пользователи продолжают с ними работать, не переходят на более новые версии, поэтому тестировщиками приходится проверять работу приложения и в старых версиях тоже
category: Новости
---
**Начиная с версии 2.21 в Selenium изменятся правила поддержки старых версий браузеров.**

Правила поддержки браузеров периодически пересматриваются, потому что поддерживать совместимость со старыми версиями браузеров довольно сложно -- приходится делать специальные "обходы" для известных проблем, которые уже устранены в более новых версиях. Это приводит к раздуванию кода и повышает сложность его сопровождения. Но, конечно, поддержка старых версий необходима, потому что пользователи продолжают с ними работать, не переходят на более новые версии, поэтому тестировщиками приходится проверять работу приложения и в старых версиях тоже.

Тем не менее, основываясь на статистике использования браузеров, предоставляемой различными сервисами, были внесены следующие изменения в правила поддержки браузеров инструментом Selenium, которые вступят в силу начиная с версии 2.21:

**Firefox:** пользователи делятся на тех, кто продолжает работать с версией 3.6, и тех, кто регулярно обновляется, следуя новому быстрому релизному циклу, внедренному начиная с версии 4.0. Поэтому Selenium будет обеспечивать поддержку:

* Firefox 3.6,
* предпоследней, последней и (по возможности) следующей версий браузера (сейчас это 10-12),
* всех ESR-релизов (пока к ним относится только версия 10).

То есть, больше не будут официально поддерживаться версии 3.0, 3.5, 4-9, которые поддерживались ранее.

Это не означает, что тесты в этих браузерах нельзя будет запускать. Можно, но некоторые функции Selenium не будут работать или будут работать неправильно, потому что не будет учитываться специфика поведения этих версий браузера. В частности, тесты для этих версий будут работать только с синтезированными событиями.

**Internet Explorer:** Несмотря на усилия, которые предпринимает Microsoft, IE 6 всё ещё сохраняет популярность, особенно в корпоративных средах. Поэтому Selenium будет поддерживать все версии, начиная с 6 и до самой последней (в настоящий момент 9).

**Safari:** Safari 3 сейчас встречается крайне редко, поэтому поддержка этой версии будет прекращена. Сохраняется поддержка Safari 4 и 5 в Selenium RC, а также в 2.21 появится первая, экспериментальная, версия SafariDriver.

**iOS:** Будет обеспечиваться поддержка только самой последней версии iOS.

**Android:** Обеспечивается поддержка всех основных версий, начиная с 2.3, на текущий момент последняя поддерживаемая версия -- 4.0.

**Opera** и **Chrome** не упомянуты в этом списке. Причина в том, что компании Opera и Google самостоятельно поддерживают драйверы для своих браузеров, поэтому именно они определяют, какие версии будут поддерживаться. На текущий момент Google обеспечивает поддержку всех четырёх релизных каналов Chrome (stable, beta, dev и canary), а драйвер для Opera поддерживает версии Opera 11.6+.
