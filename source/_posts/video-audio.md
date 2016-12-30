---
title: HTML5中的视频音频使用详解
date: 2016-12-30 14:35:24
tags: 
  - HTML5
  - video
  - audio
categories: Front-End
---


## 一、video
---

### 1.1 HTML5视频
---

- 常见的视频格式
	- 视频的组成部分：画面、音频、编码格式
	- 视频编码：`H.264`、`Theora`、`VP8(google开源)`
	<!--more-->
- `HTML5`支持的视频格式：
	- `Ogg`=带有`Theora`视频编码+`Vorbis`音频编码的`Ogg`文件
	    - 支持的浏览器:`F`、`C`、`O`
	- `MEPG4`=带有`H.264`视频编码+`AAC`音频编码的`MPEG4`文件
	    - 支持的浏览器: `S`、`C`
	- `WebM`=带有`VP8`视频编码+`Vorbis`音频编码的`WebM`格式
	    - 支持的浏览器: `I`、`F`、`C`、`O`
		
- 想要`video`能自动填充慢父div的大小，只要给`video`标签加上`style="width= 100%; height=100%; object-fit: fill"`即可

### 1.2 video标签的属性
---

- `src `：视频的属性
- `poster`：视频封面，没有播放时显示的图片
- `preload`：预加载
- `autoplay`：自动播放
- `loop`：循环播放
- `controls`：浏览器自带的控制条
- `width`：视频宽度
- `height`：视频高度

```html
 <video id="media" src="http://www.sundxs.com/test.mp4" 
 controls width="400px" height="400px"></video>  
 ```
 
 
- 获取video对象

  ```
  Media = document.getElementById("media"); 
  ```
  
  
 ### 1.3 Video  API方法
 ---
 
- Media.error; //null:正常
- Media.error.code; 
	- 1.用户终止 
	- 2.网络错误 
	- 3.解码错误 
	- 4.`URL`无效


- 全屏:   
  -  ` element.webkitRequestFullScreen();`( webkit)
  -  ` element.mozRequestFullScreen();` (Firefox )
  -   `element.requestFullscreen();` (W3C )

- 退出全屏：
  -  `document.webkitCancelFullScreen()`; (webkit )
  - `document.mozCancelFullScreen()`;  (Firefox)
  -  `document.exitFullscreen();` (W3C)


#### 1.3.1 网络状态 
---

- **Media.currentSrc**; 
  - 返回当前资源的URL
- **Media.src = value**; 
  - 返回或设置当前资源的URL
- **Media.canPlayType(type)**; 
  - 是否能播放某种格式的资源
- **Media.networkState**; 
  - 0.此元素未初始化 
  - 1.正常但没有使用网络 
  - 2.正在下载数据 
  - 3.没有找到资源
- **Media.load()**; 
  - 重新加载src指定的资源
- **Media.buffered**; 
  - 返回已缓冲区域，TimeRanges
- **Media.preload**; 
  - none:不预载 
  - metadata:预载资源信息 
  - auto:

#### 1.3.2 准备状态 
---

- **Media.readyState**
- **Media.seeking**; 
  - 是否正在seeking

#### 1.3.3 回放状态
---

- **Media.currentTime = value**; 
  - 当前播放的位置，赋值可改变位置
- **Media.startTime;** 
  - 一般为0，如果为流媒体或者不从0开始的资源，则不为0
- **Media.duration**; 
  - 当前资源长度 流返回无限
- **Media.paused**; 
  - 是否暂停
- **Media.defaultPlaybackRate = value**;
  - 默认的回放速度，可以设置
- **Media.playbackRate = value**;
  - 当前播放速度，设置后马上改变
- **Media.played**; 
  - 返回已经播放的区域，TimeRanges，关于此对象见下文
- **Media.seekable**; 
  - 返回可以seek的区域 TimeRanges
- **Media.ended**; 
  - 是否结束
- **Media.autoPlay**; 
  - 是否自动播放
- **Media.loop**; 
  - 是否循环播放
- **Media.play()**; 
  - 播放
- **Media.pause()**; 
  - 暂停


#### 1.3.4 视频控制
---

- Media.controls;//是否有默认控制条
- Media.volume = value; //音量
- Media.muted = value; //静音
- TimeRanges(区域)对象
- TimeRanges.length; //区域段数
- TimeRanges.start(index) //第index段区域的开始位置
- TimeRanges.end(index) //第index段区域的结束位置

### 1.3.5 相关事件
---

```javascript
  var eventTester = function(e){
     Media.addEventListener(e,function(){
         console.log((new Date()).getTime(),e)
     },false);
 }
```
 
- eventTester("loadstart"); //客户端开始请求数据
- eventTester("progress"); //客户端正在请求数据
- eventTester("suspend"); //延迟下载
- eventTester("abort"); //客户端主动终止下载（不是因为错误引起）
- eventTester("loadstart"); //客户端开始请求数据
- eventTester("progress"); //客户端正在请求数据
- eventTester("suspend"); //延迟下载
- eventTester("abort"); //客户端主动终止下载（不是因为错误引起），
- eventTester("error"); //请求数据时遇到错误
- eventTester("stalled"); //网速失速
- eventTester("play"); //play()和autoplay开始播放时触发
- eventTester("pause"); //pause()触发
- eventTester("loadedmetadata"); //成功获取资源长度
- eventTester("loadeddata"); //
- eventTester("waiting"); //等待数据，并非错误
- eventTester("playing"); //开始回放
- eventTester("canplay"); //可以播放，但中途可能因为加载而暂停
- eventTester("canplaythrough"); //可以播放，歌曲全部加载完毕
- eventTester("seeking"); //寻找中
- eventTester("seeked"); //寻找完毕
- eventTester("timeupdate"); //播放时间改变
- eventTester("ended"); //播放结束
- eventTester("ratechange"); //播放速率改变
- eventTester("durationchange"); //资源长度改变
- eventTester("volumechange"); //音量改变

 
## 二、audio
---

### 2.1 HTML5 音频
---

- 常见的音频格式

	- 音频编码：`ACC`、`MP3`、`Vorbis`

- HTML5支持的音频格式：

  - `Ogg` 免费	支持的浏览器:`C`、`F`、`O`
  - `MP3` 收费	支持的浏览器: `I`、`C`、`S`
  - `Wav` 收费	支持的浏览器: `F`、`O`、`S`

### 2.2 audio	属性	
	
- `autoplay`	自动播放
	
- `controls`	向用户显示播放控件
	
- `loop`		循环
	
- `preload`	是否等加载完再播放
	
- `src`		要播放的音频的 URL
