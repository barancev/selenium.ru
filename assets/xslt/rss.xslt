<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" encoding="utf-8" />
<xsl:template match="/rss">
	<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html &gt;</xsl:text>
	<html>
	<head>
		<xsl:text disable-output-escaping="yes"><![CDATA[
			<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title> RSS Feed (Styled)</title>
	<link rel="stylesheet" type="text/css" href="https://webdriver.ru/assets/css/styles_feeling_responsive.css" />
	<script src="https://webdriver.ru/assets/js/modernizr.min.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js"></script>
  <script>
    WebFont.load({
      google: {
        families: [ 'Source Code Pro', 'Arimo::cyrillic', 'Philosopher::cyrillic' ]
      }
    });
  </script>

  <noscript>
    <link rel="preload" href='http://fonts.googleapis.com/css?family=Source+Code+Pro|Arimo|Philosopher' rel='stylesheet' type='text/css' />
  </noscript>

  
	
	<meta name="description" content="Пишем про Selenium на русском языке" />

	

	



	
	<link rel="icon" sizes="32x32" href="https://webdriver.ru/assets/img/favicon-32x32.png" />




	
	<link rel="icon" sizes="192x192" href="https://webdriver.ru/assets/img/touch-icon-192x192.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="180x180" href="https://webdriver.ru/assets/img/apple-touch-icon-180x180-precomposed.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="152x152" href="https://webdriver.ru/assets/img/apple-touch-icon-152x152-precomposed.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://webdriver.ru/assets/img/apple-touch-icon-144x144-precomposed.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="120x120" href="https://webdriver.ru/assets/img/apple-touch-icon-120x120-precomposed.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://webdriver.ru/assets/img/apple-touch-icon-114x114-precomposed.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="76x76" href="https://webdriver.ru/assets/img/apple-touch-icon-76x76-precomposed.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://webdriver.ru/assets/img/apple-touch-icon-72x72-precomposed.png" />




	
	<link rel="apple-touch-icon-precomposed" href="https://webdriver.ru/assets/img/apple-touch-icon-precomposed.png" />	




	
	<meta name="msapplication-TileImage" content="https://webdriver.ru/assets/img/msapplication_tileimage.png" />




	
	<meta name="msapplication-TileColor" content="#fabb00" />



	<!-- Facebook Optimization -->
	<meta property="og:locale" content="en_EN" />
	
	<meta property="og:title" content="RSS Feed (Styled)" />
	<meta property="og:description" content="Пишем про Selenium на русском языке" />
	<meta property="og:url" content="https://webdriver.ru//assets/xslt/rss.xslt" />
	<meta property="og:site_name" content="Selenium WebDriver: автоматизация веб-приложений" />
	

	

	<!-- Search Engine Optimization -->
	

	<link type="text/plain" rel="author" href="https://webdriver.ru/humans.txt" />

	

	
</head>

		]]></xsl:text>
	</head>
	<body id="top-of-page">
		<xsl:text disable-output-escaping="yes"><![CDATA[
		
<div id="navigation" class="sticky">
  <nav class="top-bar" role="navigation" data-topbar>
    <ul class="title-area">
      <li class="name">
      <h1 class="show-for-small-only"><a href="https://webdriver.ru" class="icon-tree"> Selenium WebDriver</a></h1>
    </li>
       <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
      <li class="toggle-topbar menu-icon"><a href="#"><span>Меню</span></a></li>
    </ul>
    <section class="top-bar-section">

      <ul class="right">
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a href="https://webdriver.ru/search/">Поиск</a></li>

            
            
          
        
        
      </ul>

      <ul class="left">
        

              

          
          

            
            
              <li link-url="/" page-url="/assets/xslt/rss.xslt" ><a href="https://webdriver.ru/">Старт</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li link-url="/news/" page-url="/assets/xslt/rss.xslt" ><a href="https://webdriver.ru/news/">Новости</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li link-url="/blog/" page-url="/assets/xslt/rss.xslt" ><a href="https://webdriver.ru/blog/">Блог</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li link-url="/trainings/" page-url="/assets/xslt/rss.xslt" ><a href="https://webdriver.ru/trainings/">Обучение</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li link-url="http://software-testing.ru/forum/index.php?/forum/129-selenium-functional-testing/" page-url="/assets/xslt/rss.xslt" ><a href="http://software-testing.ru/forum/index.php?/forum/129-selenium-functional-testing/" target="_blank">Форум</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          
        
        
      </ul>
    </section>
  </nav>
  
  
<div id="breadcrumb">
  <div class="row">
  <nav class="breadcrumbs bootstrap hidden-sm-down">
    
      
        <a property="item" typeof="WebPage" href="/index.html">
          <span class="icon-home" property="name"></span>
          <meta property="position" content="1" />
        </a>
        
      
      
        <span property="name">RSS Feed (Styled)</span>
        <meta property="position" content="2" />
        
  </nav>
  </div>
</div>


  
</div><!-- /#navigation -->

		


<div id="masthead-no-image-header">
	<div class="row">
		<div class="small-12 columns">
			<a id="logo" href="https://webdriver.ru" title="Selenium WebDriver: автоматизация веб-приложений">
				<img src="https://webdriver.ru/assets/img/logo.png" alt="Selenium WebDriver: автоматизация веб-приложений – ">
				<h1>Selenium WebDriver</h1>
				<h2>автоматизация веб-приложений</h2>
			</a>
		</div><!-- /.small-12.columns -->
	</div><!-- /.row -->
</div><!-- /#masthead -->




		


<div class="alert-box warning radius text-center"><p>This <a href="https://en.wikipedia.org/wiki/RSS" target="_blank">RSS feed</a> is meant to be used by <a href="https://en.wikipedia.org/wiki/Template:Aggregators" target="_blank">RSS reader applications and websites</a>.</p>
</div>



		]]></xsl:text>
		<header class="t30 row">
	<p class="subheadline"><xsl:value-of select="channel/description" disable-output-escaping="yes" /></p>
	<h1>
		<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="channel/link" />
			</xsl:attribute>
			<xsl:value-of select="channel/title" disable-output-escaping="yes" />
		</xsl:element>
	</h1>
