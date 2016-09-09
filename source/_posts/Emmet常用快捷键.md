---
title: Emmet常用快捷键
date: 2016-09-09 21:00:08
tags: Emmet
categories: 工欲善其事必先利其器
---

### 基本语法

- `div+div>p>span+em^bq`

```html
<div></div>
<div>
    <p><span></span><em></em></p>
    <blockquote></blockquote>
</div>
```
- `div+div>p>span+em^^bq`

```html
<div></div>
<div>
    <p><span></span><em></em></p>
</div>
<blockquote></blockquote>
```
<!--mopre-->
- `div>(header>ul>li*2>a)+footer>p`

```html
<div>
    <header>
        <ul>
            <li><a href=""></a></li>
            <li><a href=""></a></li>
        </ul>
    </header>
    <footer>
        <p></p>
    </footer>
</div>
```
- `(div>dl>(dt+dd)*3)+footer>p`

```html
<div>
    <dl>
        <dt></dt>
        <dd></dd>
        <dt></dt>
        <dd></dd>
        <dt></dt>
        <dd></dd>
    </dl>
</div>
<footer>
    <p></p>
</footer>
```
- `ul>li.item$*5`

```html
<ul>
    <li class="item1"></li>
    <li class="item2"></li>
    <li class="item3"></li>
    <li class="item4"></li>
    <li class="item5"></li>
</ul>
```

- `h$[title=item$]{Header $}*3`

```html
<h1 title="item1">Header 1</h1>
<h2 title="item2">Header 2</h2>
<h3 title="item3">Header 3</h3>
```

- `ul>li.item$$$*5`

```html
<ul>
    <li class="item001"></li>
    <li class="item002"></li>
    <li class="item003"></li>
    <li class="item004"></li>
    <li class="item005"></li>
</ul>
```

- `ul>li.item$@-*5`

```html
<ul>
    <li class="item5"></li>
    <li class="item4"></li>
    <li class="item3"></li>
    <li class="item2"></li>
    <li class="item1"></li>
</ul>
```

- `ul>li.item$@3*5`

```html
<ul>
    <li class="item3"></li>
    <li class="item4"></li>
    <li class="item5"></li>
    <li class="item6"></li>
    <li class="item7"></li>
</ul>
```

- `form#search.wide`

```html
<form id="search" class="wide"></form>
```
- `p.class1.class2.class3`

```html
<p class="class1 class2 class3"></p>
```

- `td[rowspan=2 colspan=3 title]`

```html
<td rowspan="2" colspan="3" title=""></td>
```

---

### HTML

- **`!`**

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Document</title>
</head>
<body>
    
</body>
</html>
```

- **`a:link`**

```html
<a href="http://"></a>
```
- **`a:mail`**

```html
<a href="mailto:"></a>
```

- **` link:css`**

```html
<link rel="stylesheet" href="style.css" />
```

- **` link:favicon`**

```html
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
```

- **`link:rss`**

```html
<link rel="alternate" type="application/rss+xml" title="RSS" href="rss.xml" />
```

- **`meta:utf`**

```html
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
```

- **`script:src`**

```html
<script src=""></script>
```
- `form:get`

```html
<form action="" method="get"></form>
```
---

- **`input:hidden`,` input:h`**

```html
<input type="hidden" name="" />
```

- `input:text`, `input:t`
- `input:password,` `input:p`
- `input:checkbox`, `input:c`
- `input:radio`,` input:r`
- `input:file`, `input:f`
- `input:submit`, `input:s`
- `input:image`,` input:i`
- `input:button`, `input:b`

---

- **`option`, `opt`**

```html
<option value=""></option>
```

- `button:disabled`,` button:d`, `btn:d`

```html
<button disabled="disabled"></button>
```

- **`ifr`**

```html
<iframe src="" frameborder="0"></iframe>
```

- `btn`

```html
<button></button>
```

- **`ul+`**

```html
<ul>
    <li></li>
</ul>
```
- **`dl+`**

```html
<dl>
    <dt></dt>
    <dd></dd>
</dl>
````

- **` table+`**

```html
<table>
    <tr>
        <td></td>
    </tr>
</table>
```
- **`tr+`**

```html
<tr>
    <td></td>
</tr>
```

- **`select+`**

```html
<select name="" id="">
    <option value=""></option>
</select>
```

- **`c`**

```html
<!-- -->
```

- **`cc:ie6`**

```html
<!--[if lte IE 6]>
    ${child}
<![endif]-->
```

---

###  CSS

#### visual formating
---

