---
layout: page
title: Проект Роботестер
redirect_from: /articles/76-proekt-robotester.html
date: 2013-01-18 13:43:04.000000000 +04:00
author: Super User
teaser: "Илья Кацев рассказывает об автономном инструменте для тестирования веб-интерфейсов, созданном в Яндексе. Чтобы такой инструмент (робот) мог осуществить тестирование, он должен «обойти» весь сайт, то есть побывать на всех его страницах (или хотя бы побывать во всех состояниях одной страницы). Поэтому проблемы очень близки проблемам, возникающим при создании поисковых роботов. Значительная разница заключается в том, что поисковый краулер переходит со страницы на страницу по ссылкам, а для задач тестирования нам необходимо взаимодействовать с элементами страницы: заполнять формы, вызывать ajax-действия и так далее. К тому же современные сайты (RIA) имеют фактически бесконечное число состояний, поэтому надо применять новые подходы как при построении стратегии обхода, так и при оценке действий робота (трудно оценить, какую часть сайта мы обошли)."
category: Статьи
---
<p><strong>Илья Кацев, </strong><em>Яндекс, Санкт-Петербург, Россия</em></p>
<p>В докладе я расскажу об автономном инструменте для тестирования веб-интерфейсов, который мы создали в Яндексе. Чтобы такой инструмент (робот) мог осуществить тестирование, он должен «обойти» весь сайт, то есть побывать на всех его страницах (или хотя бы побывать во всех состояниях одной страницы). Поэтому наши проблемы очень близки проблемам, возникающим при создании поисковых роботов. Значительная разница заключается в том, что поисковый краулер переходит со страницы на страницу по ссылкам, а для задач тестирования нам необходимо взаимодействовать с элементами страницы: заполнять формы, вызывать ajax-действия и так далее.<br />К тому же современные сайты (RIA) имеют фактически бесконечное число состояний, поэтому надо применять новые подходы как при построении стратегии обхода, так и при оценке действий робота (трудно оценить, какую часть сайта мы обошли).</p>
<p>Я расскажу об истории создания инструмента, о том, какими возможностями он обладает (какие баги находит) и о том, чего мы планируем добиться в будущем.</p>
<p><iframe src="http://www.youtube.com/embed/NSdLOTOn7_U" frameborder="0" width="420" height="315"></iframe></p>