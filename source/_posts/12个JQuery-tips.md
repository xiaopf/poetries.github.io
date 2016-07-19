---
title: 12个JQuery-tips
date: 2016-07-20 00:35:09
tags: 
    - jQuery
    - Snippet
categories: Front-End
---

---

### 返回顶部

使用JQuery的 `animate `和 `scrollTop `方法可以创建简单地返回顶部的动画：

```javascript
// Back to top
$('a.top').click(function (e) {
  e.preventDefault();
  $(document.body).animate({scrollTop: 0}, 800);
});
```

HTML中得有一个按钮：

```html
<!-- Create an anchor tag -->
<a class="top" href="#">Back to top</a>
```
<!--more-->
可以改变 `scrollTop `的值来定位滚动条的位置。

### 图片预加载

如果页面使用了很多不是最初加载便可见的图片，有必要进行预加载：

```javascript
$.preloadImages = function () {
  for (var i = 0; i < arguments.length; i++) {
    $('img').attr('src', arguments[i]);
  }
};
$.preloadImages('img/hover-on.png', 'img/hover-off.png');
```
### 判断图片是否完全加载

有时需要图片完全加载才能进行后面的操作，下面的这段脚本可以实现：

```javascript
$('img').load(function () {
  console.log('image load successful');
});
```

你也可以通过带 `id` 或者 `class` 的 `img` 标签来判断某张特定的图片是否完全加载

### 自动修复损坏图片

如果图片损坏，可以用另外一张进行替换：

```javascript
$('img').on('error', function () {
  $(this).prop('src', 'img/broken.png');
});
```
### Hover状态的类切换

当用户的鼠标指针悬浮在一个可以点击的元素上时，你可以通过添加一个 `class `改变它的视觉效果，鼠标指针离开该元素时，就移开刚刚添加的` class`：

```javascript
$('.btn').hover(function () {
  $(this).addClass('hover');
  }, function () {
    $(this).removeClass('hover');
  });
  ```
一个更简单的方式是使用 `toggleClass`：

```javascript
$('.btn').hover(function () {
  $(this).toggleClass('hover');
});
```
### 输入框的不可编辑

有时，你想要表单的提交按钮或者文本框变的不可编辑，直到用户完成某个特定的动作，通过修改` input` 元素的 `disabled` 属性来实现：

```javascript
$('input[type="submit"]').prop('disabled', true);
```

再次调用 `prop` 方法将 `disabled `值改为 `false`，就可以更改元素状态：

```javascript
$('input[type="submit"]').prop('disabled', false);
```

### 停止链接加载

若你不想点击链接跳转到另一个页面或者重新加载页面，仅仅只想让它做点别的事情，如触发其它脚本，则需要阻止链接的默认行为:

```javascript
$('a.no-link').click(function (e) {
  e.preventDefault();
});
```

### Fade/Slide切换

`Slideing` 和 `fading `是很常用的` JQuery` 动画。如果你想要在用户产生点击事件时显示一个元素，可以用` fadeIn` 或者 `slideDown`，若要实现第一次点击显示元素而第二次点击隐藏元素的效果，可以参考下面的脚本：

```javascript
// Fade
$('.btn').click(function () {
  $('.element').fadeToggle('slow');
});
// Toggle
$('.btn').click(function () {
  $('.element').slideToggle('slow');
});
```

### 简单地手风琴

下面的这段脚本可以简单实现手风琴效果：

```javascript
// Close all panels
$('#accordion').find('.content').hide();
// Accordion
$('#accordion').find('.accordion-header').click(function () {
  var next = $(this).next();
  next.slideToggle('fast');
  $('.content').not(next).slideUp('fast');
  return false;
});
```

### 让两个Div等高

有时，需要让两`个Div`保持等高，而不管两个`Div`的内容如何：

```javascript
$('.div').css('min-height', $(.main-div).height());
var $columns = $('.column');
var height = 0;
$columns.each(function () {
  if ($(this).height() > height) {
    height = $(this).height();
  }
});
$columns.height(height);
```
在上述的示例中，会循环一个元素集合，并将元素的高度设置成元素集合中高度最高的。若要所有 `column` 保持同样地高度，则可以这样：

```javascript
var $rows = $('.same-height-columns');
$rows.each(function () {
  $(this).find('.column').height($(this).height());
});
```

### 在新的Tab/Window打开外链

在浏览器的新`Tab/Window`打开外链，并且在同一个`Tab/Window`打开同源的链接：

```javascript
$('a[href^="http"]').attr('target','_blank');
$('a[href^="//"]').attr('target','_blank');
$('a[href^="'+window.location.origin+'"]').attr('target','_self');
```

### 通过文本查找元素

利用 `JQuery` 的 `contains()` 选择器可以查找一个包含特定文本的元素，如果文本不存在，元素则隐藏：

```javascript
var search = $('#search').val();
$('div:not(:contains("'+search+'"))').hide();
```
