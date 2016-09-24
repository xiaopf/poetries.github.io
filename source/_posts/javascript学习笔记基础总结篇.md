---
title: javascript学习笔记基础总结篇
date: 2016-09-24 10:33:00
tags: Javascript
categories: Front-End
---

### 第一课时 入门基础
---

#### **知识点**：

- 操作系统就是个应用程序
- 只要是应用程序都要占用物理内存
- 浏览器本身也是一个应用程序

- 浏览器本身只懂得解析`HTML`
- 调用浏览器这个应用程序的一个功能绘制

#### 1、javascript介绍

- `JavaScript`操作`DOM`的本质是=获取+触发+改变
- 目的：就是用来操作内存中的`DOM`节点

  - 修改`DOM`节点的属性
  - 过`javascript`语法组织逻辑代码操作DOM
  - `BOM`(window)它包含了`DOM`
  - `DOM`(document)
  - `script`脚本推荐放在最下边好处：防止因网络问题，页面加载时间长，出现空白；即便网络问题，浏览器也把`DOM`加载渲染完成，等待从服务端下载完js脚本，出现效果
  - `css`不放在最下面原因是：好比先穿好衣服在出去，浏览器先把`css`样式准备好，在加载结构层，使得页面有样子；如果放在下面，因为页面是从上往下加载，没有`css`，就剩下裸露的标签，很难看，使得用户体验不好

#### 2、基于对象的内存管理

- `javascript`就是来操作这些对象

  - 通过逻辑组织对象之间的关系和行为
  - 如何操作这些对象？通过变量引用

#### 3、变量

- 变量本质是一个空盒子，里面记录了一个内存地址，使能找到内存中的对象，保存了指向具体的实在的东西的地址

- 变量存在栈中，对象存在堆中

- 变量的意义：方便我们去操作对象
- 变量的几种引用方式
  - 指针（`C`语言中叫法）
  - 引用（`Java`）
  - 变量

- 例如：
	- `var b = document.body ` 含义：把`body`这个对象在内存中的地址放到b变量里面，变量`b`（`b`是内存地址的别名）本身也存在内存中，以后的操作是针对`body`这个地址


- 变量命名规范

  + 由字母(`a-zA-Z`)数字(`0-9`)下划线(`_`)以及美元符号(`$`)
  + 不能由数字开头
  + 命名尽量用英文并且具有一定的含义
  + 如果有多个英文单词,后面单词的首字母大写
  + 不能使用关键字
  + 首字母不要大写，大写是有特殊含义的



#### DOM在内存中的一些图示

![](https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM.png)

![](https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM1.png)

![enter description here][1]

![enter description here][2]


  [1]: https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM2.png
  [2]: https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM3.png
  
  
  ### 第二课时 
  ---
  
  
#### 回顾：

##### 1、javascript介绍

##### 2、基于对象的内存管理

- `javascript`就是来操作这些对象
    - 通过逻辑组织对象之间的关系和行为
    - 如何操作这些对象？通过变量引用

##### 3、变量

#### **知识点**：
---

#### 1、`window`作用域
---

- 只要在`script`标签中定义的变量，默认就在`window`的作用域之下
- 默认就是`window`这个对象里面写代码

#### 2、数据类型
---

##### 如何判断js中的数据类型：`typeof`、`instanceof`、 `constructor`、 `prototype`方法比较
---

- 如何判断`js`中的类型呢，先举几个例子：
```javascript
var a = "iamstring.";
var b = 222;
var c= [1,2,3];
var d = new Date();
var e = function(){alert(111);};
var f = function(){this.name="22";};
 ```
 
###### **最常见的判断方法**：`typeof`
---

```javascript
alert(typeof a)   ------------> string
alert(typeof b)   ------------> number
alert(typeof c)   ------------> object
alert(typeof d)   ------------> object
alert(typeof e)   ------------> function
alert(typeof f)   ------------> function
```

- 其中`typeof`返回的类型都是字符串形式，需注意，例如：
```javascript
alert(typeof a == "string") -------------> true
alert(typeof a == String) ---------------> false
```
- 另外`typeof `可以判断`function`的类型；在判断除`Object`类型的对象时比较方便。
 
###### **判断已知对象类型的方法**：` instanceof`
---

```javascript
alert(c instanceof Array) ---------------> true
alert(d instanceof Date) 
alert(f instanceof Function) ------------> true
alert(f instanceof function) ------------> false
```
- **注意**：`instanceof `后面一定要是对象类型，并且大小写不能错，该方法适合一些条件选择或分支。
 
###### **根据对象的`constructor`判断**：` constructor`
---
```javascript
alert(c.constructor === Array) ----------> true
alert(d.constructor === Date) -----------> true
alert(e.constructor === Function) -------> true
```

- **注意**： `constructor` 在类继承时会出错

- eg

```javascript
      function A(){};
      function B(){};
      A.prototype = new B(); //A继承自B
      var aObj = new A();
      alert(aobj.constructor === B) -----------> true;
      alert(aobj.constructor === A) -----------> false;
```
- 而`instanceof`方法不会出现该问题，对象直接继承和间接继承的都会报`true`：
```javascript
      alert(aobj instanceof B) ----------------> true;
      alert(aobj instanceof B) ----------------> true;
```
- 言归正传，解决`construtor`的问题通常是让对象的`constructor`手动指向自己：
```javascript
      aobj.constructor = A; //将自己的类赋值给对象的constructor属性
      alert(aobj.constructor === A) -----------> true;
      alert(aobj.constructor === B) -----------> false; //基类不会报true了;
 ```
 
