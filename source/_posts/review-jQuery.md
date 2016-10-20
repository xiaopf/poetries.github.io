---
title: 重温轻量级的js库---jQuery
date: 2016-10-20 09:35:08
tags: 
    - JavaScript
    - jQuery
categories: Front-End
---

首先，来了解一下`jQuery`学习的整体思路

![jQuery系统学习篇](http://upload-images.jianshu.io/upload_images/1480597-9a2f1f1c4f44d752.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
<!--more-->
- [XMind源文件提供参考下载](http://pan.baidu.com/s/1nu8Bmyd)

#### 第一节 jQuery初步认知
---

##### jQuery概述
---

- **`JQuery`概念**

    - `javascript`概念
        - 基于`Js`语言的`API`和语法组织逻辑，通过内置`window`和`document`对象，来操作内存中的`DOM`元素
    - `JQuery`概念
        - 基于`javascript`的，同上，提高了代码的效率

- **`jQuery`是什么:**
    - 是一个`javascript`代码仓库，我们称之为`javascript`框架。
    - 是一个快速的简洁的`javascript`框架，可以简化查询`DOM`对象、处理事件、制作动画、处理`Ajax`交互过程。
  - **它可以帮我们做什么(有什么优势)**
    - 体积小，使用灵巧(只需引入一个`js`文件)
    - 方便的选择页面元素(模仿`CSS`选择器更精确、灵活)
    - 动态更改页面样式/页面内容(操作`DOM`，动态添加、移除样式)
    - 控制响应事件(动态添加响应事件)
    - 提供基本网页特效(提供已封装的网页特效方法)
    - 快速实现通信(`ajax`)
    - 易扩展、插件丰富


- **如何引入`JQuery`包**
  - 引入本地的`JQuery`
  - 引入`Google`在线提供的库文件（稳定可靠高速）
  - 使用`Google`提供的`API`导入 `<script type=“text/javascript” src=“jquery.js”></script>`
  - 写第一个`JQUery`案例
    - 解释:在`JQuery`库中，`$`是`JQuery`的别名，`$()`等效于就`jQuery()`

 ```javascript
<script type=“text/javascript” src=“”></script>
<script type=“text/javascript”>
	$(function(){
		alert(“jQuery 你好!”);
	});
</script>
```

  
- **讲解`$(function(){})`;**
  - `$`是`jQuery`别名。如`$()`也可`jQuery()`这样写,相当于页面初始化函数，当页面加载完毕，会执行`jQuery()`。
  - 希望在做所有事情之前，`JQuery`操作`DOM`文档。必须确保在`DOM`载入完毕后开始执行，应该用`ready`事件做处理`HTML`文档的开始
  - `$(document).ready(function(){})`;
	- 类似于`js`的`window.onload`事件函数，但是`ready`事件要先于`onload`事件执行
	- `window.onload = function(){}`;
  - 为方便开发，`jQuery`简化这样的方法，直接用`$()`表示

  - `JQuery`的`ready`事件不等于`Js`的`load`：
    - 执行时机不同：`load`需要等外部图片和视频等全部加载才执行。`ready`是`DOM`绘制完毕后执行，先与外部文件
    - 用法不同：`load`只可写一次，`ready`可以多次

- **`jQuery`有哪些功能(`API`)**：
  - a.选择器 
  - b.过滤器 
  - c.事件 
  - d.效果 
  - e.`ajax`

- **简单的`JQuery`选择器**：
  - `JQuery`基本选择器（`ID`选择器，标签选择器，类选择器，通配选择器和组选择器`5`种）
  - `ID`选择器：`document.getElementById(id)`与`$("#id")`对比(改变文字大小)---`id`唯一，返回单个元素
  - 标签选择器：`document.getElementsByTagName(tagName)`与`$("tagname")`对比---多个标签，返回数组
  - 类选择器:`$(".className")`--多个`classname`（改变背景图片）
  - 通配选择器：`document.getElementsByTagName("*")`与`$("*")`对比---指范围内的所有标签元素
  - 组选择器：`$("seletor1,seletor2,seletor3")`----无数量限制，用逗号分割
  
##### 初步了解`JQuery`
---

- **`JQuery`是什么**
  - `javascript`用来干什么的：
	- 操作`DOM`对象
	- 动态操作样式`css`
	- 数据访问
	- 控制响应事件等
  - `jQuery`作用一样，只是更加快速简洁
- **如何引用`JQuery`**
```javascript
<script type="text/javascript"></script>
写第一个JQUery案例
<script type=“text/javascript” src=“”></script>
<script type=“text/javascript”>
	$(function(){
		alert(“jQuery 你好!”);
	});
</script>
```

- **`$()讲解`**
  - `$`在`JQuery`库中，`$`是`JQuery`的别名，`$()`等效于就`jQuery()`.
  - `$()`是`JQuery`方法,赞可看作是`JQuery`的选择器，与`css`选择器相似（可做对比）
  - `var jQuery==$ =function(){}` `$()`本质就是一个函数也就是 `jQuery`的核心函数
  - 只要是`jQuery`的对象都这样变量加上一个`符号$ `方便识别：`var $div = $("#")`

```javascript
function　$(id){
		return document.getElementById(id);
	}
```


- **`$()`和`document`是相等的吗**

```html
<div id="a" class="aa"></div>
<div id="b" class="aa"></div>
<div id="c" class="aa"></div>
alert(document.getElementById("id") == $("#aa"));//返回结果为false
alert(document.getElementById("id") == $("#aa").get(0));//返回true
```

- **代理对象`$()`**
  - `jQuery`中返回的是代理对象本身
  - `jQuery`的核心原理是通过选择器找到对应的代理对象
  - `jQuery`全都是通过方法操作
  - 样式选择器`$(".className")`
    - `$(".aa").css("color","green");`
  - id选择器("")
    - `$("#a").css("background-color","#ff0066");`
  - 标签选择器
    - `$("p").css("color","#cc3366");`
  - 组选择器
    - `$("#b ul li").size();`
  
- **对象转换(`$(element)`)**
    - 原生`dom`对象和`jquery`代理对象的相互转换

```javascript
$(传入的原生对象);
//原生对象转化成jQuery对象
var nav = document.getElementById("nav");
var $nav = $(nav);
alert($nav.get(0) == nav);//true
```

- **检索范围的限制（`$('字符串',element)`）**
  - **总结：三种写法对比：**

     - 方式一：不推荐 搜索速度最慢

       - `$("#nav").css();`
       - `$("#nav li").css();`
     
     - 方式二：搜索速度最快 链式操作

       - `$("#nav").css().children().css();`
     - 方式三：也常用 速度第二快

       - `var $nav = $("#nav").css()`;
       - `$("li",$nav).css()`;  `$nav `限制了搜索范围 速度快

- **总结： `$()` `jquery`核心方法的作用和使用场景**

    - 如果是一个字符串参数并且没有标签对（选择器）` $(ul.nav")`
    - 如果是一个字符串参数并且有标签对（创建`html`标签）`$("<img>")` --最终加到`DOM`树中 `$xx.append("<img>")`;
    - 如果是传入一个`element dom`对象，直接包装为`proxy`对象返回 `$(DOM对象)`
    - 如果第一个参数是字符串，第二个是`element` `dom`对象的话，那么就是在`element`这个`dom`对象里面寻找选择器对应的元素并且代理 `$("li",$DOM对象)`


- **代理模式以及代理内存结构**


![代理内存结构1](http://upload-images.jianshu.io/upload_images/1480597-83ef47b79291acf9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![代理内存结构2](http://upload-images.jianshu.io/upload_images/1480597-eb9cf133cfb6dce5.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


#### 第二节 选择器
---

- **选择器引擎规则(`$('字符串')`)**
    - `css`选择器的规则
       - 标签选择器
       - `id`选择器
       - 类选择器
       - 混合选择器
    - `css3`的选择器规则
    
    - 状态和伪类（`:even` `:odd` `:first` `:last` `:eq(index)`）
    - 属性（`[attr=value]`）


- **层级选择器:通过`DOM`的嵌套关系匹配元素**
    - `jQuery`层级选择器----包含选择器、子选择器、相邻选择器、兄弟选择器4种
    - a.包含选择器：`$("a b")`在给定的祖先元素下匹配所有后代元素。(不受层级限制)
    - b.子选择器：`$("parent > child") `在给定的父元素下匹配所有子元素。
    - c.相邻选择器：`$("prev + next")` 匹配所有紧接在`prev`元素后的`next`元素。
    - d.兄弟选择器：`$("prev ~ siblings")` 匹配prev元素之后的所有`sibling`元素。

 - 案例：

```html
<BODY>
	<!--包含选择器/子选择器/兄弟选择器/相邻选择器-->
	<div class="main">
		<span>1<img src="images/1.jpg"/></span>
		2<img src="images/1.jpg"/>
	</div>
		3<img src="images/1.jpg">
		4<img src="images/1.jpg">
	<div>
		5<img src="images/1.jpg">
	</div>

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
		$(function(){
			//$(".main img").css("border","5px solid red");
			//$(".main > img").css("border","5px solid blue");
			//$(".main + img").css("border","5px solid blue");
			$(".main ~ img").css("border","5px solid blue");
		});
	</script>
 </BODY>
```

- **常用伪类选择器**:可以看作是一种特殊的类选择符

|选择器	|	说明|
|---|---|
|:first	|	匹配找到的第1个元素|
|:last	|	匹配找到的最后一个元素|
|:eq	|   匹配一个给定索引值的元素|
|:even	|	匹配所有索引值为偶数的元素|
|: odd	|	匹配所有索引值为奇数的元素|
|:gt(index)| 匹配所有大于给定索引值的元素|
|:lt(index)| 匹配所有小于给定索引值的元素|
|:not	|   去除所有与给定选择器匹配的元素|

- **特定位置选择器**
  - `:first`
  - `:last`
  - `:eq(index)`


- **指定范围选择器**
  - `:even`
  - `:odd`
  - `:gt(index)`
  - `:lt(index)`

- **排除选择器**
  - `:not` 非

#### 第三节 选择器优化
---


- 使用合适的选择器表达式可以提高性能、增强语义并简化逻辑。常用的选择器中，`ID`选择器速度最快，其次是类型选择器。
  - a. 多用ID选择器
  - b. 少直接使用`class`选择器
  - c. 多用父子关系，少用嵌套关系
  - d. 缓存`jQuery`对象

- **使用过滤器**
  - `jQuery`提供了`2`种选择文档元素的方式：选择器和过滤器
  - a. 类过虑器：根据元素的类属性来进行过滤操作。
	- `hasClass(className)`：判断当前`jQuery`对象中的某个元素是否包含指定类名，包含返回`true`，不包含返回`false`
  - b. 下标过滤器：精确选出指定下标元素
	- `eq(index)`：获取第`N`个元素。`index`是整数值，下标从`0`开始
  - c. 表达式过滤器 
	- `filter(expr)/(fn)`：筛选出与指定表达式/函数匹配的元素集合。
	- 功能最强大的表达式过滤器，可接收函数参数，也可以是简单的选择器表达式
  - d. 映射 `map(callback)`：将一组元素转换成其他数组
  - e. 清洗 `not(expr)`：删除与指定表达式匹配的元素
  - f. 截取 `slice(start,end)`：选取一个匹配的子集

- **查找**
  - 向下查找后代元素 
	- `children()`:取得所有元素的所有子元素集合（子元素）
	- `find()`:搜索所有与指定表达式匹配的元素(所有后代元素中查找)
  - 查找兄弟元素 `siblings()`查找当前元素的兄弟
  

#### 第四节 代理对象属性和样式操作
---

- **代理对象属性和样式操作**

  - `attr`
  - `prop`(一般属性值是`boolean`的值或者不用设置属性值，一般使用)
  - `css`(最好不用，一般我用来做测试)
  - `addClass` / `removeClass`

- 操作原生`DOM`的时候用的方式：一次只能操作一个

  - 操作属性：`setAttribute` / `getAttribute`
  - 操作样式：`style.xx = value`
  - 操作类样式：`className=''`
  - 获取`DOM`的子元素`children`属性
  - `DOM`里面添加一个子元素`appendChild()`

- 操作`jQuery`代理对象的时候：批量操作`DOM`对象(全都是通过方法操作)

- 操作属性：`attr()`、`prop()` 
  - `attr`和`prop`区别：如果属性的值是布尔类型的值 用`prop`操作 反之`attr`

- 操作样式：`css()`
- 操作类样式：`addClass()` `removeClass()`
- 操作`DOM`子元素：`children()`
- 添加子元素：`append()`


#### 第五节 jQuery动画
---


##### 回顾上节
---

- 操作DOM
   - a.什么是`DOM`：`Document Object Model`缩写，文档对象模型
   - b.理解页面的树形结构
   - c.什么是节点：是DOM结构中最小单元，包括元素、属性、文本、文档等。
	

###### 一、创建节点
---

- 1.创建元素
  - 语法：`document.createElement(name)`;

```javascript
var div = document.createElement("div");
document.body.appendChild(div);
```

- `$(html)`：根据传递的标记字符串，创建DOM对象

- 2.创建文本

```javascript
var div = document.createElement("div");
var txt = document.createTextNode("DOM");
div.appendChild(txt);
document.body.appendChild(div);

var $div = = $("<div>DOM</div>");
$(body).append($div);
```		

- 3.设置属性
	- 语法：`e.setAttrbute(name,value)`

```javascript
var div = document.createElement("div");
var txt = document.createTextNode("DOM");
div.appendChild(txt);
document.body.appendChild(div);
div.setAttribute("title","盒子");

var $div = = $("<div title='盒子'>DOM</div>");
$(body).append($div);
```

###### 二、插入内容
---

- 1.内部插入
  - 向元素最后面插入节点：
    - a. `append()`:向每个匹配的元素内部追加内容
    - b. `appendTo()`:把所有匹配的元素追加到指定元素集合中，$("A").append("B") 等效 $("B").appendTo("A")
  - 向元素最前面插入节点：
    - c. `prepend（）`：把每个匹配的元素内部前置内容
    - d. `prependTo（）`：把所有匹配的元素前置到另一个指定的元素集合中,`$("A").prepend("B")` 等效 `$("B").prependTo("A")`

- 2.外部插入
  - a. `after()`:在每个匹配的元素之后插入内容
  - b. `before()`：在每个匹配想元素之前插入内容
  - c. `insertAfter()`：将所有匹配的元素插入到另一个指定的元素集合后面，`$A.insert($B)` 等效 $B.insertAfter($A);
  - d. `insertBefore()`：将所有匹配的元素插入到另一个指定的元素集合前面 `$A.before($B)` 等效 `$B.insertBefore($A)`;

###### 三、删除内容
---

- 1.移除
	- `remove()`:从`DOM`中删除所有匹配元素
- 2.清空
	- `empty()`:删除匹配的元素集合中所有子节点内容

###### 四、克隆内容：创建指定节点副本
---

- `clone()`
	- 注意：若`clone（true）`则是包括克隆元素的属性，事件等

###### 五、替换内容
---

 - a. `replaceWith()`:将所有匹配的元素替换成指定的元素
 - b. `replaceAll()`:用匹配的元素替换掉指定元素

- 注意：两者效果一致，只是语法不同 `$A.replaceAll($B) `等效于 `$B.replaceWhith($A)`;

##### 本节新知识
---

###### 一. 介绍·jQuery·动画
- ·JavaScrip·t语言本身不支持动画设计，必须通过改变·CSS·来实现动画效果。


**显隐动画**

- `show()`:显示
- `hide()`:隐藏
    - 原理：`hide()`通过改变元素的高度宽度和不透明度，直到这三个属性值到`0`
	- `show()`从上到下增加元素的高度，从左到右增加元素宽度，从`0`到`1`增加透明度，直至内容完全可见
	- 参数：
	  - `show()`
	  - `show(speed,callback)`
		- `speed`: 字符串或数字，表示动画将运行多久（`slow=0.6`/`normal=0.4`/`fast=0.2`）
		- `callback`: 动画完成时执行的方法

- 显示和隐藏式一对密不可分的动画形式

- **显隐切换**
  - `toggle()`:切换元素的可见状态
    - 原理：匹配元素的宽度、高度以及不透明度，同时进行动画，隐藏动画后将`display`设置为`none`
    - 参数：
	  - `toggle(speed)`
	  - `toggle(speed,callback)`
	  - `toggle(boolean)`
		 - `speed`: 字符串或数字，表示动画将运行多久（`slow=0.6`/`normal=0.4`/`fast=0.2`）
		 - `easing`： 使用哪个缓冲函数来过渡的字符串(`linear`/`swing`)
		 - `callback`： 动画完成时执行的方法
		 - `boolean`:`true`为显示 `false`为隐藏

**滑动**

- 1. **显隐滑动效果**
  - `slideDown()`:滑动隐藏
  - `slidUp()`:滑动显示
	
  - 参数:
	- `slideDown(speed,callback)`
	- `slidUp(speed,callback)`

- 2. **显隐切换滑动**
	- `slideToggle()`:显隐滑动切换
    - 参数:
	  - `slidUp(speed,callback)`

**渐变：通过改变不透明度**

- 1. **淡入淡出**
  - `fadeIn()`
  - `fadeOut()`

  - 参数：
    - `fadeIn(speed,callback)`
    - `fadeOut(speed,callback)`

- 2. **设置淡出透明效果**
	- `fadeTo()`⁭：以渐进的方式调整到指定透明度

	- 参数：
	  - `fadeTo(speed,opacity,callback)`

- 3. **渐变切换:结合`fadeIn`和`fadeOut`**
	- `fadeToggle()`

	- 参数:
	  - `fadeOut(speed,callback)`

- **自定义**：
  - 自定义动画：`animate()`

- 用`animate`模拟`show()`:
  - `show`: 表示由透明到不透明
  - `toggle`: 切换
  - `hide`:表示由显示到隐藏
  
#### 第六节 Event
---

- **`Event`属性**：
  - `type`：获取事件类型名称
  - `target`:发生事件的节点
  - `keyCode`：只针对于`keypress`事件，获取键盘键数字 按下回车，`13 `

  - `pageX`:光标对于页面原点的水平坐标   `body`
  - `pageY`：光标对于页面原点的垂直坐标       
	
  - `clientX`：光标对于浏览器窗口的水平坐标  浏览器
  - `clientY`：光标对于浏览器窗口的垂直坐标

  - `screenX`：光标对于电脑屏幕的水平坐标    电脑屏幕  
  - `screenY`：光标对于电脑屏幕的水平坐标 

- **`stopPropagation()`：阻止冒泡**
  - 1. 从里到外
  - 2. 嵌套关系
  - 3. 相同事件
  - 4. 其中的某一父类没有相同事件时,继续向上查找

- **`bind()`;绑定**
  - 为匹配元素绑定处理方法

  - 需要给一个元素添加多个事件 ，事件执行一样时候
  - `one()`：只执行一次         


- **绑定特定事件类型方法**：
	
  - `blur() `
  - `focus() `
  - `mousedown() `
  - `resize() `
  - `change() `
  - `keydown()` 
  - `mousemove() `
  - `scroll()`
  - `click() `
  - `keypress()` 
  - `mouseout() `
  - `select() `
  - `dblclick() `
  - `keyup() `
  - `mouseover() `
  - `submit()`
  - `error() `
  - `load() `
  - `mouseup() `
  - `unload()`

#### 第七节 jQuery与Ajax
---

- **ajax** : `Asynchronous Javascript And XML` （异步的`JavaScript`和`XML`）
- `ajax`,向后台传递数据

- **创建`ajax`对象 `var xhr = new XMLHttpRequest();`**
- **准备发送请求**

  -  **`get` / `post`**
     - **`get`**
       - 传递的数据放在`URL`后面
       - 中文编码 `encodeURI( '' )`;
       - 缓存 在数据后面加上随机数或者日期对象或者……
     - **`post`**
    
       - 传递的数据放在`send()`里面，并且一定要规定数据格式
       - 没有缓存问题
      
    - `form`表单中:
	    - `action`:
  	    - `method`: (默认是` get`)
 	    - `get`: 会在`url`里面以 `name=value` , 两个数据之间用 `&` 连接
	    - `post`:
     - `enctype`: `"application/x-www-form-urlencoded"`

  - `url`

  - 是否异步
	- 同步(`false`)：阻塞
	- 异步(`true`)：非阻塞
	
- **正式发送请求**

- **`ajax`请求处理过程**

```javascript
xhr.onreadystatechange = function(){
	if (xhr.readyState == 4)
	{
		alert( xhr.responseText );
	}
};
```

- `onreadystatechange` ：当处理过程发生变化的时候执行下面的函数

- `readyState` ：`ajax`处理过程
  - 0：请求未初始化（还没有调用 `open()`）。
  - 1：请求已经建立，但是还没有发送（还没有调用 `send()`）。
  - 2：请求已发送，正在处理中（通常现在可以从响应中获取内容头）。
  - 3：请求在处理中；通常响应中已有部分数据可用了，但是服务器还没有完成响应的生成。
  - 4：响应已完成；您可以获取并使用服务器的响应了。

- `responseText` ：请求服务器返回的数据存在该属性里面
- `status` : `http`状态码

![HTTP状态码](http://upload-images.jianshu.io/upload_images/1480597-ae7614423c64ebb1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 案例：`ajax`封装案例

```javascript
//ajax请求后台数据
var btn =  document.getElementsByTagName("input")[0];
btn.onclick = function(){
	
	ajax({//json格式
		type:"post",
		url:"post.php",
		data:"username=poetries&pwd=123456",
		asyn:true,
		success:function(data){
			document.write(data);
		}
	});
}
//封装ajax
function ajax(aJson){
	var ajx = null;
	var type = aJson.type || "get";
	var asyn = aJson.asyn || true;
	var url = aJson.url;		// url 接收 传输位置
	var success = aJson.success;// success 接收 传输完成后的回调函数
	var data = aJson.data || '';// data 接收需要附带传输的数据
	
	if(window.XMLHttpRequest){//兼容处理
		ajx = new XMLHttpRequest();//一般浏览器
	}else
	{
		ajx = new ActiveXObject("Microsoft.XMLHTTP");//IE6+
	}
	if (type == "get" && data)
	{
		url +="/?"+data+"&"+Math.random();
	}
	
	//初始化ajax请求
	ajx.open( type , url , asyn );
	//规定传输数据的格式
	ajx.setRequestHeader('content-type','application/x-www-form-urlencoded');
	//发送ajax请求（包括post数据的传输）
	type == "get" ?ajx.send():ajx.send(aJson.data);
	
	//处理请求
	ajx.onreadystatechange = function(aJson){
		
	if(ajx.readState == 4){
			
		if (ajx.status == 200 && ajx.status<300)//200是HTTP 请求成功的状态码
		{
			//请求成功处理数据
			success && success(ajx.responseText);
		}else{
			alert("请求出错"+ajx.status);
			
		}
	}
		
	};
```

#### 第八节 插件
---

- 1. **什么是插件**
  - 插件(`Plugin`)也称为`jQuery`的扩展。以`jQuery`核心代码为基础编写的符合一定规范的应用程序。通过`js`文件的方式引用。

- 2. **插件分为哪几类**
  - `UI`类、表单及验证类、输入类、特效类、`Ajax`类、滑动类、图形图像类、导航类、综合工具类、动画类等等 

	
- 3. **引入插件的步骤**
  - a.引入`jquery.js`文件，而且在所以插件之前引入
  - b.引入插件
  - c.引入插件相关文件，比如皮肤、中文包


- 4. **如何自定义插件**：	
	
  - 插件形式分为3类：
	- a. 封装对象方法插件
	- b. 封装全局函数插件
	- c. 选择器插件(类似于.`find()`)

- **自定义插件的规范**（解决各种插件的冲突和错误，增加成功率）
  - 1. 命名：`jquery.插件名.js`
  - 2. 所有的新方法附加在`jquery.fn`对象上面，所有新功能附加在`jquery`上
  - 3. 所有的方法或插件必须用分号结尾，避免出问题
  - 4. 插件必须返回jQuery对象，便于链式连缀
  - 5. 避免插件内部使用`$`，如果要使用，请传递`jQuery`(`$`并不是总等于`jQuery`，另外其他`js`框架也可能使用`$`)
  - 6. 插件中的`this`应该指向`jQuery`对象
  - 7. 使用`this.each()`迭代元素

- 5. **自定义插件案例**
  - 为了方便用户创建插件，`jQuery`提供了 `jQuery.extend()` 和 `jQuery.fn.extend()`
  - `jQuery.extend()`：创建工具函数或者是选择器
  - `jQuery.fn.extend()`：创建`jQuery`对象命令  （`fn`相当于`prototype`的别名）

- **`jQuery`官方提供的插件开发模板**

```javascript
;(function($){
	$.fn.plugin=function(options){
		var defaults = {
			//各种参数 各种属性
		}
		var options = $.extend(defaults,options);

		this.each(function(){
			//实现功能的代码
		});

		return this;
	}
})(jQuery);
```

**自定义`jQuery`函数**：

```javascript
(function($){
	$.extend({
		test: function(){
			alert("hello plugin");
		}
	})
	})(jQuery);
```

**自定义`jQuery`命令**：

- 形式1：

```javascript
(function($){
    $.fn.extend({
        say : function(){
         alert("hello plugin");
    }
    })
})(jQuery);
```

- 形式2：

```javascript
(function($){
	$.fn.say = function(){
		alert("hello plugin");
	};
	
})(jQuery);
```

#### 扩展阅读
---

- [jQuery源码分析系列](http://www.cnblogs.com/aaronjs/p/3279314.html)

