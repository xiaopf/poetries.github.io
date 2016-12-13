---
title: JavaScript中的大小偏移及各种属性详解
date: 2016-12-13 12:35:24
tags: JavaScript
categories: Front-End
---


> 本文整理于互联网

## 第一部分 JavaScript中的宽高属性
---

### 与window相关的宽高介绍
---

- `window.innerWidth`   内部的宽度
- `window.innerHeight`   内部的高度
- `window.outWidth`   外部的宽度
- `window.outHeight`   外部的高度
<!--more-->

-  **window.innerHeight和window.outHeight**

![](http://img.mukewang.com/58295ba00001920309590540.jpg)

- **window.innerWidth和window.outWidth**

![](http://img.mukewang.com/58295bd6000157a610960593.jpg)

- 在`window`下的宽高还有`window.screen`   
  - `window.screen`包含有关用户屏幕的信息。它包括：
  - `window.screen.width`
  - `window.screen.height`
  - `window.screen.availHeight`
  - `window.screen.availWidth`
  - `window.screenTop`
  - `window.screenLeft`

![](http://img.mukewang.com/58295c17000115db10470588.jpg)

![](http://img.mukewang.com/58295c1e0001677609840555.jpg)

### document下面client相关宽高介绍
---


- docment下有三类属性：
  - 与`client`相关的宽高
  - 与`offset`相关的宽高
  - 与`scroll`相关的宽高

**与client相关的宽高**
- 与`client`相关的宽高又有如下几个属性：
  - `document.body.clientWidth` 元素宽度（可视内容区+内边距）
  - `document.body.clientHeight`元素高度（可视内容区+内边距）
  - `document.body.clientLeft`返回的是元素周围边框的厚度,如果不指定一个边框或者不定位该元素，他的值就是0.
  - `document.body.clientTop`返回的是元素周围边框的厚度,如果不指定一个边框或者不定位该元素，他的值就是0.

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
console.log(document.body.clientLeft); //20
console.log(document.body.clientTop); //20
```

### 与offset相关宽高介绍
---

- 与`offset`相关的宽高又有如下几个属性：
  - `document.body.offsetWidth` （元素的border+padding+content的宽度）
  - `document.body.offsetHeight`（元素的border+padding+content的高度）
  - `document.offsetLeft` 基于offsetParent
  - `document.offsetTop` 基于offsetParent

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1480597-4324c5cb11b7fcd0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


了解这两个属性我们必须先了解它，什么是offsetParent
- 如果当前元素的父级元素没有进行CSS定位（position为absolute或relative）,offsetParent为border.
- 假如当前元素的父级元素中有CSS定位，offsetParent取最近的那个父级元素

### 与scroll相关宽高介绍
---

与scroll相关的宽高属性有如下几个：
  - `document.body.scrollWidth`
  - `document.body.scrollHeight`
  - `document.body.scrollLeft`
  - `document.body.scrollTop`

### Event对象的5种坐标
---

- `clientX`和`clientY`，相对于浏览器（可是区左上角0,0）的坐标
- `screenX`和`screenY`，相对于设备屏幕左上角（0,0）的坐标
- `offsetX`和`offsetY`，相对于事件源左上角（0,0）的坐标
- `pageX`和`pageY`，相对于整个网页左上角（0,0）的坐标
- `X`和`Y`，本来是IE属性，相对于用`CSS`动态定位的最内层包容元素

![](http://upload-images.jianshu.io/upload_images/1480597-41da370c1bd5e927.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![](https://camo.githubusercontent.com/3318530334bbc8f5e7ce267866c43ba72fa01f32/687474703a2f2f6f61376436647871742e626b742e636c6f7564646e2e636f6d2f626c6f672f696d616765732f3038313734323039323736363338392e6a7067)

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1480597-3f7c4f7f4e7f132a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)



![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1480597-a8b858acd89489e2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1480597-a67bf46f372b0aa8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1480597-9cbb1186a49b69e3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1480597-333b142e50eece8f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


## 第二部分 jQuery中的宽高属性
---

- **`offset()`方法**
  - 它的作用是获取元素在当前视窗的相对偏移其中返回的对象包含两个属性，即`top`和`left`，他只对可见元素有效 
- **`position()`方法**
  - 获取相对于最近的一个`position()`样式属性设置为`relative`或者`absolute`的祖父节点的相对偏移，与`offset()`一样，他返回的对象也包括两个属性，即`top`和`left`
- **`scrollTop()`方法和`scrollLeft`方法**
  - 这两个方法的作用分别是获取元素的滚动条距顶端的距离和距左侧的距离
  