###### **通用但很繁琐的方法**： `prototype`
---
```javascript
alert(Object.prototype.toString.call(a) === ‘[object String]’) -------> true;
alert(Object.prototype.toString.call(b) === ‘[object Number]’) -------> true;
alert(Object.prototype.toString.call(c) === ‘[object Array]’) -------> true;
alert(Object.prototype.toString.call(d) === ‘[object Date]’) -------> true;
alert(Object.prototype.toString.call(e) === ‘[object Function]’) -------> true;
alert(Object.prototype.toString.call(f) === ‘[object Function]’) -------> true;
```

- 大小写不能写错，比较麻烦，但胜在通用。
- 通常情况下用`typeof `判断就可以了，遇到预知`Object`类型的情况可以选用`instanceof`或`constructor`方法

#### Javascript的数据类型有六种（ES6新增了第七种`Symbol`）
---


- 数值（`number`）：整数和小数（比如1和3.14）
- 字符串（`string`）：字符组成的文本（比如"Hello World"）
- 布尔值（`boolean`）：true（真）和false（假）两个特定值
- `undefined`：表示 未定义 或不存在，即此处目前没有任何值
- ` null`：表示空缺，即此处应该有一个值，但目前为空
- 对象（`object`）：各种值组成的集合

- 通常，我们将数值、字符串、布尔值称为原始类型（`primitive type`）的值，即它们是最基本的数据类型，不能再细分了。而将对象称为合成类型（complex type）的值，因为一个对象往往是多个原始类型的值的合成，可以看作是一个存放各种值的容器。至于`undefined`和`null`，一般将它们看成两个特殊值


#### 内存中一共分为几种对象：
---

 - 变量
 - `DOM`对象
 - 常量
 - 自定义对象


#### 数据类型转换
---

##### **转换函数**
---

   - `toString()` 转换为字符串，在JavaScript中所有数据类型都可以转换为`string`类型

```javascript
        var n1 = 12;
        var n2 = true;
        var a = [1, 2, 3];
        var o = {};
        function f(){}
        n1.toString(); //"12"
        n2.toString(); //"true"
        a.toString(); //"1,2,3"
        o.toString(); //"[object Object]"
        f.toString(); //"function f(){}"
 ```

   - `parseInt() `解析出一个`string`或者`number`类型的整数部分，如果没有可以转换的部分，则返回`NaN`（`not a number`）

 ```javascript
        var n1 = "12";
        var n2 = "23hello";
        var n3 = "hello";
        parseInt(n1); //12
        parseInt(n2); //23
        parseInt(n3); //NaN
 ```
   - `parseFloat() `解析出一个string的浮点数部分，如果没有可以转换的部分，则返回`NaN`（not a number）

 ```javascript
        var n1 = "1.2.3";
        var n2 = "1.2hello"
        var n3 = "hello"
        parseFloat(n1); //1.2
        parseFloat(n2); //1.2
        parseFloat(n3); //NaN 
```

##### **强制类型转换**
---

  - `Boolean(value)`- 把给定的值转换成`Boolean`型

 ```javascript
        Boolean(123); //true
        Boolean(""); //false
        Boolean([]); //true
        Boolean({}); //true
        Boolean(null); //false
        Boolean(undefined); //false
 ```

  - `Number(value)`-把给定的值转换成数字（可以是整数或浮点数）

```javascript
        Number("123"); //123
        Number("123h"); //NaN
        Number(true); //1
        Number(false); //0
        Number(undefined); //NaN
        Number(null); //0
        Number([]); //0
        Number({}); //NaN
 ```
 - `String(value)`- 把给定的值转换成字符串

 ```javascript
        String(123); //"123"
        String([1,2]); //"1,2"
        String(undefined) //"undefined"
        String(null) //"null"
        String({}) //"[object Object]"
```

##### **隐式转换**
---

- 数字＋字符串：数字转换为字符串 `console.log(12+"12")`; //1212
- 数字＋布尔值：true转换为1，false转换为0 `console.log(12+true)`; //13
- 字符串＋布尔值：布尔值转换为true或false `console.log("hello"+true)`; //hellotrue
- 布尔值＋布尔值 `console.log(true+true)`; //2


##### **null和undefined**
---

- `undefined` 表示一种未知状态，声明了但没有初始化的变量，变量的值时一个未知状态。访问不存在的属性或对象`window.xxx`）方法没有明确返回值时，返回值是一个`undefined.`当对未声明的变量应用`typeof`运算符时，显示为`undefined`。
- `null`表示尚未存在的对象,`null`是一个有特殊意义的值。可以为变量赋值为null，此时变量的值为“已知状态”(不是`undefined`)，即`null`。（用来初始化变量，清除变量内容，释放内存）

```javascript
 undefined==null   //结果为true,但含义不同。
 undefined===null //false,两者类型不一致，前者为“undefined”，后者为“object”
```


#### 3、javascript脚本执行顺序
---

- 第一步定义： 分为`var`定义 和函数定义`function`
- 第二步执行： 其他所有
- 先从上往下定义完所有的后，再从上往下执行 除了`var`  `function`定义外的 其他都是执行 如：赋值 函数调用

