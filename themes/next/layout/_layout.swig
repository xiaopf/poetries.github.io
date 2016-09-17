<!doctype html>
<html class="theme-next {% if theme.use_motion %}use-motion{% endif %} {% if theme.scheme %}theme-next-{{ theme.scheme | lower }}{% endif %}">
<head>
  {% include '_partials/head.swig' %}
  <title>{% block title %}{% endblock %}</title>
  <style type="text/css">

    .circle {
        width: 40px;
        height: 40px;
        background: #e8083a no-repeat;
        cursor: move;
		opacity: 0.7;
    }

    .assist-btn {
        position: fixed;
        top: 50％;
        left: 10px;
        -moz-border-radius: 50px;
        -webkit-border-radius: 50px;
        border-radius: 50px;
        outline: none;
        border: none;
        color: #FFEB3B;
    }

</style>
</head>

<body itemscope itemtype="http://schema.org/WebPage" lang="{{ config.language }}">

  {% include '_partials/old-browsers.swig' %}
  {% include '_scripts/analytics.swig' %}

  <div class="container one-column {% block page_class %}{% endblock %}">
    <div class="headband"></div>

    <header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
      <div class="header-inner"> {%- include '_partials/header.swig' %} </div>
    </header>
	
	{% if (theme.suprise.ball and is_home()) %}
    {% include '_partials/suprise/ball.swig' %}
    {% endif %}
	
    <main id="main" class="main">
      <div class="main-inner">
        <div id="content" class="content"> {% block content %}{% endblock %} </div>

        {% if (theme.duoshuo_hotartical and page.title) %}
            <!-- 多说热评文章-->
            <p>热评文章</p>
            <div class="ds-top-threads" data-range="weekly" data-num-items="4"></div>
        {% endif %}

        {% if page.comments %}
          <div class="comments" id="comments">
            {% if (theme.duoshuo and theme.duoshuo.shortname) or theme.duoshuo_shortname %}
              <div class="ds-thread" data-thread-key="{{ page.path }}"
                   data-title="{{ page.title }}" data-url="{{ page.permalink }}">
              </div>
            {% elseif theme.disqus_shortname %}
              <div id="disqus_thread">
                <noscript>Please enable JavaScript to view the <a href="//disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
              </div>
            {% endif %}
          </div>
        {% endif %}
      </div>

      {% if theme.sidebar !== 'remove' %}
        {% block sidebar %}{% endblock %}
      {% endif %}
    </main>

    <footer id="footer" class="footer">
      <div class="footer-inner"> {% include '_partials/footer.swig' %} </div>
    </footer>

    <div class="back-to-top"></div>
  </div>

  <script type="text/javascript" src="{{ url_for(theme.vendors) }}/jquery/index.js?v=2.1.3"></script>

  {# This block is used to set options before any other scripts run #}
  {% block script_extra_before %}{% endblock %}
  {% block comment_system %}
    {% include '_scripts/comments/duoshuo.swig' %}
    {% include '_scripts/comments/disqus.swig' %}
  {% endblock %}
  {% include '_scripts/fancy-box.swig' %}
  {% include '_scripts/helpers.swig' %}
  {% include '_scripts/motion.swig' %}

  <script type="text/javascript" src="{{ url_for(theme.js) }}/nav-toggle.js?v={{ theme.version }}"></script>
  <script type="text/javascript" src="{{ url_for(theme.vendors) }}/fastclick/lib/fastclick.min.js?v=1.0.6"></script>

  {% block script_extra %}{% endblock %}

  <script type="text/javascript">
    $(document).ready(function () {
      if (CONFIG.sidebar === 'always') {
        displaySidebar();
      }
      if (isMobile()) {
        FastClick.attach(document.body);
      }

      motionIntegrator.bootstrap();
    });
  </script>

  {% include '_scripts/tinysou.swig' %}
  {% include '_scripts/mathjax.swig' %}
  {% block comment_system %}{% endblock %}
  {% include '_scripts/baidushare.swig' %}

  {# LazyLoad #}
  <script type="text/javascript" src="{{ url_for(theme.js) }}/lazyload.js"></script>
  <script type="text/javascript">
    $(function () {
      $("#posts").find('img').lazyload({
        placeholder: "{{ url_for(theme.images) }}/loading.gif",
        effect: "fadeIn"
      });
    });
  </script>
  {% if theme.leancloud_visitors.enable %}
     {% include '_scripts/lean-analytics.swig' %}
  {%  endif %}
  
  
  <div>
    <button class="assist-btn circle" id="assist_btn" title="双击切换" style="left: 73px; top: 169px;">
        亮
    </button>
 </div>
<script type="text/javascript">
    // 浮动圆点展开与收缩

    $(function () {
        var assist_box = $('.assist-box');
        $('#assist_btn').hover(function () {
            assist_box.stop().show(300);
        }, function () {
            assist_box.stop().hide(150);
        })
    });

    //浮动圆点拖动
    $(function () {
        var box = document.getElementById('assist_btn');
        box.onmousedown = function (event) {
            var e = event || window.event,
                t = e.target || e.srcElement,
                // 鼠标按下时的坐标x1,y1
                x1 = e.clientX,
                y1 = e.clientY,
                //鼠标按下时的左右偏移量
                dragLeft = this.offsetLeft,
                dragTop = this.offsetTop;

            document.onmousemove = function (event) {
                var e = event || window.event,
                    t = e.target || e.srcElement,
                    // 鼠标移动时的动态坐标
                    x2 = e.clientX,
                    y2 = e.clientY,
                    // 鼠标移动时的坐标的变化量
                    x = x2 - x1,
                    y = y2 - y1;
                box.style.left = (dragLeft + x) + 'px';
                box.style.top = (dragTop + y) + 'px';
            }

            document.onmouseup = function () {
                this.onmousemove = null;
            }
        }
    });

/*
    $whitesmoke   = #f5f5f5
    $gainsboro    = #eee
    $gray-lighter = #ddd
    $grey-light   = #ccc
    $grey         = #bbb
    $grey-dark    = #999
    $grey-dim     = #666
    $black-light  = #555
    $black-deep   = #222
    $red          = #ff2a2a
    $blue-bright  = #87daff
    $blue         = #0684bd
    $blue-deep    = #262a30
*/
    // white theme
    var body = {color: "#555", background: "white"};
    var a_tag = {color: "#222"};
    var header = { background: "#f5f5f5"};
    var logo_line_i = {background: "#222"};
    // var post_code = {background: "#eee", color: "#222"};

    function switch_theme() {
        $("body").css(body);
        $("a:not('.links-of-author-item a, .site-state-item a, .site-state-posts a, .feed-link a, .motion-element a, .post-tags a, .show-commit-cls a, #donate_board a')").css(a_tag);
        $(".header, .footer").css(header);
        $(".logo-line-before i, .logo-line-after i").css(logo_line_i);
        //$(".post code").css(post_code);
        $("#idhyt-surprise-ball #idhyt-surprise-ball-animation .drag").css(a_tag);
        $(".post-title-link, .posts-expand .post-meta, .post-comments-count, .disqus-comment-count, .post-category a, .post-nav-next a, .post-nav-item a").css(a_tag);
        
        // $("code").css({color: '#c5c8c6', background: '#1d1f21'});
        $("#assist_btn").hide(1500);
    }

    $(function () {
        $("#assist_btn").dblclick(function() {
            switch_theme();
        });
    });

</script>
</body>
</html>
