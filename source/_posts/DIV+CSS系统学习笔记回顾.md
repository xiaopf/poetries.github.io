---
title: DIV+CSS系统学习笔记回顾
date: 2016-09-06 18:24:08
tags: 
  - CSS
  - XHTML
categories: Front-End
---

### 第一部分 HTML


---
#### 第一章 职业规划和前景
---

- **职业方向规划定位：**

  - `web`前端开发工程师
  - `web`网站架构师
  - 自己创业
  - 转岗管理或其他

- **`web`前端开发的前景展望：**

  - 未来`IT`行业企业需求最多的人才
  - 结合最新的`html5`抢占移动端的市场
  - 自己创业做老板
  - 随着互联网的普及`web`开发成为企业的宠儿和核心

-  **`web`职业发展目标：**

  - 第一、梳理知识架构
    - 负责内容的`HTML`
    - 负责外观的`css`（层叠样式表）
    - 负责行为的`js`
    - `ps`切图

  - 第二、分解目标（起步阶段、提升阶段、成型阶段）
<!--more-->
    - 起步阶段：
        - 基本知识的掌握
        - 常用工具的掌握
        - 沟通技巧的掌握（围绕客户的需求）
        - 良好的开发习惯（加注释、对齐方式）

    - 提升阶段：
        - 熟悉掌握`HTML`基本标签和属性
        - 熟练掌握`css`的基本语法和使用
        - 浏览器兼容和w3c标准的掌握
        - 结合`html`+`css`+`js`开始系统项目的开发

    - 成型阶段：
        - 精通`DIV`+`CCS`布局
        - 精通`css`样式表控制`html`标签
        - 熟悉运用`js`制作动态网站的效果
        - 能独立开发完成网站

---

#### 第二章 html基本结构
---

- 认识HTML：

    - `html`不是一种编程语言，是一种标志语言
    - 标记语言是由一套标识标签组成的
    - `html`使用标签来描述网页

- `html`结构：

```
<html>
    <head></head>
    <body></body>
</html>
```

- 不成对出现的标签
`<br>` `<hr>`  `<meta>` `<img>`  `<input..>`  `<option..>`  `<link>`


- **HTML 基本标签的讲解：**

    - `<html>` `<head>` `<body>`标签
    - `<h1>`----`<h6> `仅仅用于标题文本，不要为了产生粗体文本使用它们
    - `<p>`标签  段落标签
    - `<strong><b>`标签

    - 都会让文字产生加粗效果
      - `<strong>`用于强调文本，强度更深，表示重要文本--->用于`SEO`优化
      - `<b>`只是视觉加粗效果--->单纯为了产生加粗

 - `<em>` `<i>`标签
    - `em`用于强调文本
    - `i`只是视觉斜体效果
    - `<strong>`比`<em>`强调更强
 - 特殊符号：
    - `&nbsp`; ---->空格
    - `&gt`; --->大于号
    - `&lt`；--->小于号
    - `&quot`；--->引号
    - `&copy`;-->版权号
---

#### 第三章 html基本标签

---
- `HTMl`基本标签：
    - `span`标签
        - 对被用来组合文档中的行内元素
        - 注意：span没有固定的格式表现，当对它应用样式时，才会产生视觉上的变化
    - `<pre>`标签
        - 文字的格式按源码的排版来显示，我们称之为预处理格式
    -  `<a>`标签--->他有一个必不可少的属性 href 
        - `target`属性：
        - `_self`(在原来页面打开) 
        - ` _blank`（新窗口打开）
        - `_top`（打开时忽略所有的框架） 
        -  `_parent`（在父窗口中打开）

    - 创建锚点和锚链接
    
        - 锚点也是一种超链接，是页面内进行跳转的超链接
             - 第一步：创建锚点 `<a name="锚点名称"></a>`
             - 第二步：使用创建好的锚点名称 `<a href="#锚点名称">内容</a>`
    - `marquee`标签
        - 可以创建一个内容滚动效果