- 在栈里面找到的，就不去堆里面找，因为栈空间小，就近原则【总之：先在栈里面找，找不到再去堆里面找】在栈里面开辟，就能找到堆里面的地址 如：`var b = function(){}`


#### 总结一下`==`运算的规则：(隐式转换)
---

- JS中的值有两种类型：原始类型(`Primitive`)、对象类型(`Object`)。

- 原始类型包括：`Undefined`、`Null`、`Boolean`、`Number`和`String`等五种。

- `Undefined`类型和`Null`类型的都只有一个值，即`undefined`和`null`；`Boolean`类型有两个值：`true`和`false`；`Number`类型的值有很多很多；String类型的值理论上有无数个。

- 所有对象都有`valueOf()`和`toString()`方法，它们继承自Object，当然也可能被子类重写

- `undefined == null`，结果是`true`。且它俩与所有其他值比较的结果都是`false`。

- `String == Boolean`，需要两个操作数同时转为`Number`。

- `String/Boolean == Number`，需要`String/Boolean`转为`Number`。

- `Object == Primitive`，需要`Object`转为`Primitive`(具体通过`valueOf`和`toString`方法)

### 第三课时
---

#### 回顾：

##### **1、window作用域**

- 只要在`script`标签中定义的变量，默认就在`window`的作用域之下
- 默认就是`window`这个对象里面写代码

##### **2、数据类型**

- `number`:数字
- `string`:字符类型，必须用引号引起来
- `boolean`:布尔类型  `true` `false`
- `null`:变量引用了一块堆中一个空的空间

- `object`:引用对象类型（存在于堆里面）
- `array`:数组类型
- `function`:函数数据类型


##### **对象数据类型：** `object`,`array`,`function`

##### **3、javascript脚本执行顺序**

- 定义 `var` `function`
- 执行 其他所有

---

#### **知识点：**
---

#### **1、运算符**

- 算术运算符(`+`,`-`,`*`,`/`,`%`,`++`,`--``)
    - 如果引用所指的地方是`null`的话，那么在运算中就会自动变成0
    - `%`运算符 如：4%5取模 模是4  7%5取模 模是7-5=2

- 字符串和数字相加的情况：

    + 左右都是数字：数字相加
    + 左右有一个字符串：字符串拼接
    + 左右边有一个`null`:null看做0
    + 左右边有一个`undefined`：结果是`NAN`（not is number）

- 赋值运算符(`=`,`-=`,`+=`,`*=`,`/=`,`%=``)