- `pos:s`
position:static;
- `pos:a`
position:absolute;
- `pos:r`
position:relative;
- `pos:f`
position:fixed;
- ` t`
top:;
- `b:a`
bottom:auto;
- `l`
left:;
- `l:a`
left:auto;
- `z`
z-index:;
- `z:a`
z-index:auto;
- ` fl`
float:left;
- `fl:n`
float:none;
- `fl:l`
float:left;
-` fl:r`
float:right;
- `cl`
clear:both;
- `cl:n`
clear:none;
- `cl:l`
clear:left;
- `cl:r`
clear:right;
- `cl:b`
clear:both;
- `d`
display:block;
- `d:n`
display:none;
- `d:b`
display:block;
- `d:i`
display:inline;
- `d:ib`
display:inline-block;
- `d:itb`
display:inline-table;
- `d:tbc`
display:table-cell;
- `v`
visibility:hidden;
- `v:v`
visibility:visible;
- `v:h`
visibility:hidden;
- `ov`
overflow:hidden;
- `ov:v`
overflow:visible;
- `ov:h`
overflow:hidden;
- `ov:s`
overflow:scroll;
- `zoo, zm`
zoom:1;
- `cur:d`
cursor:default;
- `cur:ha`
cursor:hand;
- `cur:p`
cursor:pointer;

---

#### Margin & Padding

---

- `m:a`
margin:auto;
- `mt`
margin-top:;
- `mt:a`
margin-top:auto;
- `mr`
margin-right:;
- `mr:a`
margin-right:auto;
- `mb`
margin-bottom:;
- `mb:a`
margin-bottom:auto;
- `ml`
margin-left:;
- `ml:a`
margin-left:auto;
- `pt`
padding-top:;
- `pr`
padding-right:;
- `pb`
padding-bottom:;
- `pl`
padding-left:;

---

#### Font

- `fw`
font-weight:;
- `fw:n`
font-weight:normal;
- `fw:b`
font-weight:bold;
- `fw:br`
font-weight:bolder;
- `fw:lr`
font-weight:lighter;
- `fs`
font-style:${italic};
- `fs:n`
font-style:normal;
- `fz`
font-size:;
- `ff`
font-family:;
- `ff:s`
font-family:serif;
- `ff:ss`
font-family:sans-serif;
- `ff:m`
font-family:monospace;
- `ff:a`
font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
- `ff:t`
font-family: "Times New Roman", Times, Baskerville, Georgia, serif;
- `ff:v`
font-family: Verdana, Geneva, sans-serif;

---

#### Background

- `bg`
background:#000;
- `bg+`
background:#fff url() 0 0 no-repeat;
- `bg:n`
background:none;
- `bgc`
background-color:#fff;
- `bgc:t`
background-color:transparent;
- `bgi`
background-image:url();
- `bgi:n`
background-image:none;
- `bgr`
background-repeat:;
- `bgr:n`
background-repeat:no-repeat;
- `bgr:x`
background-repeat:repeat-x;
- `bgr:y`
background-repeat:repeat-y;
- `bgr:sp`
background-repeat:space;
- `bgr:rd`
background-repeat:round;
- `bga`
background-attachment:;
- `bga:f`
background-attachment:fixed;
- `bga:s`
background-attachment:scroll;
- `bgp`
background-position:0 0;
- `bgpx`
background-position-x:;
- `bgpy`
background-position-y:;
- `bgbk`
background-break:;
- `bgbk:bb`
background-break:bounding-box;
- `bgbk:eb`
background-break:each-box;
- `bgbk:c`
background-break:continuous;
- `bgcp`
background-clip:padding-box;
- `bgcp:bb`
background-clip:border-box;
- `bgcp:pb`
background-clip:padding-box;
- `bgcp:cb`
background-clip:content-box;
- `bgcp:nc`
background-clip:no-clip;
- `bgo`
background-origin:;
- `bgo:pb`
background-origin:padding-box;
- `bgo:bb`
background-origin:border-box;
- `bgo:cb`
background-origin:content-box;
- `bgsz`
background-size:;
- `bgsz:a`
background-size:auto;
- `bgsz:ct`
background-size:contain;
- `bgsz:cv`
background-size:cover;

---

#### Color

- `c`
color:#000;
- `c:r`
color:rgb(0, 0, 0);
- `c:ra`
color:rgba(0, 0, 0, .5);
- `op`
opacity:;

---

#### 其他

---

- **`·@m·`, `@media`·**

```css
@media screen {
    
}
```

- **`@i`, `@import`**

```css
@import url();
```

- **`@kf`**

```css
@keyframes identifier {
    from {  }
    to {  }
}
```
- **`@f+`**

```css
@font-face {
    font-family: 'FontName';
    src: url('FileName.eot');
    src: url('FileName.eot?#iefix') format('embedded-opentype'),
         url('FileName.woff') format('woff'),
         url('FileName.ttf') format('truetype'),
         url('FileName.svg#FontName') format('svg');
    font-style: normal;
    font-weight: normal;
}
```

- **`@f`**

```css
font-face {
    font-family:;
    src:url(|);
}
```
- **`!`**

```css
!important
```
