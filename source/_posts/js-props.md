---
title: JavaScript及jQuery中的各种宽高属性图解
date: 2016-12-13 23:35:24
tags: JavaScript
categories: Front-End
---

> 声明：本文根据慕课网学习视频整理

强烈建议打开控制台自己动手练习一遍，这样印象才会深刻

## 第一部分 JavaScript中的宽高属性
---

###  一、与window相关的宽高属性
---

#### 1.1 window.location和document.location
---
<!--more-->
- `window`对象的`location`属性引用的是`location`对象，表示该窗口中当前显示文档的`URL`
- `document`的对象的`location`属性也是引用`location`对象
- 所以 `window.location === document.location`    `//true`

#### 1.2 window.screen
---

- `window.screen`包含有关用户屏幕的信息。它包括：
  - `window.screen.width`
  - `window.screen.height`
  - `window.screen.availHeight`
  - `window.screen.availWidth`
  - `window.screenTop`
  - `window.screenLeft`


![window.screen](http://upload-images.jianshu.io/upload_images/1480597-d7979b36ca991d9c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


**1.3 与window相关的宽高**

- `window.innerWidth`   内部的宽度
- `window.innerHeight`   内部的高度
- `window.outWidth`   外部的宽度
- `window.outHeight`   外部的高度


![与window相关的宽高](http://upload-images.jianshu.io/upload_images/1480597-28fed0baaf2ff31a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 二、与document相关的宽高属性
---

#### 2.1与client相关的宽高 
---

- `document.body.clientWidth` 元素宽度（可视内容区+内边距）
- `document.body.clientHeight`元素高度（可视内容区+内边距）

该属性指的是元素的可视部分宽度和高度，即`padding+content`
如果没有滚动条，即为元素设定的宽度和高度
如果出现滚动条，滚动条会遮盖元素的宽高，那么该属性就是其本来宽高减去滚动条的宽高

example1：

```javascript
body{ 
    border: 20px solid #000; 
    margin: 10px; 
    padding: 40px; 
    background: #eee; 
    height: 350px; 
    width: 500px; 
    overflow: scroll; 
} 
console.log(document.body.clientWidth);  // 350+padding(80) = 430
console.log(document.body.clientHeight);  // 500 + padding(80) = 580
```

example2: 在div中添加文字， 指导出现滚动条

```javascript
#exp2 {
	width:200px;
	height:200px;
	background:red;
	border:1px solid #000;
	overflow:auto;
}

var test = document.getElementById("exp2");

console,log(test.clientHeight); // 200
console.log(test.clientWidth); // 
```

![window7下test.clientWidth](http://upload-images.jianshu.io/upload_images/1480597-5f4a093d6f95b47e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


- **小结clientWidth和clientHeight**

  - 无`padding`无滚动 ： `clientWidth` = 盒子的`width`
  - 有`padding`无滚动 ： `clientWidth` = 盒子的`width` + 盒子的`padding * 2`
  - 有`padding`有滚动 ： `clientWidth` = 盒子和`width` + 盒子的`padding * 2 `- 滚动轴宽度


- `document.body.clientLeft`
- `document.body.clientTop`

这两个返回的是元素周围边框的厚度，如果不指定一个边框或者不定位该元素，它的值就是0

例：

```javascript
body{ 
    border: 20px solid #000; 
    margin: 10px; 
    padding: 40px; 
    background: #eee; 
    height: 350px; 
    width: 500px; 
    overflow: scroll; 
} 
console.log(document.body.clientLeft);  // 20
console.log(document.body.clientTop);  // 20
```

**小结clientLeft和clientTop**

- 这一对属性是用来读取元素的`border`的宽度和高度的
  - `clientTop = border-top`
  - `clientLeft = border-left`

#### 2.2 与offset相关的宽高 
---

- **document.body.offsetWidth（元素的border+padding+content的宽度）**
- **document.body.offsetHeight（元素的border+padding+content的高度）**

该属性和其内部的内容是否超出元素大小无关，只和本来设定的border以及width和height有关

例：

```javascript
body{ 
    border: 20px solid #000; 
    margin: 10px; 
    padding: 40px; 
    background: #eee; 
    height: 350px; 
    width: 500px; 
    overflow: scroll; 
} 
console.log(document.body.offsetWidth);  // 470 = padding*2 + 350 + border*2
console.log(document.body.offsetHeight);  // 620 = padding*2 + 500 + border*2
```

**小结offsetWidth和offsetHeight**

- 无`padding`无滚动无`border`
  - offsetWidth = clientWidth = 盒子的宽度
- 有`padding`无滚动有`border`
  - offsetWidth = 盒子的宽度 + 盒子padding*2 + 盒子边框*2 = clientWidth + 边框宽度*2
- 有`padding`有滚动，且滚动是显示的，有`border`
  - offsetWidth = 盒子宽度 + 盒子padding*2 + 盒子边框*2 = clientWidth + 滚动轴宽度 + 边框宽度*2

---

- **document.offsetLeft **
- **document.offsetTop **

了解这两个属性我们必须先了解它，什么是`offsetParent`

- 如果当前元素的父级元素没有进行`CSS`定位（`position`为`absolute`或`relative`）,`offsetParent`为`body.`
- 假如当前元素的父级元素中有`CSS`定位，`offsetParent`取最近的那个父级元素

**offsetLeft的兼容性问题：**

- 在`IE6/7`中
  - `offsetLeft` = offsetParent的padding-left + 当前元素的margin-left

- 在`IE8/9/10`以及`chrome`中
  - `offsetLeft` = offsetParent的margin-left + offsetParent的border宽度 + offsetParent的padding-left + 当前元素的margin-left

- 在`FireFox`中
  - `offsetLeft` = offsetParent的margin-left + 当前元素的margin-left + offsetParent的padding-left


例：

```javascript
body{ 
    border: 20px solid #000; 
    margin: 10px; 
    padding: 40px; 
    background: #eee; 
    height: 350px; 
    width: 500px; 
    overflow: scroll; 
} 

#exp {
   width:400px;
   height:200px;
   padding:20px;
   margin:10px;
   background:red;
   border:20px solid #000;
   overflow:auto;
}
var div = document.getElementById("exp");

```


- 在IE8/9/10以及chrome中：
  - div.offsetLeft  = 本身的margin10 + 父级元素的padding40 + margin10 + border20 = 80
  - div.offsetTop = 本身的margin10 + 父级元素的padding40 + margin10 + border20 = 80

- 在FireFox：（相比chrome中少了border）
  - div.offsetLeft  = 本身的margin10 + 父级元素的padding40 + margin10 = 60
  - div.offsetTop = 本身的margin10 + 父级元素的padding40 + margin10 = 60

- 在IE6/7中：（相比在FireFox，不但少了border还少了父级元素的margin）
  - `div.offsetLeft`  = 本身的`margin10` + 父级元素的`padding40` = 50
  - `div.offsetTop` = 本身的`margin10` + 父级元素的`padding40` = 50


#### 2.3与scroll相关的宽高 (实际项目中用的最多)
---

- **document.body.scrollWidth**
- **document.body.scrollHeight**


document.body的scrollWidth和scrollHeight与div的scrollWidth和scrollHeight是有区别的

例：

```javascript
body{ 
    border: 20px solid #000; 
    margin: 10px; 
    padding: 40px; 
    background: #eee; 
    height: 350px; 
    width: 500px; 
    overflow: scroll; 
}

document.body.scrollHeight; // 
document.body.scrollWidth; //
```

- 当给定宽高小于浏览器窗口的宽高
  - scrollWidth = 通常是浏览器窗口的宽度
  - scrollHeight = 通常是浏览器窗口的高度

- 当给定宽高大于浏览器窗口的宽高，且内容小于给定宽高的时候
  - scrollWidth = 给定宽度 + 其所有的padding + margin + border
  - scrollHeight = 给定高度 + 其所有的padding + margin + border

- 当给定宽高大于浏览器窗口宽高，且内容大于给定宽高
  - scrollWidth = 内容宽度 + 其所有的padding + margin + border
  - scrollHeight = 内容高度 + 其所有的padding + margin + border


**在某div中的scrollWidth和scrollHeight**

- 无滚动轴时：
  - scrollWidth = clientWidth = 盒子宽度 + 盒子padding*2 


![无滚动轴时](http://upload-images.jianshu.io/upload_images/1480597-1370209704289653.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 有滚动轴时：
  - scrollWidth = 实际内容的宽度 + padding*2
  - scrollHeight = 实际内容的高度 + padding*2


![有滚动轴时](http://upload-images.jianshu.io/upload_images/1480597-f2e4e49734f8ea46.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


- **document.body.scrollLeft**
- **document.body.scrollTop**

与前面不同的是，这对属性是可读写的，指的是当元素其中的超出其宽高的时候，元素被卷起来的高度和宽度

```javascript
#exp {
   width:400px;
   height:200px;
   padding:20px;
   margin:10px;
   background:red;
   border:20px solid #000;
   overflow-y:scroll;
}

var mydiv = document.getElementById("exp");

mydiv.scrollTop ;  //默认情况下是0 
mydiv.scrollLeft ; //默认情况下是0 

//可以改写它

mydiv.scrollTop = 20;
console.log(mydiv.scrollTop)

```


![scrollTop和scrollLeft  ](http://upload-images.jianshu.io/upload_images/1480597-8a31ecd4fd0a59a9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

**obj.style.width和obj.style.height**

对于一个`DOM`元素，它的`style`属性返回的是一个对象，这个对象的任意一个属性是可读写的，`style.width`等于`css`属性中的宽度。`style.height`等于`css`属性中的高度

#### 2.4 documentElement和body的关系
---

是父子级的关系

```javascript
body{ 
    border: 20px solid #000; 
    margin: 10px; 
    padding: 40px; 
    background: #eee; 
    height: 350px; 
    width: 500px; 
    overflow: scroll; 
}

#exp {
   width:400px;
   height:200px;
   padding:20px;
   margin:10px;
   background:red;
   border:20px solid #000;
   overflow-y:scroll;
}

console.log(document); //document
console.log(document.documentElement); //html
console.log(document.body); //body
```

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1480597-a0840d36969a6ca9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- 兼容问题推荐使用 获取浏览器窗口可视区域大小

```javascript
document.body.clientWidth || document.documentElement.clientWidth;
document.body.clientHeight || document.documentElement.clientHeight;
```

### 三、Event对象的5种坐标
---

![Event对象的5种坐标](http://upload-images.jianshu.io/upload_images/1480597-3dfa83edaa181ab2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

例：

```html
<div id="example" 
style="width: 200px;height: 200px;background: red;margin: 100px auto;"></div>
```

```javascript
var example = document.getElementById("example");
example.onclick = function(e){
	console.log("clientX "+e.clientX + " : " + " clientY "+e.clientY);
	console.log("screenX "+e.screenX + " : " + " screenY "+e.screenY);
	console.log("offsetX "+e.offsetX + " : " + " offsetY "+e.offsetY);
	console.log("pageX "+e.pageX + " : " + " pageY "+e.pageY);
	console.log("x "+e.x + " : " + " y "+e.y);
}
```

![Event对象的5种坐标](http://upload-images.jianshu.io/upload_images/1480597-8596ee9ee7d11e15.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)




### 四、js中的宽高属性总结
---

![](http://upload-images.jianshu.io/upload_images/1480597-41da370c1bd5e927.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![](https://camo.githubusercontent.com/3318530334bbc8f5e7ce267866c43ba72fa01f32/687474703a2f2f6f61376436647871742e626b742e636c6f7564646e2e636f6d2f626c6f672f696d616765732f3038313734323039323736363338392e6a7067)

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1480597-3f7c4f7f4e7f132a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![document相关的宽高](http://upload-images.jianshu.io/upload_images/1480597-b2343bbf8a94bf8e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


## 第二部分 jQuery中的宽高属性
---

- **`offset()`方法**
  - 它的作用是获取元素在当前视窗的相对偏移其中返回的对象包含两个属性，即`top`和`left`，他只对可见元素有效 
- **`position()`方法**
  - 获取相对于最近的一个`position()`样式属性设置为`relative`或者`absolute`的祖父节点的相对偏移，与`offset()`一样，他返回的对象也包括两个属性，即`top`和`left`
- **`scrollTop()`方法和`scrollLeft`方法**
  - 这两个方法的作用分别是获取元素的滚动条距顶端的距离和距左侧的距离
  



---

- [慕课网视频地址-强烈建议不熟悉这些属性的看一遍](http://www.imooc.com/learn/608)