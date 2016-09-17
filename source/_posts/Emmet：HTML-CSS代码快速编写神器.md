---
title: Emmet：HTML/CSS代码快速编写神器
date: 2016-03-14 14:33:00
tags: Emmet
categories: Front-End
---

### [前端开发必备！Emmet使用手册](http://www.w3cplus.com/tools/emmet-cheat-sheet.html)

Emmet的前身是大名鼎鼎的Zen coding，如果你从事Web前端开发的话，对该插件一定不会陌生。它使用仿CSS选择器的语法来生成代码，大大提高了HTML/CSS代码编写的速度，比如下面的演示： 
<!--more-->
![此处输入图片的描述][1]
 
该插件已经改名为Emmet。但Emmet不只改名，还带来了一些新特性。
 

#####  **一、快速编写HTML代码** 
---

 1. **初始化**
---
 
HTML文档需要包含一些固定的标签，比如<html>、<head>、<body>等，现在你只需要1秒钟就可以输入这些标签。比如输入“!”或“html:5”，然后按Tab键：

![此处输入图片的描述][2]

 1. html:5 或!：用于HTML5文档类型
 2. html:xt：用于XHTML过渡文档类型
 3. html:4s：用于HTML4严格文档类型
 
**2.  轻松添加类、id、文本和属性** 
---

连续输入元素名称和ID，Emmet会自动为你补全，比如输入p#foo： 

![此处输入图片的描述][3]

连续输入类和id，比如p.bar#foo，会自动生成：
Html代码

    <p class="bar" id="foo"></p>

下面来看看如何定义HTML元素的内容和属性。你可以通过输入h1{foo}和a[href=#]，就可以自动生成如下代码：

    <h1>foo</h1>  
<a href="#"></a>  

![此处输入图片的描述][4]

**3.  嵌套** 
---

现在你只需要1行代码就可以实现标签的嵌套。 

 - >：子元素符号，表示嵌套的元素
 - +：同级标签符号
 - ^：可以使该符号前的标签提升一行

![此处输入图片的描述][5]

**4.  分组** 
---

你可以通过嵌套和括号来快速生成一些代码块，比如输入(.foo>h1)+(.bar>h2)，会自动生成如下代码：

    <div class="foo">  
    <h1></h1>  
    </div>  
    <div class="bar">  
     <h2></h2>  
     </div>  
     

 ![此处输入图片的描述][6]
 
 **5.  隐式标签** 
 ---

 声明一个带类的标签，只需输入div.item，就会生成`<div class="item"></div>。` 

在过去版本中，可以省略掉div，即输入.item即可生成`<div class="item"></div>`。现在如果只输入.item，则Emmet会根据父标签进行判定。比如在<ul>中输入.item，就会生成`<li class="item"></li>`。 

![此处输入图片的描述][7]

**下面是所有的隐式标签名称：** 

 - li：用于ul和ol中
 - tr：用于table、tbody、thead和tfoot中
 - td：用于tr中
 - option：用于select和optgroup中
 
**6.  定义多个元素** 
---

- 要定义多个元素，可以使用`*`符号。比如，`ul>li*3`可以生成如下代码：
 
```html
<ul> 
  <li></li>
  <li></li>
  <li></li>
</ul>  
```

![此处输入图片的描述][8]

**7.  定义多个带属性的元素** 
---

- 如果输入 `ul>li.item$*3`，将会生成如下代码： 

```html
<ul>  
  <li class="item1"></li>  
  <li class="item2"></li>  
  <li class="item3"></li> 
</ul>
```  
    
![此处输入图片的描述][9]

##### **二、CSS缩写** 
---

**1.  值** 

- 比如要定义元素的宽度，只需输入`w100`，即可生成 width: 100px;  

![此处输入图片的描述][10]

除了px，也可以生成其他单位，比如输入h10p+m5e，结果如下：

- `height: 10%`;  
- `margin: 5em`; 
 
**单位别名列表：** 

 - p 表示%
 - e 表示 em
 - x 表示 ex
 

**2.  附加属性** 
---

可能你之前已经了解了一些缩写，比如 `@f`，可以生成：

```css
@font-face { 
font-family:; 
  src:url();  
  }  
```

一些其他的属性，比如background-image、border-radius、font、@font-face,text-outline、text-shadow等额外的选项，可以通过“+”符号来生成，比如输入@f+，将生成： 

```css
    @font-face {  
font-family: 'FontName';  
src: url('FileName.eot');  
src: url('FileName.eot?#iefix') format('embedded-opentype'), url('FileName.woff') format('woff'),  
  url('FileName.ttf') format('truetype'),  
  url('FileName.svg#FontName') format('svg');  
 font-style: normal;  
  font-weight: normal;  
}
```

![此处输入图片的描述][11]

**3.  模糊匹配** 
---

如果有些缩写你拿不准，Emmet会根据你的输入内容匹配最接近的语法，比如输入ov:h、ov-h、ovh和oh，生成的代码是相同的： 

`overflow: hidden; ` 
 
 ![此处输入图片的描述][12]
 
 **4.  供应商前缀** 
---

如果输入非W3C标准的CSS属性，Emmet会自动加上供应商前缀，比如输入trs，则会生成： 

```css
  -webkit-transform: ; 
  -moz-transform: ;  
  -ms-transform: ;  
  -o-transform: ;  
  transform: ;  
```
 
 ![此处输入图片的描述][13]
 
你也可以在任意属性前加上“-”符号，也可以为该属性加上前缀。比如输入-super-foo：
 
```css
  -webkit-super-foo: ;  
  -moz-super-foo: ;  
  -ms-super-foo: ;  
  -o-super-foo: ; 
  super-foo: ;  
```
  
如果不希望加上所有前缀，可以使用缩写来指定，比如-wm-trf表示只加上-webkit和-moz前缀：
```
  -webkit-transform: ;  
  -moz-transform: ;  
  transform: ;  
```

 **前缀缩写如下：** 
---

 - `w` 表示 `-webkit-``
 - `m `表示 `-moz-``
 - `s` 表示 `-ms-``
 - `o` 表示 `-o-``

**5.  渐变** 
 ---

 输入lg(left, #fff 50%, #000)，会生成如下代码： 
 
```css
background-image: -webkit-gradient(linear, 0 0, 100% 0, color-stop(0.5, #fff), to(#000));
background-image: -webkit-linear-gradient(left, #fff 50%, #000);
background-image: -moz-linear-gradient(left, #fff 50%, #000);
background-image: -o-linear-gradient(left, #fff 50%, #000);
background-image: linear-gradient(left, #fff 50%, #000);
```

![此处输入图片的描述][14]

#### **三、附加功能** 
---

**生成Lorem ipsum文本** 

引用

    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero delectus.
    
![此处输入图片的描述][15]

### **四、定制** 
---

你还可以定制Emmet插件： 

 - 添加新缩写或更新现有缩写，可修改[snippets.json][16]文件
 - 更改Emmet过滤器和操作的行为，可修改[preferences.json][17]文件
 - 定义如何生成HTML或XML代码，可修改[syntaxProfiles.json][18]文件

### **五、针对不同编辑器的插件** 
---

Emmet支持的编辑器如下（链接为针对该编辑器的Emmet插件）： 

 - [Sublime Text 2][19]
 - [TextMate 1.x][20]
 - [Eclipse/Aptana][21]
 - [Coda 1.6 and 2.x][22]
 - [Espresso][23]
 - [Chocolat （通过“Install Mixin”对话框添加)][24]
 - [Komodo Edit/IDE][25] （通过Tools → Add-ons菜单添加)
 - [Notepad++][26]
 - [PSPad][27]
 - [textarea][28]
 - [CodeMirror2/3][29]
 - [Brackets][30]



