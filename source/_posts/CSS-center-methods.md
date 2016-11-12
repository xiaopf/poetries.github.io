---
title: CSS居中解决方案
date: 2016-11-12 17:55:24
tags: 
    - CSS
    - 居中
categories: Front-End
---


本文所有的结构均采用如下：

- `HTML`

```html
<div class="parent">
	<div class="child">DEMO</div>
</div>
```
- `css`

```css
	.parent{background:#ddd;}
	.child{background:#666;color:#fff;}
```

<!--more-->

### 水平居中方案
---

#### 方案一：`text-align +  inline-block`
---

```css

	.parent{
		text-align: center;
	}
	.child{
		display: inline-block;
	}
```
	
#### 方案二：`margin：0 auto`
---

```css
	.child{
		display: table;
		margin: 0 auto;
	}
```

#### 方案三：`absolute+transform)`
---

```css
	.parent{
		position: relative;
	}
	.child{
		position: absolute;
		left: 50%;
		transform: translateX(-50%);
	}
```
#### 方案四：`justify-content`
---

```css
	.parent{
		display: flex;
		justify-content: center;
	}
	.child{
		margin: 0 auto;
	}
```

### 垂直居中
---

#### 方案一：`absolute+transform`
---

```css
	.parent{width:4em;height:500px;}
	.child{width:100%;}

	.parent{
		position: relative;
	}
	.child{
		position: absolute;
		top: 50%;
		left:50%;
		transform: translateY(-50%,50%);
	}
```


#### 方案二：`flex+align-items+justify-content`
---

```css
	.parent{width:4em;height:500px;}
	.child{width:100%;}

	.parent{
		display: flex;
		align-items: center;
		justify-content:center;
	}
```

#### 方案四：`inline-block+text-align+table-cell+vertical-align`
---

```css
	.parent{
		text-align:center;
		display:table-cell;
		vertical-align:middle;
	}
	.child{
		display:inline-block;
	}
```