```
<marquee direction="down" loop="4" onmouseover=this.stop() onmouseout=this.start()></marquee>
```
- `direction` 表示滚动方向，取值有（left,right,up,down,默认left）
- `loop `表示滚动循环的次数，默认为无限循环

```
onmouseover=this.stop()  onmouseover=this.start()  scrollamout="1"(滚动速度)
```

- 表示当鼠标移上区域的时候停止滚动，鼠标移开继续滚动

---

#### 第四章 img图片标签与路径
---

- 图片标签与路径：

    - 常见图片格式 `jpg` `png` `gif`
    - `Gif`     （只支持全透明）
    - `Jpeg` /`jpg`	 
    - `Png` 半/全透明都支持

- 图片标签写法 ：
  - `<img src="" alt="" width="" height="" />`

- 图片四要素：
    - `src=""`        图片路径
    - `alt="" `       图片含义
    - ` width="" `     图片宽度 和图片大小保持一致
    - ` height=""`     图片高度 和图片大小保持一致
    - `title=""`

- 路径知识：

  - 相对路径、绝对路径：
      - 相对路径：(Relative Path) 相对于该文件的路径；
      - 绝对路径：(Absolute Path) 从磁盘出发的路径； 

  - `<img src="" …… align="" />` `align`属性--设置图片与后面文字的位置关系
值--`top`、`bottom`、`middle`、`absmiddle`、`left`、`right`

- 在静态页面中：

    - `/`开头表示根目录；
    
    - `./`表示当前目录；（斜画线前面一个点）
    
    - `../`上级目录；（斜画线前面两个点）
    
    - 直接用文件名不带/也表示同一目录

  - 这些都是相对于当前文件的位置来说的，如果用绝对路径的话就是写全了。

---

#### 第五章 三种列表的讲解
---

- 三种列表的知识讲解：
    - `<ul>`无序列表
         - 无序列表是一个没有顺序项目的列表，此列表项默认粗体圆点进行标识

```
<ul>
   <li></li>
   <li></li>
   <li></li>
</ul>
```
- <ol>有序列表
    - 有序列表也是一列项目，只是列表项目使用的是数字进行标记。 有序列表始于 `<ol>` 标签。每个列表项始于 `<li> `标签。
    
```
<ol>
   <li>内容一</li>
   <li>内容二</li>
   <li>内容三</li>
</ol>
```
- 列表符号

  - 无序列表-列表符号:

    - `type="circle"`  空心圆 `type=“disc” ` 实心圆  默认值 `type="square" ` 方块符

  - 有序列表-列表符号
    - `type="A"`    A B C D
    - `type="a"`    a b c d
    - `type="1"`    1 2 3 4  默认值type="I"    I II III type="i"	 i ii iii

  - 列表嵌套

  - 无序列表-嵌套

```
<ul>
 <li>柚子
  <ul>
   <li>沙田柚</li>
   <li>蜜柚</li>
  </ul>
 </li>
 <li>荔枝</li>
 <li>苹果</li></ul>
```

   - 有序列表-嵌套

```
<ol>
 <li>茶
  <ul>
   <li>红茶</li>
   <li>绿茶</li>
  </ul>
 </li>
 <li>果汁</li>
 <li>牛奶</li></ol>5、定义列表
```

- 定义列表不仅仅是一列项目，而是项目及其注释的组合。定义列表以 `<dl>` 标签开始。每个定义列表项以 `<dt> `开始。每个自定义列表项的定义以 `<dd>` 开始。
```
<dl>  
     <dt>pc网页制作</dt>  
     <dd>学费1580，学习DIV+CSS JS JQ 项目实战</dd>  
     <dt>手机网页制作</dt>  
     <dd>内部VIP学费900，非VIP学1380</dd>
</dl>
```