**Emmet官网文档：**
---

 - [emmet插件下载中心][31]
 - [GitHub主页][32]
 - [emmet快捷键表][33]
 - [emmet文档][34]


  [1]: http://dl.iteye.com/upload/attachment/0083/2327/301ff5c9-3604-3dd3-a206-6d3516861ec4.jpg
  [2]: http://dl.iteye.com/upload/attachment/0083/2329/0070e820-1cbf-3f42-8c5b-838e5774d02b.gif
  [3]: http://dl.iteye.com/upload/attachment/0083/2331/cb250aef-3b60-3297-86ba-8c3ed36cacad.gif
  [4]: http://dl.iteye.com/upload/attachment/0083/2333/167e1956-4ac6-3b6d-9025-8bf90fee1250.gif
  [5]: http://dl.iteye.com/upload/attachment/0083/2335/47ae82f5-4fd8-36a1-9b4e-d148237537ee.gif
  [6]: http://dl.iteye.com/upload/attachment/0083/2337/ae3a8b58-244a-3680-9f0c-d0cab459fc41.gif
  [7]: http://dl.iteye.com/upload/attachment/0083/2339/363af658-650f-38d1-ad0e-9608df9d2873.gif
  [8]: http://dl.iteye.com/upload/attachment/0083/2341/cf5613ac-4198-326e-a651-a08ad206800a.gif
  [9]: http://dl.iteye.com/upload/attachment/0083/2343/a1c5f9d8-d187-3bde-895b-2e14fb428184.gif
  [10]: http://dl.iteye.com/upload/attachment/0083/2345/21a47a7c-2d38-3231-8b4b-7d15f38be57a.gif
  [11]: http://dl.iteye.com/upload/attachment/0083/2347/2c8cccf4-be54-3190-b1e7-3713717e2a78.gif
  [12]: http://dl.iteye.com/upload/attachment/0083/2349/4c2c81e2-ebba-367e-a4fd-4f667d08ca84.gif
  [13]: http://dl.iteye.com/upload/attachment/0083/2351/a68eda57-f573-343c-81b8-19e0a48c08fe.gif
  [14]: http://dl.iteye.com/upload/attachment/0083/2353/f39213f9-5d68-3728-8cf3-7964aaa02bae.gif
  [15]: http://dl.iteye.com/upload/attachment/0083/2355/87a3d500-1798-3050-b7e0-df51c94bd203.gif
  [16]: http://docs.emmet.io/customization/snippets/
  [17]: http://docs.emmet.io/customization/preferences/
  [18]: http://docs.emmet.io/customization/syntax-profilemmet.io/customization/preferences/
  [19]: https://github.com/sergeche/emmet-sublime
  [20]: https://github.com/emmetio/Emmet.tmplugin
  [21]: https://github.com/emmetio/emmet-eclipse
  [22]: https://github.com/emmetio/Emmet.codaplugin
  [23]: https://github.com/emmetio/Emmet.sugar
  [24]: https://github.com/sergeche/emmet.chocmixin
  [25]: https://github.com/emmetio/emmet/downloads
  [26]: https://github.com/emmetio/emmet/downloads
  [27]: https://github.com/emmetio/emmet/downloads
  [28]: https://github.com/emmetio/emmet/downloads
  [29]: https://github.com/emmetio/codemirror
  [30]: https://github.com/emmetio/brackets-emmet
  [31]: http://emmet.io/download/
  [32]: https://github.com/emmetio/emmet
  [33]: http://docs.emmet.io/cheat-sheet/
  [34]: http://docs.emmet.ioio/cheat-sheet/
