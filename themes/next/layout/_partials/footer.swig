<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="icon-next-heart fa fa-heart"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>
</div>

<p style="margin-left:10px;width:60px;height:30px;display:inline-block;margin-top:10px;">
	<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1260404165'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1260404165%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
</p>
<p style="position:relative;top:-45px;width:100px;height:30px;margin-left:10px;color:red;display:inline-block;">站点统计</p>

<p style="width:80px;height:33px;margin-left:-35px;display:inline-block;">
	<!-- Start of StatCounter Code for Default Guide -->
	<script type="text/javascript">
	var sc_project=11108670; 
	var sc_invisible=0; 
	var sc_security="ed24822a"; 
	var scJsHost = (("https:" == document.location.protocol) ?
	"https://secure." : "http://www.");
	document.write("<sc"+"ript type='text/javascript' src='" +
	scJsHost+
	"statcounter.com/counter/counter.js'></"+"script>");
	</script>
	<noscript><div class="statcounter"><a title="web statistics"
	href="http://statcounter.com/" target="_blank"><img
	class="statcounter"
	src="//c.statcounter.com/11108670/0/ed24822a/0/" alt="web
	statistics"></a></div></noscript>
	<!-- End of StatCounter Code for Default Guide -->
</p>
{% block footer %}{% endblock %}