- `dd`是对`dt`的解释

    - `< dl>< /dl>`用来创建一个普通的列表,
    - `< dt>< /dt>`用来创建列表中的上层项目，
    - `< dd>< /dd>`用来创建列表中最下层项目，
    - `< dt>< /dt>`和`< dd>< /dd>`都必须放在`< dl>< /dl>`标志对之间。

```
<dl>
    <dt>中国城市</dt>
    <dd>北京 </dd>
    <dd>上海 </dd>
    <dd>广州 </dd>
    <dt>美国城市</dt>
    <dd>华盛顿 </dd>
    <dd>芝加哥 </dd>
    <dd>纽约 </dd>
</dl>
```

- `dl`是d`efinition list`的缩写
- `dt`是`definition title`的缩写
- `dd`是d`efinition description`的缩写


- `list-style`属性具有三个属性分量：
- `list-style-position` ：设置列表项图标的位置，位于文本内或者文本外
- `list-style-type`： 设置列表项图标的类型
- `list-style-image `：使用图像设置列表项图标

---

#### 第六章 表单元素(上)
---

- 表单标签:

  - `<form>`表单标签

    - `<form>`表单是一个包含表单元素的区域，包括起来的都是表单的内容
```
<form>
 <input type="text"/>
</form>
```

- HTML标签 - `Action`和确认按钮： 
    - 当用户单击确认按钮时，表单的内容会被传送到另一个文件。表单的动作属性定义了目的文件的文件名。由动作属性定义的这个文件通常会对接收到的输入数据进行相关的处理。
    
```
<form action="html.do" method="get">    
        username:  <input type="text" name="user" />   
        <input type="submit" value="提  交" />
</form>
```


- `HTML`标签 - 隐藏域隐藏标签：

- 隐藏域在页面中对于用户是不可见的，在表单中插入隐藏域的目的在于收集或发送信息，以利于被处理表单的程序所使用。浏览者单击发送按钮发送表单的时候，隐藏域的信息也被一起发送到服务器

```
<form>        
     <input type="hidden" name="hid" value="value">
</form>
```

- `<input>`标签的掌握

    - 常用`type`类型：

        - `<input type="" name="" value="" />`
        - `type="text" `       单行文本输入框
        - `type="password"`	密码（`maxlength=""`）
        - `type="radio"  `     单项选择（`checked="checked"`） 
        - `type="checkbox" `   多项选择  
        - `type="button"  `	按钮
        - `type="submit"`	提交 ` type="image" `图片提交
        - `type="file"`	上传文件
        - `type="reset"	`重置
        - `type="hidden"`	隐藏

- 关于表单中的设置默认值：
```      
<input type="text" name="" value="今天心情不错" />
<input type="radio" name="" value="" checked="checked">
<input type="checkbox" name="" value="" checked="checked">
```
```
<select name="" >
 <option  value=""></option>
 <option  value="" selected="selected"></option>
<select>
```
- `textarea`没有默认值

- `<label>`标签的使用

  - `<label></label>`
    - `label` 元素不会向用户呈现任何特殊效果。
    - 不过，它为鼠标用户改进了可用性。
    - 如果您在 `label` 元素内点击文本，就会触发此控件。
    - 就是说，当用户选择该标签时，浏览器就会自动将焦点转到和标签相关的表单控件上。

  - `<label>` 标签的` for` 属性应当与相关元素的 `id `属性相同。

  - 例子：（重要---注册表单--用户体验--必做）
``` 
<p>单向选择</p>
<label for="male">男：</label><input type="radio" name="sex" id="male"/>
<label for="nv">女：</label><input type="radio" name="sex"checked="check"/>
```

---

#### 第七章 表单和表格(下)
---

- 表单和表格标签：
    - `<textarea>`文本域标签
    - `<textarea>`标签：
    - `<textarea></textarea>`是文本域标签，可以在其中插入一段文字内容，它有两个常用属性`rows`和`cols`
- 注意：
    - `rows`表示这个文本域有多少行
    - `cols`表示这个文本域有多少列