</header>
<ul class="accordion row" data-accordion="">
	<xsl:for-each select="channel/item">
		<li class="accordion-navigation">
			<xsl:variable name="slug-id">
				<xsl:call-template name="slugify">
					<xsl:with-param name="text" select="guid" />
				</xsl:call-template>
			</xsl:variable>
			<xsl:element name="a">
				<xsl:attribute name="href"><xsl:value-of select="concat('#', $slug-id)"/></xsl:attribute>
				<xsl:value-of select="title"/>
				<br/>
				<small><xsl:value-of select="pubDate"/></small>
			</xsl:element>
			<xsl:element name="div">
				<xsl:attribute name="id"><xsl:value-of select="$slug-id"/></xsl:attribute>
				<xsl:attribute name="class">content</xsl:attribute>
				<h1>
					<xsl:element name="a">
						<xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
						<xsl:value-of select="title"/>
					</xsl:element>
				</h1>
				<xsl:value-of select="description" disable-output-escaping="yes" />
			</xsl:element>
		</li>
	</xsl:for-each>
</ul>

		<xsl:text disable-output-escaping="yes"><![CDATA[
		    <footer id="footer-content" class="bg-grau">
      <div id="footer">
        <div class="row">
          <div class="medium-6 large-5 columns">
            <h5 class="shadow-black">О нас</h5>

            <ul class="no-bullet shadow-black">
              <li><a href="https://webdriver.ru/info/">Пишем про Selenium на русском языке</a></li>
            </ul>
          </div><!-- /.large-6.columns -->


          <div class="small-6 medium-3 large-3 large-offset-1 columns">
            
              
                <h5 class="shadow-black">RSS/Atom</h5>
              
            
              
            
              
            

              <ul class="no-bullet shadow-black">
              
                
                  <li >
                    <a href=""  title=""></a>
                  </li>
              
                
                  <li >
                    <a href="/feed.xml"  title="Subscribe to RSS Feed">RSS</a>
                  </li>
              
                
                  <li >
                    <a href="/atom.xml"  title="Subscribe to Atom Feed">Atom</a>
                  </li>
              
              </ul>
          </div><!-- /.large-4.columns -->


          <div class="small-6 medium-3 large-3 columns">
            
              
                <h5 class="shadow-black">Благодарности</h5>
              
            
              
            
              
            
              
            

            <ul class="no-bullet shadow-black">
            
              
                <li >
                  <a href=""  title=""></a>
                </li>
            
              
                <li class="services-newsletter" >
                  <a href="https://jekyllrb.com/" target="_blank"  title="Built with Jekyll">Built with Jekyll</a>
                </li>
            
              
                <li class="services-newsletter" >
                  <a href="https://github.com/Phlow/feeling-responsive" target="_blank"  title="Design by Phlow">Design by Phlow</a>
                </li>
            
              
                <li class="services-newsletter" >
                  <a href="http://foundation.zurb.com/" target="_blank"  title="Built on Foundation">Built on Foundation</a>
                </li>
            
            </ul>
          </div><!-- /.large-3.columns -->
        </div><!-- /.row -->

      </div><!-- /#footer -->


      <div id="subfooter">
        <nav class="row">
          <section id="subfooter-left" class="b30 small-12 medium-6 columns credits">
          </section>

          <section id="subfooter-right" class="small-12 medium-6 columns social-icons">
            <ul class="inline-list">
            
            </ul>
          </section>
        </nav>
      </div><!-- /#subfooter -->
    </footer>

		


<script src="https://webdriver.ru/assets/js/javascript.min.js"></script>














		]]></xsl:text>
	</body>
	</html>
</xsl:template>
<xsl:template name="slugify">
	<xsl:param name="text" select="''" />
	<xsl:variable name="dodgyChars" select="' ,.#_-!?*:;=+|&amp;/\\'" />
	<xsl:variable name="replacementChar" select="'-----------------'" />
	<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
	<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
	<xsl:variable name="lowercased"><xsl:value-of select="translate( $text, $uppercase, $lowercase )" /></xsl:variable>
	<xsl:variable name="escaped"><xsl:value-of select="translate( $lowercased, $dodgyChars, $replacementChar )" /></xsl:variable>
	<xsl:value-of select="$escaped" />
</xsl:template>
</xsl:stylesheet>
