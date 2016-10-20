---
title: jQuery笔记总结篇
date: 2016-10-20 09:35:08
tags: 
    - JavaScript
    - jQuery
categories: Front-End
---

> 原文链接 http://blog.poetries.top/2016/10/20/review-jQuery


首先，来了解一下`jQuery`学习的整体思路


![jQuery系统学习篇](http://upload-images.jianshu.io/upload_images/1480597-f9c90fc8d9fd263e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
<!--more-->
-  [XMind源文件提供参考下载](http://pan.baidu.com/s/1slq212l)

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
    -  **它可以帮我们做什么(有什么优势)**
     - 轻量级、体积小，使用灵巧(只需引入一个`js`文件)
     -  强大的选择器
     - 出色的`DOM`操作的封装
     - 出色的浏览器兼容性
     - 可靠的事件处理机制
     - 完善的`Ajax`
     - 链式操作、隐式迭代
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
- **`window.onload`与`$(document).ready()`对比**

||window.onload|$(document).ready()|
|---|---|---|
|执行时机|必须等网页中所有内容加载完后(图片)才执行|网页中的`DOM`结构绘制完后就执行,可能`DOM`元素相关的东西并没有加载完|
|编写个数|不能同时执行多个|能同时执行多个|
|简化写法|无|`$(document).ready(function(){ //.. });`<br /><br />推荐写法：`$(function(){ });`|

- **`jQuery`有哪些功能(`API`)**：
  - 选择器 
  - 过滤器 
  - 事件 
  - 效果 
  - `ajax`

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
- **来回顾一下`CSS`常用的选择器**

|选择器|语法|描述|
|---|---|---|
|标签选择器|`E{css规则}`|以文档元素作为选择符|
|`ID`选择器|`#ID{css规则}`|`ID`作为选择符|
|类选择器|`E.className{css规则}`|`class`作为选择符|
|群组选择器|`E1,E2,E3{css规则}`|多个选择符应用同样的样式|
|后代选择器|`E F{css规则}`|元素`E`的任意后代元素`F`|


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
		<span>1![](https://camo.githubusercontent.com/3318530334bbc8f5e7ce267866c43ba72fa01f32/687474703a2f2f6f61376436647871742e626b742e636c6f7564646e2e636f6d2f626c6f672f696d616765732f3038313734323039323736363338392e6a7067)</span>
		2![](https://camo.githubusercontent.com/3318530334bbc8f5e7ce267866c43ba72fa01f32/687474703a2f2f6f61376436647871742e626b742e636c6f7564646e2e636f6d2f626c6f672f696d616765732f3038313734323039323736363338392e6a7067)
	</div>
		3![](https://camo.githubusercontent.com/3318530334bbc8f5e7ce267866c43ba72fa01f32/687474703a2f2f6f61376436647871742e626b742e636c6f7564646e2e636f6d2f626c6f672f696d616765732f3038313734323039323736363338392e6a7067)
		4![](https://camo.githubusercontent.com/3318530334bbc8f5e7ce267866c43ba72fa01f32/687474703a2f2f6f61376436647871742e626b742e636c6f7564646e2e636f6d2f626c6f672f696d616765732f3038313734323039323736363338392e6a7067)
	<div>
		5![](https://camo.githubusercontent.com/3318530334bbc8f5e7ce267866c43ba72fa01f32/687474703a2f2f6f61376436647871742e626b742e636c6f7564646e2e636f6d2f626c6f672f696d616765732f3038313734323039323736363338392e6a7067)
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
##### 过滤选择器
---

- **基本过滤选择**

|选择器|说明|返回|
|---|---|---|
|`:first`	|	匹配找到的第1个元素|单个元素|
|`:last`	|	匹配找到的最后一个元素|单个元素|
|`:eq`	|   匹配一个给定索引值的元素|单个元素|
|`:even`	|	匹配所有索引值为偶数的元素|集合元素|
|`: odd`	|	匹配所有索引值为奇数的元素|集合元素|
|`:gt(index)`| 匹配所有大于给定索引值的元素|集合元素|
|`:lt(index)`| 匹配所有小于给定索引值的元素|集合元素|
|`:not`	|   去除所有与给定选择器匹配的元素|集合元素|
|`:animated`|选取当前正在执行动画的所有元素|集合元素|
|`focus`|选取当前正在获取焦点的元素|集合元素|

- **内容过滤选择器**

|选择器|描述|返回|
|---|---|---|
|`:contains(text)`|选取含有文本内容为text的元素|集合元素|
|`:empty`|选取不包含子元素获取文本的空元素|集合元素|
|`:has(selector)`|选择含有选择器所匹配的元素的元素|集合元素|
|`:parent`|选取含有子元素或者文本的元素|集合元素|

- **可见过滤选择器**

|选择器|描述|返回|
|---|---|---|
|`:hidden`|选择所有不可见的元素|集合元素|
|`:visible`|选取所有可见的元素|集合元素|

- **属性过滤选择器**

|选择器|说明|返回|
|---|---|---|
|`[attribute]`|选取拥有此属性的元素|集合元素|
|`[attribute=value]`|选取属性值为`value`值的元素|集合元素|
|`[attribue^=value]`|选取属性的值以`value`开始的元素|集合元素|
|`[attribue$=value]`|选取属性的值以`value`结束的元素|集合元素|

- **子元素过滤选择器**

|选择器|说明|返回|
|---|---|---|
|`:nth-child(index/even/odd)`|选取每个父元素下的第index个子元素或者奇偶元素（`index`从`1`算起）|集合元素|
|`:first-child`|选取每个元素的第一个子元素|集合元素|
|`:last-child`|选取每个元素的最后一个子元素|集合元素|

- `:nth-child()`选择器是很常用的子元素过滤选择器，如下
  - `:nth-child(even)`选择每个父元素下的索引值是偶数的元素
  - `:nth-child(odd)`选择每个父元素下的索引值是奇数的元素
  - `:nth-child(2)`选择每个父元素下的索引值是`2`的元素
  - `:nth-child(3n)`选择每个父元素下的索引值是3的倍数的元素 (`n`从`1`开始)

- **表单对象属性过滤选择器**

|选择器|说明|返回|
|---|---|---|
|`:enabled`|选取所有可用元素|集合元素|
|`:disabled`|选取所有不可用元素|集合元素|
|`:checked`|选取所有被选中的元素（单选框、复选框）|集合元素|
|`:selected`|选取所有被选中的元素（下拉列表）|集合元素|

- **表单选择器**

|选择器|说明|
|---|---|
|`:input`|选取所有`input ` `textarea ` `select` `button`元素|
|`:text`|选取所有单行文本框|
|`:password`|选取所有密码框 |
|`:radio`|选取所有单选框|
|`:checkbox`|选取所有多选框|
|`:submit`|选取所有的提交按钮|
|`:image`|选取所有的图像按钮|
|`:reset`|选取所有的重置按钮|
|`:button`|选取所有的按钮|
|`:file`|选取所有的上传域|
|`:hidden`|选取所有的不可见元素|

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
  - a. 多用`ID`选择器
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

#### 第五节 jQuery中DOM操作
---

- `DOM`是一种与浏览器、平台|语言无关的接口，使用该接口可以轻松的访问 页面中的所有的标准组件

- **`DOM`操作的分类**
  - **`DOM Core`**
     - `DOM core`并不专属于`JavaScript`，任何支持`DOM`的程序都可以使用
     - `JavaScript` 中的`getElementByID()` `getElementsByTagName()` `getAttribute()` `setAttribute()`等方法都是`DOM Core`的组成部分

  - **`HTML-DOM`**
    - `HTML -DOM`的出现比`DOM-Core`还要早，它提供一些更简明的标志来描述`HTML`元素的属性
   - 比如：使用`HTML-DOM`来获取某元素的`src`属性的方法
      - `element.src`

  - **`CSS-DOM`**
    - 针对`CSS`的操作。在`JavaScript`中，主要用于获取和设置`style`对象的各种属性，通过改变`style`对象的属性，使网页呈现不同的效果

- **查找节点**
    - 查找属性节点 `attr()` 可以获取各属性的值
- **创建节点**
   - `$(html)`：根据传递的标记字符串，创建`DOM`对象
- **插入节点**

|方法|说明|
|---|---|
|`append()`|向每个匹配元素内部追加内容|
|`appendTo()`|颠倒`append()`的操作|
|`prepend()`|向每个匹配元素的内容内部前置内容|
|`prependTo()`|颠倒`prepend()`的操作|
|`after()`|向每个匹配元素之后插入内容|
|`insertAfter()`|颠倒`after()`的操作|
|`before()`|在每个匹配元素之前插入内容|
|`insertBefore()`|颠倒`before()`的操作|

- **删除节点**
  - jQuery提供了三种删除节点的方法 `remove()` `detach()` `empty()`
  - **`remove()方法`**
    - 当某个节点用此方法删除后，该节点所包含的所有后代节点将同时被删除，用`remove()`方法删除后，还是可以继续使用删除后的引用
 - **`detach()`**
    - 和`remove()`方法一样，也是从`DOM`中去掉所有匹配的元素，与`remove()`不同的是，所有绑定的事件、附加的数据等，都会被保留下来
 - **`empty()`**
    - `empty()`方法并不是删除节点，而是清空节点，它能清空元素中所有后代节点

- **复制节点**
  - 使用`clone()`方法来完成
  - 在`clone()`方法中传递一个参数`true`，同时复制元素中所绑定的事件

- **替换节点**
  - `jQuery`提供相应的方法 `replaceWidth() `

- **样式操作**
  - 获取样式和设置样式 `attr()`
  - 追加样式 `addClass()`
  - 移除样式 ` removeClass()`
  - 切换样式 
      - `toggle()`方法只要是控制行为上的重复切换（如果元素是显示的，则隐藏；如果元素原来是隐藏的，则显示）
      - `toggleClass()`方法控制样式上的重复切换（如何类名存在，则删除它，如果类名不存在，则添加它） 
  - 判断是否含有某个样式
    - `hasClass()`可以用来判断元素是否含有某个`class`,如有返回`true` 该方法等价于`is()`
- **设置和获取HTML、文本和值**
  - **`html()`**
    - 此方法类似`JavaScript`中`innerHTML`属性，可以用来读取和设置某个元素中的`HTML`内容
  - **`text()`**方法
    - 此方法类型`JavaScript`中`innerHTML`，用来读取和设置某个元素中的文本内容
 - **`val()`**方法
    - 此方法类似`JavaScript`中的`value`属性，用来设置获取元素的值。无论是文本框、下拉列表还是单选框，都可以返回元素的值，如果元素多选，返回一个包含所有选择的值的数组

- **遍历节点**
  - **`children()`**方法
      - 该方法用来取得匹配元素的子元素集合
      - `childre()`方法只考虑子元素而不考虑其他后代元素
 - **`next()`**方法
    - 该方法用于取得匹配元素后面紧邻的同辈元素
 - **`prev()`**方法
    - 用于匹配元素前面紧邻的同辈元素
 - **`siblings()`**方法
    - 用于匹配元素前后所有的同辈元素
 - **`parent()`**方法
    - 获得集合中每个 元素的父级元素
 - **`parents()`**方法
    - 获得集合中每个元素的祖先元素


##### CSS DOM操作
---

- `CSS DOM`技术简单的来说就是读取和设置`style`对象的各种属性
- 用`css()`方法获取元素的样式属性，可以同时设置多个样式属性
- **`CSS DOM`中关于元素定位有几个常用的方法**
  - **`offset()`**方法
    - 它的作用是获取元素在当前视窗的相对偏移其中返回的对象包含两个属性，即`top`和`left`，他只对可见元素有效 
 - **`position()`**方法
    - 获取相对于最近的一个`position()`样式属性设置为`relative`或者`absolute`的祖父节点的相对偏移，与`offset()`一样，他返回的对象也包括两个属性，即`top`和`left`
 - **`scrollTop()`**方法和**`scrollLeft`**方法
    - 这两个方法的作用分别是获取元素的滚动条距顶端的距离和距左侧的距离
  - **一张图总结以上的位置关系(项目中很常用-必须要弄清楚)**

![](https://camo.githubusercontent.com/3318530334bbc8f5e7ce267866c43ba72fa01f32/687474703a2f2f6f61376436647871742e626b742e636c6f7564646e2e636f6d2f626c6f672f696d616765732f3038313734323039323736363338392e6a7067)


#### 第六节 jQuery动画
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

- 内部插入
  - 向元素最后面插入节点：
    -  `append()`:向每个匹配的元素内部追加内容
    -  `appendTo()`:把所有匹配的元素追加到指定元素集合中，`$("A").append("B") `等效 `$("B").appendTo("A")`
  - 向元素最前面插入节点：
    -  `prepend（）`：把每个匹配的元素内部前置内容
    - `prependTo（）`：把所有匹配的元素前置到另一个指定的元素集合中,`$("A").prepend("B")` 等效 `$("B").prependTo("A")`

- 外部插入
  - `after()`:在每个匹配的元素之后插入内容
  - `before()`：在每个匹配想元素之前插入内容
  -  `insertAfter()`：将所有匹配的元素插入到另一个指定的元素集合后面，`$A.insert($B)` 等效` $B.insertAfter($A);`
  - `insertBefore()`：将所有匹配的元素插入到另一个指定的元素集合前面 `$A.before($B)` 等效 `$B.insertBefore($A)`;

###### 三、删除内容
---

- 移除
	- `remove()`:从`DOM`中删除所有匹配元素
- 清空
	- `empty()`:删除匹配的元素集合中所有子节点内容

###### 四、克隆内容：创建指定节点副本
---

- `clone()`
	- 注意：若`clone（true）`则是包括克隆元素的属性，事件等

###### 五、替换内容
---

 -  `replaceWith()`:将所有匹配的元素替换成指定的元素
 - `replaceAll()`:用匹配的元素替换掉指定元素

- 注意：两者效果一致，只是语法不同 `$A.replaceAll($B) `等效于 `$B.replaceWhith($A)`;

##### 本节新知识
---

- `JavaScrip`t语言本身不支持动画设计，必须通过改变`CSS`来实现动画效果


**显隐动画**

- `show()`:显示 `hide()`:隐藏
    - 原理：`hide()`通过改变元素的高度宽度和不透明度，直到这三个属性值到`0`
	- `show()`从上到下增加元素的高度，从左到右增加元素宽度，从`0`到`1`增加透明度，直至内容完全可见
	- 参数：
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

-  **显隐滑动效果**
  - `slideDown()`:滑动隐藏
  - `slidUp()`:滑动显示
	
  - 参数:
	- `slideDown(speed,callback)`
	- `slidUp(speed,callback)`

- **显隐切换滑动**
	- `slideToggle()`:显隐滑动切换
    - 参数:
	  - `slidUp(speed,callback)`

**渐变：通过改变不透明度**

- **淡入淡出**
  - `fadeIn()`
  - `fadeOut()`

  - 参数：
    - `fadeIn(speed,callback)`
    - `fadeOut(speed,callback)`

- **设置淡出透明效果**
	- `fadeTo()`⁭：以渐进的方式调整到指定透明度

	- 参数：
	  - `fadeTo(speed,opacity,callback)`

-  **渐变切换:结合`fadeIn`和`fadeOut`**
	- `fadeToggle()`

	- 参数:
	  - `fadeOut(speed,callback)`


- **自定义动画：`animate()`**
     - 注意：在使用`animate`方法之前，为了影响该元素的`top`  ` left` `bottom`  `right`样式属性，必须先把元素的`position`样式设置为`relative`或者`absolute`
     - **停止元素的动画**
       - 很多时候需要停止匹配正在进行的动画，需要使用stop() 
       - `stop()`语法结构：`stop([clearQueue],[gotoEnd]);`
         - 都是可选参数，为布尔值
         - 如果直接使用`stop()`方法，会立即停止当前正在进行的动画
     - **判断元素是否处于动画状态**
        - 如果不处于动画状态，则为元素添加新的动画，否则不添加
        `if(!$(element).is(":animated")){ //判断元素是否处于动画状态}`
        - 这个方法在`animate`动画中经常被用到，需要注意
     - **延迟动画**
        - 在动画执行过程中，如果你想对动画进行延迟操作，那么使用`delay()`
- 用`animate`模拟`show()`:
  - `show`: 表示由透明到不透明
  - `toggle`: 切换
  - `hide`:表示由显示到隐藏
  
- **动画方法总结**

|方法名|说明|
|---|---|
|`hide()`和`show()`|同时修改多个样式属性即高度和宽度和不透明度|
|`fadeIn()`和`fadeOut()`|只改变不透明度|
|`slideUp()`和`slideDown()`|只改变高度|
|`fadeTo()`|只改变不透明度|
|`toggle()`|用来代替`show()`和`hide()`方法，所以会同时修改多个属性即高度、宽度和不透明度|
|`slideToggle()`|用来代替`slideUp`和`slideDown()`方法，所以只能改变高度|
|`fadeToggle()`|用来代替`fadeIn()`和`fadeOut`方法，只能改变不透明度|
|`animate()`|属于自定义动画，以上各种动画方法都是调用了`animate`方法。此外，用`animate`方法还能自定义其他的样式属性，例如：`left` `marginLeft ``scrollTop`等|


#### 第七节 jQuery中的事件
---

- **事件对象的属性**
  - `event.type`：获取事件的类型
  - `event.target`:获取到触发事件的元素
  - `event.preventDefault`方法 阻止默认事件行为
  - `event.stopPropagation()`阻止事件的冒泡
  - `keyCode`：只针对于`keypress`事件，获取键盘键数字 按下回车，`13 `

  - `event.pageX / event.pageY` 获取到光标相对于页面的`x`坐标和`y`坐标
      -  如果没有`jQuery`，在IE浏览器中用`event.x` / `event.y`;在`Firefox`浏览器中用`event.pageX` / `event.pageY`。如果页面上有滚动条还要加上滚动条的宽度和高度
  
  - `event.clientX`：光标对于浏览器窗口的水平坐标  浏览器
  - `event.clientY`：光标对于浏览器窗口的垂直坐标

  - `event.screenX`：光标对于电脑屏幕的水平坐标    电脑屏幕  
  - `event.screenY`：光标对于电脑屏幕的水平坐标 
  -  `event.which` 该方法的作用是在鼠标单击事件中获取到鼠标的左、中、右键，在键盘事件中的按键 `1`代表左键  `2`代表中键  `3`代表右键

- **事件冒泡**
  - 什么是冒泡
    - 在页面上可以有多个事件，也可以多个元素影响同一个元素
    - 从里到外
    - 嵌套关系
    - 相同事件
    - 其中的某一父类没有相同事件时,继续向上查找
  - **停止事件冒泡**
      - 停止事件冒泡可以阻止事件中其他对象的事件处理函数被执行
      - 在`jQuery`中提供了**`stopPropagation()`**方法
  - **阻止默认行为**
      - 网页中元素有自己的默认行为，例如：单击超链接后会跳转、单击提交后表单会提交，有时需要阻止元素的默认行为
      - 在`jQuery`中提供了` preventDefault()`方法来阻止元素的默认行为
 - **事件捕获**
    - 事件捕获和冒泡是相反的过程，事件捕获是从最顶端往下开始触发
    - 并非所有的浏览器都支持事件捕获，并且这个缺陷无法通过`JavaScript`来修复。`jQuery`不支持事件捕获，如需要用事件捕获，要用原生的`JavaScript`

- **`bind()`;绑定**
  - 为匹配元素绑定处理方法

  - 需要给一个元素添加多个事件 ，事件执行一样时候
  - `one()`：只执行一次         


- **绑定特定事件类型方法**：
	
|分类|方法名称|说明|
|---|---|--|
|页面载入|`ready(fn)`|当`DOM`载入就绪可以绑定一个要执行的函数|
|事件绑定|`blind(type,[data],fn)`|为每个匹配元素的特定事件绑定一个事件处理函数|
|事件绑定|`unblind()`|解除绑定|
|事件绑定|`on(events,[,selector[,]data],handler)`|在选择元素上绑定一个或者多个事件处理函数|
|事件绑定|`off()`|移除`on`绑定的事件|
|事件绑定|`delegate(selector,eventType,handler)`|为所有选择匹配元素附加一个或多个事件处理函数|
|事件绑定|`undelegate()`|移除绑定|
|事件动态|`live(type,fn)`|对动态生成的元素进行事件绑定|
|事件动态|`die(type,fn)`|移除`live()`绑定的事件|
|交互事件|`hover()`|鼠标移入移出|
|交互事件|`toggle(fn1,fn2,[fn3],[fn4])`|每单击后依次调用函数|
|交互事件|`blur(fn)`|触发每一个匹配元素的`blur`事件|
|交互事件|`change()`|触发每一个匹配元素的`change`事件|
|交互事件|`click()`|触发每一个匹配元素的`click`事件|
|交互事件|`focus()`|触发每一个匹配元素的`focus`事件|
|交互事件|`submit()`|触发每一个匹配元素的`submit`事件|
|键盘事件|`keydown()`|触发每一个匹配元素的`keydown`事件|
|键盘事件|`keypress()`|触发每一个匹配元素的`keypress`事件|
|键盘事件|`keyup()`|触发每一个匹配元素的keyup事件|
|鼠标事件|`mousedown(fn)`|绑定一个处理函数|
|鼠标事件|`mouseenter(fn)`|绑定一个处理函数|
|键盘事件|`mouseleave(fn)`|绑定一个处理函数|
|键盘事件|`mouseout(fn)`|绑定一个处理函数|
|键盘事件|`mouseover(fn)`|绑定一个处理函数|
|窗口操作|`resize(fn)`|绑定一个处理函数|
|窗口操作|`scroll(fn)`|绑定一个处理函数|



#### 第八节 jQuery与Ajax
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

#### 第九节 插件
---

- **什么是插件**
  - 插件(`Plugin`)也称为`jQuery`的扩展。以`jQuery`核心代码为基础编写的符合一定规范的应用程序。通过`js`文件的方式引用。

- **插件分为哪几类**
  - `UI`类、表单及验证类、输入类、特效类、`Ajax`类、滑动类、图形图像类、导航类、综合工具类、动画类等等 

	
-  **引入插件的步骤**
  - 引入`jquery.js`文件，而且在所以插件之前引入
  - 引入插件
  - 引入插件相关文件，比如皮肤、中文包


- **如何自定义插件**：	
	
  - 插件形式分为3类：
	- 封装对象方法插件
	- 封装全局函数插件
	- 选择器插件(类似于.`find()`)

- **自定义插件的规范**（解决各种插件的冲突和错误，增加成功率）
  - 命名：`jquery.插件名.js`
  - 所有的新方法附加在`jquery.fn`对象上面，所有新功能附加在`jquery`上
  - 所有的方法或插件必须用分号结尾，避免出问题
  - 插件必须返回jQuery对象，便于链式连缀
  - 避免插件内部使用`$`，如果要使用，请传递`jQuery`(`$`并不是总等于`jQuery`，另外其他`js`框架也可能使用`$`)
  - 插件中的`this`应该指向`jQuery`对象
  - 使用`this.each()`迭代元素

- **自定义插件案例**
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
####   附录一 常见CND加速服务
---

- [Bootstrap中文网开源项目免费 CDN 服务](http://www.bootcdn.cn/)
- [百度静态资源公共库](http://cdn.code.baidu.com/)
- [360网站卫士常用前端公共库CDN服务--已停止服务](http://libs.useso.com/)
- [开放静态文件 CDN ](http://staticfile.org/)
- [微软CDN服务](http://www.asp.net/ajax/cdn)
- [阿里云](https://bbs.aliyun.com/read/139395.html)
- [百度开放云平台](http://developer.baidu.com/wiki/index.php?title=docs/cplat/libs)
- [jQuery CDN](http://code.jquery.com/)
- [jQuery cdn加速](http://www.jq22.com/cdn/)
- [新浪CDN](http://lib.sinaapp.com/)

#### 附录二 jQuery的一些资源
---
- 速查手册
  - [jQuery API 中文文档--css88](http://www.css88.com/jqapi-1.9/)
  - [jQuery-overapi](http://overapi.com/jquery)
  - [在线桌面版API](http://www.sxt.cn/searchsxt/sxtapipro/index.html)
  - [更多详情---一份实用的API参考手册集合](https://github.com/poetries/mywiki/blob/master/bookmark/%E5%AE%9E%E7%94%A8%E5%8F%82%E8%80%83%E6%89%8B%E5%86%8CAPI.md)
- `jQuery`插件
 - 基础常用
   - [滚动固定在某个位置](http://caibaojian.com/scrollfix)
   - [jQuery图片滚动插件全能版](http://caibaojian.com/power-slider)
   - [jQuery Wookmark Load 瀑布流布局](http://code.ciaoca.com/jquery/wookmark/?utm_source=caibaojian.com)
   - [jQuery Jcrop 图像裁剪](http://code.ciaoca.com/jquery/jcrop/?utm_source=caibaojian.com)
   - [jQuery kxbdMarquee 无缝滚动](http://code.ciaoca.com/jquery/kxbdmarquee/?utm_source=caibaojian.com)
   - [jQuery lightBox 灯箱效果](http://code.ciaoca.com/jquery/lightbox/?utm_source=caibaojian.com)
   - [Lazy Load Plugin for jQuery](http://www.appelsiini.net/projects/lazyload?utm_source=caibaojian.com)
 - 更多插件-动效库整理
    - [插件动效库](https://github.com/poetries/mywiki/blob/master/bookmark/%E6%8F%92%E4%BB%B6%E5%BA%93.md)
   - [常用组件](https://github.com/poetries/mywiki/blob/master/bookmark/%E5%B8%B8%E7%94%A8%E7%BB%84%E4%BB%B6.md)

#### 扩展阅读
---

- [jQuery源码分析系列](http://www.cnblogs.com/aaronjs/p/3279314.html)

##### 参考
---

  - 锋利的`jQuery`

---
- [本文md源文件](https://github.com/poetries/poetries.github.io/blob/dev/source/_posts/review-jQuery.md)