- 比较运算符(`==`,`===`,`!=`,`>`,`<`,`>=`,`<=``)
    - 先执行表达式计算再赋值
    - `==`和`!=`在比较之前首先让双方的值做隐士类型转换，`===`不转换

- 逻辑运算符(`||`,`&&`,`!`)

    - `||` 在js中和PHP中是不一样的 js中返回逻辑或的左边或右边的一个结果 PHP返回`||`或出来以后的结果即：`true` `false`
    - 特殊性（注意）---一定要记住（这个特性和其他编程语言不一样）：在js里返回不是布尔值
    - `||` 短路运算 第一个条件为真 后面不执行
    - '&&'把表达式最后一个值返回（注意这里）
    
##### **条件运符(`表达式1?表达式2:表达式3`)三元运算符**
---

 - `表达式1?表达式2:表达式3 ` 表达式1为真 返回表达式2 否则返回表达式3
 - 三元运算符 可以多层次嵌套使用

#### **2、在js中 有四种被认为是`非`**：
---

 - `undefined`
 - `null`
 - `false`
 - `0`

- 例子：`var age = prompt("温馨提示：","请输入您的年龄")||0`

- 当点击取消的时候，如果出现`undefined` `null`  `fasle`  `0` 表示非的逻辑 那么`||`就会过滤，取右边的值`0`



### 第四课时
---
#### **回顾：**

##### **1、运算符**

- 算术运算符(`+`,`-`,`*`,`/`,`%`,`++`,`--`)
- 如果`+`号左边和右边有一边是字符串类型的数据的话，这个时候就变成字符串拼接

`var str = "你好"+123;`//你好123

`var count = 2;`

`var str1 = "你叫了我第"-count+"次";`//你叫了我第2次

如果引用所指的地方是`null`的话，那么在运算中就会自动变成0

##### **2、赋值运算符**(`=`,`-=`,`+=`,`*=`,`/=`,`%=`)

- 比较运算符(`==,===,!=,>,<,>=,<=`)

    - 先执行表达式计算再赋值
    - `==`和`!=`在比较之前首先让双方的值做隐士类型转换，`===`不转换

- 逻辑运算符(`||,&&,!`)
- 条件运算符(`1>2?3:4`)

---

#### **知识点：**
---

##### **1、console.log调试程序**
---

- 开发中大量使用这个 而不用`alert`

##### **2、条件结构**
---

- `if`
- `if...else`
- `if...else if...else`

- 当通过判断返回某个值的时候，优先使用三元表达式
- 当通过判断执行`N`段逻辑代码的时候，只能用条件结构

### 第五课时
---

#### **回顾：**
---

- 1、`console.log`调试程序
- 2、条件结构
    `if`
    `if...else`
    `if...else if...else`

    - 当通过判断返回某个值的时候，优先使用三元表达式
    - 当通过判断执行`N`段逻辑代码的时候，只能用条件结构

- 3、补充逻辑表达式的执行过程


#### **知识点：**
---

##### **1、`switch`**
---

    `switch case break default` 条件   判断 退出  默认

   - a.只要匹配上一个`case`，那么它下面的所有的`case`都会执行包括`default`
   - b.`break`的意思跳出当前结构

##### **2、`for`**
---

 - 循环有三个要素

   - a.循环变量
   - b.判断（循环体）
   - c.改变循环变量
   - d.`continue`的意思结束本次循环进入下次循环


 -  `continue` 结束本次循环，继续下一次循环  当前这次循环不做 直接做下面的
 -  `break` 结束后面的循环不做了
 
### 第六课时
---

#### **回顾：**
---

##### **1、switch**
---

- `switch case break default` 条件   判断 退出  默认

    - a.只要匹配上一个`case`，那么它下面的所有的`case`都会执行包括`default`
    - b.`break`的意思跳出当前结构

##### **2、for**
---

- 循环有三个要素

    - a.循环变量
    - b.判断条件（循环体）
    - c.改变循环变量
    - d.`continue`的意思结束本次循环进入下次循环

---

#### **知识点：**
---

#### 1、while/do...while 没有谁好谁坏 只有适应场景不同
---

- 比如：先吃饭 在买单 `do..while` 用户体验高 有风险  扫雷游戏也是先体验 在问是否退出 提高体验
- 比如：先买单 在吃饭 `while` 用户体验不高

- 一般情况下面，如果条件判断是`数字的`比较`==<>`，`for`循环优先.
- 如果是`非数值相关的`比较循环，`while`优先

#### 2、function函数
---

#### 3、代码内存解析
---

#####  **闭包**
---

   - a.程序永远是先定义后执行
   - b.执行永远从上到下
   - c.函数定义的话在堆（只是一个地址而已）
   - d.函数调用的时候，就会有自己的堆和栈（`闭包`）


##### **闭包 作用域**
---

+ 记住：先定义`var`  `function`  在从上往下执行
+ 定义定义在自己的栈里面 执行在自己的堆里面
+ 运行在运行的环境中
+ 函数每调用前  只是一个地址
+ 只要调用一次函数就会动态开辟一块内存 创建一个封闭的空间 在自己的封闭的空间的栈中定义`var `在执行
+ 函数执行完 里面的东西全部销毁

```javascript
//alert(x);//9:执行弹出x,结果x没定义,错误.
alert(i);//9:执行弹出i,然而i之前已经定义,只不过没地址,因此是undefiend
var i = 10;//1:var i;    10:把常量池中10的地址赋给栈中的i
var j = "你好";//2:var j;   11:把常量池中 你好 的地址复给栈中的j
var k = z = null;//3:var k,z;  12:把堆中null的地址赋值给z和k
var m = function(){//4:var m;   5:function匿名函数  13:把匿名函数在堆中的地址赋给栈中的m
    alert(2);
}
var b = document.body;//6:var b;    14:把堆中document.body对象的地址赋给栈中的b
var f = true;//7:var f; 15:把常量池中true的地址赋给栈中的变量f
function m(){//8:function m;
    alert(1);
}
```

```javascript
function m(){
    c = 50;//在局部变量中找不到定义的c 沿着作用域链找到了全局变量的c
    alert('哈哈哈');
    //var c;
}

var c = 150; // 函数m()还未执行到 还没被销毁 此时全局c的值c=50
m();
var c = 20;//到这里一步 m()已经执行完了 函数已经销毁了  这里的c还是20
alert(c);//20

```
```javascript
function m(){
    c = 50;//在局部变量中找不到定义的c 沿着作用域链找到了全局变量的c
    alert('哈哈哈');
    function inner(){
        c = 30;
        alert('嘻嘻');
    }
    inner();//c在函数内部找不到定义 所以沿着作用域链找到了全局的c
}

var c = 20;//到这里一步 m()还没执行 函数没被销毁  这里的c是30
m();

alert(c);//30

```

#### 4、object对象
---

#### 5、面向对象的程序设计
---

- a.`function`构造器
- b.`prototype`原型
- c.`foreach`
- c.作用域
- d.继承

#### 6、API

#### 7、BOM

#### 8、DOM

#### 9、Jquery

#### 10、API

#### 一些内存图示
---

![](https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM4.png)

![](https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM5.png)

![](https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM6.png)

### 第七课时
---


#### **回顾：**
---

+ 1.`switch`

+ 2.`while/do...while`

 + 一般情况下面，如果条件判断是数字的比较`==<>`，`for`循环优先.
 + 如果是非数值相关的比较循环，`while`优先

+ 3.`function`函数

+ 4.代码内存解析

    + **闭包**

        * a.程序永远是先定义后执行
        * b.执行永远从上之下
        * c.函数定义的话在堆（只是一个地址而已）
        * d.函数调用的时候，就会有自己的堆和栈（闭包）

---

#### **知识点：**
---

#### **1、object对象**
---

+ `new`关键字代表的是新开辟一块内存空间
+ 没有被引用的内存空间，会在适当的时候被销毁

    + 两句代码含义等同

        * `var person = new Object()`;
        * `var person = {};`

+ 访问对象的属性除了用 对象引用`.属性` `key`以外，还可以使用对象引用`[属性key]`


#### **2、面向对象的程序设计**
---

+ `function`构造器

  + **共同点:**

    + 动态创建一块内存空间，闭包

  + **不同点:**

    + 函数调用是没有办法拿到空间的地址的，而且这块地址是一块临时地址，执行完函数之后，就会销毁
    + `new`开辟内存空间，把这块空间的地址返回，这块空间就有可能长期的被引用

+ `prototype`原型

    + 通过原型使通过同样一个构造器所`new（创建）`出来的对象具有相同的属性和行为
    + `prototype`本质就是一个对象

+ `foreach`

+ `this` 指代当前创建的这块内存 `this.name=name` 指代当前内存中的这个name属性 接收外界传过来的值

+ `继承`

---

#### **其他：**
---

- 函数调用后一定有返回值，没有返回值就是`undefined`

####  一些内存图示
---

![](https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM7.png)

### 第八课时
---

#### **回顾：**
---

#### **1.object对象**
---

- `new`关键字代表的是新开辟一块内存空间
- 没有被引用的内存空间，会在适当的时候被销毁

    - 两句代码含义等同

    - `var person = new Object();`
    - `var person = {};`

    - 访问对象的属性除了用 对象引用属性`key`以外，还可以使用对象引用`[属性key]`

#### **2.面向对象的程序设计**
---

- a.`function`构造器

    - 共同点:

        - 动态创建一块内存空间，闭包

    - 不同点：

        - 函数调用是没有办法拿到空间的地址的，而且这块地址是一块临时地址，执行完函数之后，就会销毁

        - `new`开辟内存空间，把这块空间的地址返回，这块空间就有可能长期的被引用

- b.`prototype`原型

    - 通过原型使通过同样一个构造器所`new`（创建）出来的对象具有相同的属性和行为
    - `prototype`本质就是一个对象

- c.`foreach`

- c.`this`

- d.继承


#### **知识点：**
---

#### **1.prototype内存解析**
---

- `prototype`是原型，是一块所有对应构造器创建的对象都共享的内存空间
- 在面向对象设计程序的时候，属性应该是对应的空间的，而功能应该是`prototype`公共空间的

#### **2.通过prototype扩展功能**
---

- 所有的构造器都是继承于`Object`构造器的，因此只要`Object`的原型里有的功能，所有的对象都有


```javascript
//多个对象的构造 以及 多个对象之间如何建立联系
function Student(name,age,sex){
    this.name = name;
    this.age = age;
    this.sex = sex;

}

function Bingqilin(name){
    this.name = name;
}

function Game(name){
    this.name = name;
}
function Hour(time){
    this.time = time;
}
Student.prototype = {

    eat:function(b){
        alert(this.name+"喜欢吃"+b.name);
    },
    mess:function(){
        alert(this.name+"的信息："+this.age+','+this.sex);
    },
    sleep:function(h){
        alert(this.name+"每天睡,"+h.time+'小时');
    },
    work:function(h){
        alert(this.name+"每天工作,"+h.time+'小时');
    },
    like:function(g){
        alert(this.name+"喜欢打,"+g.name);
    }

}
var s = new Student("小明",22,"男");

var b = new Bingqilin("黑色的冰淇淋");
s.eat(b);//小明喜欢吃黑色的冰淇淋

var g = new Game("英雄联盟");
s.like(g);//把对象的地址发送给like的参数即可访问构造函数Game的name属性

var h = new Hour(10);
s.sleep(h);
s.work(h);
```
#### **一些内存图示**
---

![](https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM8.png)

![](https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM9.png)


### 第九课时
---

#### **回顾：**
---

##### **1、prototype内存解析**
---

- `prototype`是原型，是一块所有对应构造器创建的对象都共享的内存空间
- 在面向对象设计程序的时候，属性应该是对应的空间的，而功能应该是`prototype`公共空间的

##### **2、通过prototype扩展功能**
---

- 所有的构造器都是继承于`Object`构造器的，因此只要`Object`的原型里有的功能，所有的对象都有
- 构造器在定义的时候 就默认创建了一个空的原型

##### **3、封装**
---

- 1：找对象  小头爸爸  大头儿子  饭
- 2：抽象（类，构造器）
- 3：创建对象并且建立关系（操作对象）



#### **知识点：**
---

#### 1.继承
#### 2.面向对象程序设计案例（猜拳）


#### **一些内存图示**
---

![](https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM10.png)

![](https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM11.png)

![](https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM13.png)

![](https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM12.png)

### 第十课时
---

#### **回顾：**
---

#### **1.继承**
---

- 本质就是从一个`prototype`对象中把它的功能都`copy`到另一个`prototype`对象
- 继承为什么要循环

#### **2.面向对象程序设计案例（猜拳）**
---

- `func.call（obj）`：调用func的时候，以`obj`这个对象的作用域去调用
- 改变函数在调用的时候里面闭包的作用域

- `call(obj,arg1,arg2,arg3)`;`call`第一个参数传对象，可以是`null`。参数以逗号分开进行传值，参数可以是任何类型。
`apply(obj,[arg1,arg2,arg3])`;`apply`第一个参数传对象，参数可以是数组或者`arguments `对象


#### **知识点：**
---

#### **API application program interface**
---

- 第一：遇到问题
- 第二：查资料或者学习  -> 解决问题
- 第三：记住有这个功能
- 第四：查资料（百度）

#### 常用API
---

##### 1.`String`

##### 2.`Array`

##### 3.`Math Math.random();`

##### 4.`Date`

##### 5.`Regex`



```javascript
//在这个最大的对象的原型上加一个extends方法 使得下面所有的原型 都有这个方法
 //这个原型的作用是通过迭代 复制传进来的构造器的所有的原型的方法

 Object.prototype.extends = function(parent){
     //console.log(parent.prototype);

    for(var prop in parent.prototype){
        //console.log(prop);//eat extends
        this.prototype[prop] = parent.prototype[prop];//复制传进来的构造器的所有的原型的方法给当前正在调用这个方法的对象
    }
 }

 function Person(name){
    this.name = name;
 }
 Person.prototype = {
    eat:function(){
        alert(this.name+"在吃饭");
    }
 };

 function Father(name){
    this.name = name;
 }

 Father.extends(Person);//extends方法是最大的对象Object加的方法 所有的子孙 构造器都有这个方法

 var f = new Father("小头爸爸");
 f.eat();
```



#### **一些图示**
---

![](https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM13.png)

![](https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM15.png)


### 十一课时
---

#### **回顾：**
---

##### 1.`String`

##### 2.`Math`  `Math.random()`

#### **新知识：**
---

#### 1.`Date` 日期类

#### 2.`Array`

#### 3.`Regex`

 - a.`[]`一个字符的范围
 - b.有顺序要求的
 - c.`\w==[a-zA-Z0-9_]`  `\d==[0-9]`
 - d.`{count}`设置匹配数量比如`\w{5}`
 - e.`//`的正则表达式匹配局部，`/^$/`的正则表达式是匹配全部
 - f.`()`的作用就是为了分组匹配


#### 简单的封装对象

```javascript
String.prototype.isEmail = function(){

  email = this;
  if (email.indexOf("@")!=-1&&email.indexOf(".")!=-1)
  {
    if(email.indexOf("@")<email.lastIndexOf("@")){
      alert("邮箱不合法");
    }else{
      alert("邮箱合法");
    }
  }

}
var email = "jingguanliuye@gmail.com";
email.isEmail();
```

```javascript
//===============================日历练习(方法简洁 高效)======================================



//var year = parseInt(prompt("请输入日历年份："));
//var month = parseInt(prompt("请输入日历月份："))-1;

Date.prototype.printCalendar = function(){

var year = this.getFullYear(),month = this.getMonth();
var date = new Date(year,month,1);

//alert(date.toLocaleString());
document.write("<div class='date'>"+year+"年"+(month+1)+"月</div>");
document.write("日 一 二 三 四 五 六<br />");


var day = date.getDay();
for(var i=0;i<day;i++){
  document.write('  ');
}

var count = new Date(year,month+1,0).getDate();//这里的0返回一个月的最后一天
for(var i=1;i<=count;i++){
  document.write(i+'  ');
  if((i+day)%7==0){
    document.write('<br/>');
  }
}


}
new Date(2012,2).printCalendar();
```

### 十二课时
---

#### **回顾：**
---

- 1.`Date` 期类
- 2.`Array`
- 3.`Regex`

     -  a.`[]`一个字符的范围
     -  b.有顺序要求的
     -  c.`\w==[a-zA-Z0-9_]`  `\d==[0-9]`
     -  d.`{count}`设置匹配数量比如`\w{5}`，`{c1,c2}`
     -  e.`//`的正则表达式匹配局部，`/^$/`的正则表达式是匹配全部
     -  f.`()`的作用就是为了分组匹配

---

#### **新知识：**
---

   - 1.`Regex`
       - g.`+`代表的是`1-N`个，`*`代表的是`0-N`个
       - h.`?`代表该字符要不没有要不就有一个
       - i.`.`代表的是任意字符
       - j.`\`转义符

   - 2.`BOM`
   
   
 ### 第十三课时
 ---
 
####  **回顾：**
---

- 1.Regex
     - a.`[]`一个字符的范围
     - b.有顺序要求的
     - c.`\w==[a-zA-Z0-9_]`  `\d==[0-9]`
     - d.`{count}`设置匹配数量比如`\w{5}`，`{c1,c2}`
     - e.`//`的正则表达式匹配局部，`/^$/`的正则表达式是匹配全部
     - f.`()`的作用就是为了分组匹配
     - g.+代表的是`1-N`个，`*`代表的是`0-N`个
     - h.`?`代表该字符要不没有要不就有一个
     - i.`.`代表的是任意字符
      -j.`\`转义符


#### **新知识：**

- `window` 是`Window`构造器造出来的一个对象 `alert(window instanceof Window)`
- `document` 是`Document`构造器造出来的一个对象

- 任何对象在我们的内存中他都是由某个构造器创建出来的 也就是说 有构造器一定有对应的原型prototype
- 例如：`div`是由`HTMLDivElement` 这个构造器创建的一个实例 `div = new HTMLDivElement()`  `span = new HTMLSpanElement()`

- 查看某个对象对应的构造器：`console.log();`


-  整个浏览器的实现就是一个面向对象的编程思想 一切皆是对象

#### 1.BOM 浏览器对象模型

- a.`screen` 指的不是浏览器的宽度，指的是整个电脑屏幕的分辨率
     - 可以拿到屏幕可用分辨率

- b.`navigator`
     - 可以通过`userAgent`判断当前浏览器信息

- c.`location`

   - `URL`：统一资源定位符 `Union Resource Location`

   - 可以通过`href`属性重定向（改变）页面的URL，进行页面跳转

- d.`history`
     - `go`方法能够让我们进行历史回退或者前进

- e.`frames`
     - 获得当前窗体的子页面（`iframe`）

- f.`document`
     -  `DOM`模型的核心对象

#### 2.`DOM` 文档对象模型
---

 - **`document`**

      + **功能**
         + `getElementById`   `$('#aaa')`
         + `getElementByTagName`  `$('div')`
         + `getElementsByClassName`  `$('.aaa')`
         + `getElementsByName`  只用在表单元素中

 - **`document` `object`**

      - **属性：**

         + `className`，`style`
         + `id`
         + `name`,`value`(表单元素)
         + `href`,`src`...(对应的元素)
         + `innerHTML`
         + `children`
         + `parentNode`

      + **功能方法：**

           + `setAttribute/getAttribute`
           + `appendChild`

![](https://github.com/poetries/TZ-Front-End-Note/raw/master/JS-Basic-star/images/DOM17.png)

第十四课时
---

#### **回顾：**
---

#### 1.BOM 浏览器对象模型
---

 - a.`screen` 指的不是浏览器的宽度，指的是整个电脑屏幕的分辨率
    - 可以拿到屏幕可用分辨率

 - b.`navigator`
    - 可以通过`userAgent`判断当前浏览器信息

 - c.`location`

      - `URL`：统一资源定位符 `Union Resource Location`

      - 可以通过`href`属性重定向（改变）页面的URL，进行页面跳转

 - d.`history`
    - `go`方法能够让我们进行历史回退或者前进

 - e.`frames`
            获得当前窗体的子页面（`iframe`）

 - f.`document`
    - `DOM`模型的核心对象


- 所有的`DOM`对象都是在堆内存创建的 都是有一个构造器生成的
- 查看对象的构造器器方法：
  - step1：查看标签的对象以及构造器`var body = document.body;console.log(body.toString())`
  - step2：查看对象是否是这个构造器创建出来的 `console.log(body instanceof HTMLBodyElement)`


#### **新知识：**
---

#### 1.DOM 文档对象模型
---

##### **document**
---

- 功能

     - `getElementById`：通过传入的ID，返回标识了这个ID的唯一对象的内存地址
     - `getElementsByTagName`:通过传入的标签名字，返回所有该标签对象（`HTMLCollection`）
     - `getElementsByClassName`:通过类的名字，返回所有该类的元素对象（`HTMLCollection`）
     - `createElement`:想要创建出来的元素能够绘制在页面中，那么它必须在DOM树中

   - **总结** `document`对象是DOM原型的核心对象，它是内存DOM树的根，所以它提供了很多功能让我们快速的找到DOM树中的某些DOM节点（对象）

##### **`element`**
---

 - 功能方法：（自定义属性非常灵活好用）
   - `setAttribute/getAttribute` //getAttribute获取标签的属性 --用来操作标签的属性
   - `setAttribute`设置标签的属性
   - `appendChild`:添加子元素

 - 属性：

   - `id`
   - `className`，`style`
   - `name`,`value`(只有表单元素有 其他是没有的)
   - `href`,`src`...(对应的元素)
   - `innerHTML/innerText`  `innerText`返回文本信息
   - `children`://子元素集合
   - `parentNode`//父元素


   - 总结：元素的功能属性直接可以通过元素对象`点`出来，除此意外的`自定义属性`，请通过`get/setAtribute`去操作


#### **DOM 操作：**
---

- 图片切换的相册效果
- `tab`切换效果
- 表单验证

- 特效就是`DOM`操作的具体应用 `DOM`操作就是用`js`来写`HTML`代码

- 节点/元素/标签：

  - 三种常用的节点类型：

    - 元素节点
    - 属性节点
    - 文本节点

#### **操作DOM对象：**
---

- 修改：--找到这个节点
- 删除：--找到这个节点
- 添加：--先造出一个节点 然后插入 插入到哪里？找节点来定位

- 这些都离不开节点的查找

#### **节点的查找：（最重要）**
---

 - 1、`document.getElementById`---根据`id`查找节点 [返回的是节点本身]
 - 2、`document.getElementsByTagName`--根据标签名字来查找[返回的是数组]`document.getElementsByTagName[i]`
 - 3、`document.getElemenstByName`--根据`name`属性来查找节点（一般用在表单中）[返回的是数组]`document.getElemenstByName[i]`

- **注意：**早期浏览器都认为`name`只出现在表单中 

- 因此`document.getElemenstByName`只对表单中的元素发挥作用 后来部分浏览器把`Name`属性扩展到一般的元素 如：`div` 但是IE浏览器还是只能对表单使用`byName `因此处于兼容性 我们只能对表单使用` byName`

#### `DOM`中查找节点的思路：（由大到小 个别情况 由子到父）
---

- 由大到小：（通过下面的来定位）

 
 - 1、`document.getElementById`---根据id查找节点 [返回的是节点本身]
 
 - 2、`document.getElementsByTagName`--根据标签名字来查找[返回的是数组]`document.getElementsByTagName[i]`
 
 - 3、`document.getElemenstByName`--根据`name`属性来查找节点（一般用在表单中）[返回的是数组]`document.getElemenstByName[i]`

- 如果还没有查到自己想要的节点，还可以继续根据上面已经找到的节点再次定位来查找

- **怎么继续定位？**

  - 答案：`childNodes/child`

#### **继续查找：**

- 1、查找子元素 `children[index]/childNodes`

- 2、查找父元素 `node.parentNode` -->获取父元素

- 3、查找兄弟元素 `nextSibling` `previousSibling`

- 4、`nextSibling` `previousSibling` `firstChild` `lastChild `这四个属性容易受到`空白文本`的影响 `建议不用`

```javascript
//============给Object原型加一个方法 消除文本节点对DOM操作的影响 例如：nextSibling` `previousSibling` `firstChild` `lastChild （受到换行 和文本节点影响）

Object.prototype.next = function(){
  //NodeType == 3 text的代号
  //NodeType == 1 tag的代号
  if(this.nextSibling){//判断下一个兄弟节点是否存在
  switch(this.nextSibling.nodeType){
    case 1:
      return this.nextSibling;
    case 3:
      return this.nextSibling.nextSibling;
  }
}else{
  return null;
}
console.log(div1.next().next().innerText);
```

- 5、对于查到的某个元素里面的子元素非常多 这时候还可利用`getElementsByTagname`进一步筛选
       
- **注意** 对于元素对象和`document`对象相比 元素对象只能利用`getElementsByTagName`函数 其他两个不能用


- 节点查找也是通过由大到小来定位：找到大的元素进一步细化 完全可以找到页面上任意一个元素控制他

- 子元素 不好找 就找他的父元素

- 要过滤空白文本节点，用`children`取他的文本节点

#### **DOM与节点的关系：**
---

 - **node:**

    - `childNodes[]`
    - `parentNode`
    - `firstChild`
    - `getElementsByTagName('元素标签')`
    - `lastchild`
    - `nextSibling`
    - `previousSibling`

    - `children[index]` `children` 不是`w3c`标准 但是各大浏览器兼容性很好


- 通过给原型添加方法在元素后面创建标签

- **启示**：在项目中，很多很多地方都需要一个方法但是系统没提供，这时可以通过原型扩展

```javascript
//var p = document.createElement('p');
//p.innerHTML = "this is a p";
//var child = document.getElementsByTagName('div');

//给Div的HTMLDivElement构造器原型加一个创建元素的方法 要所有的元素都有这个方法 改成 Object
HTMLDivElement.prototype.createElement = function(tagName){
  var child = document.createElement(tagName);
  this.appendChild(child);
  return child;
}
var child = document.getElementsByTagName('div')[2].createElement("p");
child.innerHTML = 'pppppp';

```


### 第十五课时
---

#### **回顾：**
---

#### 1.DOM 文档对象模型
---

##### document

- 功能

    - `getElementById`：通过传入的ID，返回标识了这个ID的唯一对象的内存地址
    - `getElementsByTagName`:通过传入的标签名字，返回所有该标签对象（`HTMLCollection`）
    - `getElementsByClassName`:通过类的名字，返回所有该类的元素对象（`HTMLCollection`）
    - `createElement`:想要创建出来的元素能够绘制在页面中，那么它必须在DOM树中

   - 总结： `document`对象是DOM原型的核心对象，它是内存DOM树的根，所以它提供了很多功能让我们快速的找到DOM树中的某些DOM节点（对象）

- `element`

    - 功能方法：（自定义属性非常灵活好用）
      - `setAttribute/getAttribute` //getAttribute获取标签的属性 --用来操作标签的属性
      - `setAttribute`设置标签的属性
      - `appendChild`:添加子元素

    - 属性：

      - `id`
      - `className`，`style`
      - `name`,`value`(只有表单元素有 其他是没有的)
      - `href`,`src`...(对应的元素)
      - `innerHTML/innerText`  innerText返回文本信息
      - `children`://子元素集合
      - `parentNode`//父元素


   - 总结：元素的功能属性直接可以通过元素对象`点`出来，除此意外的`自定义属性`，请通过`get/setAtribute`去操作


#### **新知识：**
---

#### 1.**事件（事故）基础**
---

- 白话含义：就是当一个事物遇到某个事情的时候，要做的事情

	- （事件源）
	- （事件监听名称）
	- （事件处理程序）

#### 2.常用事件

 - `onclick:`当事件源被点击的时候调用处理程序
 - `onmouseover:`鼠标进入事件
 - `onmouseout:`鼠标移出事件
 - `onmousedown:`鼠标按下去的时候
 - `onmouseup:`鼠标抬起来的时候
 - `onscroll:`当事件源滚动条滚动的时候

 - `onkeydown:`当键盘按下的时候
 - `onkeypress:`当键盘按下去的时候
 - `onkeyup:`当键盘弹上来的时候

 - `onfocus:`当事件源获得光标
 - `onblur:`当事件源失去光标
 - `onchange:`当事件源`blur`的时候内容改变了的话

#### **浏览器事件注意事项：**

- 1.以后我们不要把事件写在标签上,而使用`js`方式操作

- 2.js方式操作的话：

    + 非`IE`浏览器第一个对象就会传入`event`事件源对象
    + IE浏览器第一个对象就不会传入`event`事件源对象（`event = event||window.event`;）

    + 非`IE`浏览器的事件源属性是`target`属性（`event.target = event.target||event.srcElement`;）
    + `IE`浏6览器的事件源属性是`srcElement`属性


- 3.事件冒泡机制
- 4.案例