- 除了这两个属性它还有`readonly`（只读，文本域的内容无法改变，相当于协议）和`title`（鼠标放上提示）

- `<select>`标签的掌握

  - 注：当提交表单时，浏览器会提交选定的项目，或者收集用逗号分隔的多个选项，将其合成一个单独的参数列表，并且在将 `<select>` 表单数据提交给服务器时包括 `name `属性
```
<form>      
    <select name=""  id="">
         <option value="1">1月</option>  
          <option value="2">2月</option>      
</select>
</form>
```
- 常用到的属性：`disabled=“disabled”  name="sel"  size="2"`



- `<table>`表格标签
- ` <table>`表格标签：`<table>`是表格标签，可以用它定义一个表格。
```
<table border="1">
    <tr>
    <td>姓名</td>
    <td>性别</td>
    </tr>
</table>
```

- 注意：`<table>`的`border`属性不能少


- `<tr>` `<td>`标签的使用

    - `<tr>`行标签：

        - `<tr>`可以定义表格中的一行，一个<`tr></tr>`表示一行。
        
```
<table border="1">
<tr>
 <td>姓名</td>
 <td>性别</td>
</tr>

<tr>
 <td>姓名</td>
 <td>性别</td>
</tr>
</table>
```

- `<td>`单元格标签:

    - `<td>`可以定义表格中的一个单元格，`<td></td>`表示一个单元格。
```
<table border="1">
<tr>
<td >姓名</td>
<td>性别</td>
<td>爱好</td>
</tr>
</table>
```
  - `border-collapse` 属性设置是否将表格边框折叠为单一边框：
  - `border-collapse:collapse`;
  - `colspan`左右合并
  - `rowspan`上下合并

**第一部分总结**：

- 非可视化标签：`head`  `meta`  `style`  `scrpit.`..
- 可视化标签：`img`  `div` `span` `a` `ul` `li`...
- 只有可视化标签，才能用`css`改变它
- 单标签：`meta`  `link`  `base`  `img`  `input` `br` `hr`
- 双标签：`html` `head` `body`  `div`  `a`  `p`  `span` ..`ul` `li` `ol` ` dl` ....

- **常用可视化标签**

	- ** `div`** 
		- 一般用它来布局
	- **a**  超链接标签
		- `href`*属性：设置跳转的网页地址
		- `target`属性：设置跳转的目标
		- 结论：凡事页面可以点击跳转或者表单提交的文字，都用`a`标签
	- **`img`**
		- `src`*属性用来设置图片的url数据
		- `alt`提供给搜索引擎搜索的
		- `width`
		- `height`
		- 结论 ：显示图片
	- **ul li**
		- 列表
		- 结论：只要将来设计页面中有固定样式的列表，就用ul和li
	- **`table` `caption` `tr` `td (th)`**
		- 慢慢已经被淘汰了 被ul li代替
		- 如果是合并竖排的就是合并行（`rowspan`）
		- 如果是合并横排的就是合并列（`colspan`）

---
**HTML部分导图总结**

---

![](http://upload-images.jianshu.io/upload_images/1480597-3d15eb9c7be0cb65.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![](http://upload-images.jianshu.io/upload_images/1480597-4b0073fd050ba4f3.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

---

### 第二部分 CSS

---

#### 第八章 css基础知识
---
- `css`基础知识：
  - `css`样式表的定义
  - `css`：（Cascading Style Sheets）层叠样式表；
- 分类及位置：内部样式`-head`区域`style`标签里面
     - 外部样式-link调用
     - 内联样式-标签元素里面
- `css`内的注释：/`*`注释内容`*`/
- `css`样式表的语法
   - `CSS`规则由两个主要的部分构成：要添加样式的盒子名或者标签名、和要添加的样式。

   - 盒子名或者标签名{属性:值;}

   - **三种颜色表示方法：**
        - 英文单词
        - `#`开头`16`进制`6`位数（两两相同可以缩写）
        - `rgb(0,0,0)`

- 内部样式表（单单做一个页面时）
    - 当单个页面需要设置样式时，就应该使用内部样式表。
    - 使用 `<style></style>`标签在文档`<head></head>`里面定义内部样式表
```
<head>
 <style type="text/css" >
  p{color:red;}
 </style>
</head>
```

- 从外部引入到样式分为两种：（注意写在`head`标签里面）  
- 当样式需要应用于很多页面时，就需要用到外部样式表，首先需要创建一个`css`文件，然后引用到我们的页面中。

- `Link`样式表式：  `<link rel=”stylesheet” type=”text/css” href=”my.css”(href表示路径)>  `

- `Html`式：  `<style type="text/css">@import url("css.css");></style> ` 


- 内联样式表（优先级高）

    - 写在标签里面的样式

    - 如：`<p style="color:red;"></p>`

- 表示给`p`标签里面的文字颜色设置为红色

- 区别：外链样式与导入样式

    - `link`标签是属于`xhtml`范畴，而`@import`则是`css2.1`中特有的。`link`标签除了可以加载`CSS`外，还可以做很多其它的事情，比如定义`RSS`，定义`rel`连接属性等，`@import`就只能加载`CSS`了。 
    
    - 加载的顺序的区别，`link`加载的`css`时，是一种并行(没有尝试是否是这样)加载`CSS`方式，而`@impor`则在整个页面加载完成后才加载。
    
    - 兼容性的区别，因`@import``CSS2.1`才特有的，所以对于不兼容`CSS2.1`的浏览器来说，无效。
    
    - 在样式控制上(比如动态改变网页的布局时,使用`javascript`操作`DOM`)的区别，此时`@import`就无能为力了。

---

####  第九章 css选择器(上)

- `css`选择器：
   - `class`类选择器可以重复利用    
   - `id`选择器唯一
- 标签选择器
    - 什么是选择器：css选择器就是要改变样式的对象
- 选择器`{属性:值;属性:值;}`

- 标签选择器：页面中所有的标签都是一个选择器  `p{color:red;}`

- `ID`选择器
    - 选择`id`命名的元素 以 `#` 开头   `#p1{color:#0f0;}`

- 类选择器
    - `class`选择器，选择`clas`命名的元素 以`.`开头  `.first{color:#00f;}`
- `css`代码写完后上线前要经过压缩处理 
- 本地和服务器分两个`css`版本（备份）
- 压缩后注释都清除，空间体积减少

- 群组选择器
    - 选择多个元素,以逗号隔开 `#main,.first,span,a,h1{color:red;}`
- 包含选择器
    - 选择某元素的后代元素，也称后代选择器，父类与子类间以空格隔开`p`   
        - `span{color:red;}`
- 属性选择器

    - 选择包含某一属性的元素
    - `a[title]{color:red;}`  选择包含`title`的`a`标签
    - `a[title][href]{color:red;}` 选择包含`title`和`href`的`a`标签

- `> ` `+` 选择器子类选择器：只选择子元素（只选择儿子）（相当于包含元素）

    - `p > span{color:red;}`

- 相邻兄弟选择器：只选择后面的相邻兄弟元素

    - `p + span{color:red;}`

---
 
####  第十章 css选择器(下)
---
-  `<a>`伪类选择器
   - `a:link {color:#FF0000;}`	/* 未访问的链接 */ （只用于a标签）
   - `a:visited {color:#00FF00;}`	/* 已访问的链接 */ （只用于a标签）
   - `a:hover {color:#FF00FF;}	`/* 鼠标移动到链接上
   - `*/`（可和其他标签结合一起用）
   - `a:active {color:#0000FF;}`	/* 选定的链接 */
    
- 输入伪类选择器（针对表单）
     - `input:focus{color:red;} `      /* 键盘输入焦点 */

- 其他伪类选择器

  - `p:first-child{color:red;}`     /`* 第一个p *`/
  - `:before` 在元素之前添加内容。
  - `:after` 在元素之后添加内容。

- `css`优先规则
    - 内联样式表-> `ID` 选择器—> `Class` 类选择器->标签选择器

---

####  第十一章 背景属性
---
- 背景属性：
  - 背景的添加 ：

  - 背景颜色的添加:
    - `background:red;`
    - `backgronnd-color:red;`

  - 背景图片的添加：
    - `background:url(“images/1.jpg”);`
    - `backgronnd-image:url(“images/1.jpg”);`
  - 背景的平铺
  - 什么是平铺？平铺就是图片是否重复出现
    - 不平铺：`background-repeat:no-repeat;`
    - 水平方向平铺：`background-repeat:repeat-x;`
    - 垂直方向平铺：`background-repeat:repeat-y;`
    - 完全平铺：默认为完全平铺
  - 背景图片的定位
    - 背景图片的定位就是可以设置显示背景图片的位置，通过属性`background-position`来实现
    - `background-position`的取值可为英文单词或者数值和百分值。
    - `background-positon`的英文单词取值
    - `top left `                   
    - `top  center  `                   
    - `top  right`
    - `center left  `            
    - `center  center `                   
    - `center right`
    - `bottom left  `           
    - `bottom  center `    
    - `ottom right`
  - `background-positon`的数值取值     
    - `background-position:x  y;`  
  - `positon`的百分值取值     
    - `background-position:x%  y%; ` 
  - 背景图片的大小
    - 背景图片的大小可以通过属性`background-size`来设置`background-size`的取值可为数值和百分值。

  - `background-size`的数值取值     
    - `background-size:x  y;`  
  - `background-size`的数值取值     
    - `background-size:x%  y%;`

  - 背景图片的滚动
    - 背景图片是否随着内容的滚动而滚动由`background-attachment`设置

    - `background-attachment:fixed; `  固定，不随内容的滚动而滚动	
    - `background-attachment:scroll; ` 滚动，随内容的滚动而滚动

---

#### 第十二章 文字文本属性
---

- `css`文字文本属性：

  - **文字属性**

    - `color:red;`	文字颜色
    - `font-size:12px`;	文字大小
    - `font-weight:“bold”`	文字粗细(`bold/normal`)
    - `font-family:“宋体”`	文字字体
    - `font-variant:small-caps `小写字母以大写字母显示


  - **文本属性**

    - `text-align:center;`   文本对齐(`right`/`left`/`center`)
    - `line-height:10px; ` 行间距(可通过它实现文本的垂直居中)
    - `text-indent:20px;`  首行缩进
    - `text-decoration:none; ` 
       - 文本线(`none`/`underline`/`overline`/`line-through`)
    - `letter-spacing`:   字间距
---

####  第十三章 盒子模型
---
- **盒子模型**
    - 盒子模型就是一个有高度和宽度的矩形区域
    - 所有`html`标签都是盒子模型
    - `div`标签自定义盒子模型
- 所有的标签都是盒子模型
  - `class`和`id`的主要差别是：`class`用于元素组（类似的元素，或者可以理解为某一类元素），而`id`用于标识单独的唯一的元素。

- **盒子模型的组成**
    - 盒子模型组成部分：
        - 自身内容：` width`、h`eight` 宽高
        - 内边距：   `padding`
        - 盒子边框： `border` 边框线
        - 与其他盒子距离：  `margin `外边距
        - 内容+内边距+边框+外边距=面积
- `border` 边框
    - 常见写法  `border:1px solid #f00;`

- 单独属性：
 - `border-width`:
 - `border-style:` 
     - `dotted ` 点状虚线
     - `dashed`（虚线）
     - `solid`（实线）
     - `double`（双实线）
 - `border-color` (颜色)
- `padding` 内边距
    - 值：`像素`/`厘米`等长度单位、百分比

        - ` padding:10px;  `	                  上下左右
        - `padding:10px 10px; `                 上下  左右
        - `padding:10px 10px 10px; `         上 左右 下
        - `padding:10px 10px 10px 10px; ` 上 右 下 左（设置4个点-->顺时针方向）

- 单独属性：
     - `padding-top:`
     - `padding-right:`
     - `padding-bottom:`
     - ` padding-left:`

- 当设置内边距的时候会把盒子撑大，为了保持盒子原来的大小，应该高度和宽度进行减小，根据`width`和`height`减小

- margin 外边距

    - 值：与`padding`相同

    - 单独属性：与`padding`相同

- 外边距合并：两个盒子同时设置了外边距，会进行一个外边距合并


---

####  第十四章 块元素、行元素与溢出
---

- 基本概念
    - 块级元素：默认情况下独占一行的元素，可控制宽高、上下边距；
    - 行内元素：默认情况下一行可以摆放多个的元素，不可控制宽高和上下边距
- 行块转换
    - `display:none`;  不显示
    - `display:block`; 变成块级元素
    - `display:inline`; 变成行级元素
    - `display:inline-block`; 以块级元素样式展示，以行级元素样式排列

- 溢出
    - `overflow:hidden`;   溢出隐藏
    - `overflow:scroll`;   内容会被修剪，浏览器会显示滚动条
    - `overflow:auto`;   如果内容被修剪，则产生滚动条

- 文本不换行：`white-space:nowrap`;
- 长单词换行：`word-wrap:break-word`;

- 常见块元素和行内元素

    - 块元素(`block element`）

        - `address`  地址
        - `center`  举中对齐块
        - `div`- 常用块级容易
        - `dl` 定义列表
        - `form`  交互表单 （只能用来容纳其它块元素）
        - `h`标签
        - `hr`  水平分隔线
        - `ol ` 无需列表
        - `ul`有序列表
        - `p ` 段落
        - `pre`  格式化文本


- 内联元素：

    - `a` - 锚点
    - `b` - 粗体(不推荐)
    - `br `- 换行
    - `code` - 计算机代码(在引用源码的时候需要)
    - `em` - 强调
    - `i` - 斜体
    - `img` - 图片（特殊的内联元素，同时是内联替换元素，替换元素可以设置宽高）
    - 当图片和DIV在一起时，图片周围会出现margin现象，即元素不重合贴在一起，为了解决这个问题，设置`img`的`css`为`{margin：0；display：block；border：0px}`
    - `input` - 输入框
    - `label` - 表格标签
    - `select` - 项目选择
    - `strong` - 粗体强调
    - `textarea` - 多行文本输入框
    - `u` - 下划线
    - `var` - 定义变量

- 替换元素有如下：（和`img`一样的设置方法）
  - `<img>`、`<input>`、`<textarea>`、`<select>`
  - `<object>`都是替换元素，这些元素都没有实际的内容


---

#### 第十五章 定位
---

- `static`静态定位（不对它的位置进行改变，在哪里就在那里）
  -  默认值。没有定位，元素出现在正常的流中（忽略 `top`,` bottom,`  `left, right` 或者 `z-index` 声明）。

- `fixed`固定定位（参照物--浏览器窗口）---做 弹窗广告用到
  - 生成固定定位的元素，相对于浏览器窗口进行定位。 元素的位置通过 `"left"`, `"top"`, `"right" `以及 `"bottom" `属性进行规定。 

- `relative`（相对定位 ）（参照物以他本身）
  - 生成相对定位的元素，相对于其正常位置进行定位。

- `absolute`（绝对定位）(除了`static`都可以，找到参照物-->与它最近的已经有定位的父元素进行定位)
 - 生成绝对定位的元素，相对于 `static` 定位以外的第一个父元素进行定位。
 - 元素的位置通过 "`left"`, `"top"`, `"right"` 以及 `"bottom"` 属性进行规定

- z-index
    - `z-index` 属性设置元素的堆叠顺序。拥有更高堆叠顺序的元素总是会处于堆叠顺序较低的元素的前面。
    - 定位的基本思想: 它允许你定义元素框相对于其正常位置应该出现的位置，或者相对于父元素、另一个元素甚至浏览器窗口本身的位置。

- 一切皆为框
    - 块级元素: `div`、`h1`或`p`元素 即：显示为一块内容称之为 “块框“ ;
    - 行内元素: `span`,`strong`,`a`等元素 即：内容显示在行中称 "行内框";
    - 使用display属性改变成框的类型 即：`display:block`; 让行内元素设置为块级元素，`display:none;` 没有框

- 相对定位：
    - 如果对一个元素进行相对定位，它将出现在它所在的位置上。 
    - 通过设置垂直或水平位置，让这个元素“相对于”它的起点进行移动
    - `.adv_relative {  position: relative;  left: 30px;  top: 20px; }`

- 绝对定位：
    - 元素的位置相对于最近的已定位祖先元素，如果元素没有已定位 的祖先元素，它的位置相对于最初的包含块。 `.adv_absolute {  position: absolute;  left: 30px;  top: 20px; }`

---

![](http://upload-images.jianshu.io/upload_images/1480597-f72c1c8486445df1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![](http://upload-images.jianshu.io/upload_images/1480597-7ab9cda0bbd7e62f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

---

#### 第十六章 框架
---

- `frameset`框架：
    - `<frameset> ` ----  用来定义一个框架；双标签
    不能和  `<body>`  一起使用
- `rows`、`cols`属性
    - `rows ` 定义行表示框架有多少行（取值 `px `/` % `/ `*` ）
    - `cols`   定义列表示框架有多少列（取值` px `/ `% `/ `*` ）

- frame子框架
  - <`frame`>  ----  表示框架中的某一个部分；单标签，要跟结束标志
    - `src` 显示的网页的路径
    - `name` 框架名
    - `frameborder`  边框线（取值 0 / 1）

 - <`noframes`>属性

 - <`noframes`> 提供不支持框架的浏览器显示`body`的内容；双标签

```
<frameset>
     <frame  src=“”  />
     <frame  src=“” />
     <frame  src=“” />
     <noframes>
      <body>内容</body>
     </noframes>
</frameset>
```

- `<iframe>`内联框架
    - `iframe `元素会创建包含另外一个文档的内联框架（即行内框架）
    - 允许和 `body` 一起使用
    - `width` 宽（取值 px / %）
    - `height` 高（取值 px / %）
    - `name` 框架名
    - `frameborder ` 边框线（取值 0 / 1）
    - `src` 显示的网页的路径

---

#### 第十七章 css高级属性
---
- `opacity`透明属性
 - `opacity`
   - 对于`IE6/7/`，使用`filter:alpha(opacity:值;`)  值为`0-100`
   - 对于`Webkit`，`Opera`，`Firefox`，`IE9+`，使用`opacity`:值; 值为`0-1`
   - 对于早期火狐，使用`-moz-opacity`:值; 值为`0-1`
   - 所以写透明属性时，一般写法是

```
 {	
    opacity:0.5;
   filter:alpha(opacity：50);/*0-100*/
   -moz-opacity:0.5;	/*取值0-1*/-->针对早起版本的火狐兼容问题的解决
}
```

- `border-radius`圆角边框属性

    - 向 `div` 元素添加圆角边框
        - `border-radius:10px`;

- `box-shadow`阴影属性

    - `box-shadow `属性向框添加阴影效果,后面跟4个参数。
    
    - `box-shadow:0px   0px   10px   #000;`

- `<embed>`属性

    - 是`HTML5`中新增的标签,媒体嵌入插件标签，可以通过`<embed>`插入音频或视频
    
    - `<embed src=“media/music.mp3” />`
    
    - 格式`.mid ` `.wav` `.mp3`等

---

### CSS部分导图总结

---

- [原文件下载地址](https://yunpan.cn/cM9va2bHD4wwu)   访问密码 342a

![](http://upload-images.jianshu.io/upload_images/1480597-a893d4023c39c78a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
