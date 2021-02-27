# JS



## 연산자

```javascript
//1. string concatenation

console.log('my' + 'cat');
console.log('1' + 2);
console.log(`string literals : 1 +2 = ${1 + 2}`);
console.log("'han's \nbook");

//2. Numeric operators

console.log(1 + 1);
//- , / , * , % , **

//3. Increment and decrement operators

let counter = 2;
const preIncrement = ++counter;
console.log(`preIncrement : ${preIncrement}, counter: ${counter}`);
const postIncrement = counter++;
console.log(`postIncrement: ${postIncrement}, counter: ${counter}`);

//4. Assignment operators
let x = 3;
let y = 6; 
x += y; // x = x + y

//5. Comparison operators

// <, >, <=, >=

//6. Logical operators: || (or), && (and), ! (not)

//7. Equality

const stringFive = '5';
const numberFive = 5;

// == loose equality, with type conversion
console.log(stringFive == numberFive);
console.log(stringFive != numberFive);

// === strict equality, no type conversion, 주로 boolean 타입
console.log(stringFive === numberFive);
console.log(stringFive !== numberFive);

//object equality

const han1 = {name : 'han'};
const han2 = {name : 'han'};
const han3 = han1;
console.log(han1 == han2);
console.log(han1 === han2);
console.log(han1 === han3);

console.log('test');

console.log(0 == false);
console.log(0 === false);
console.log('' == false);
console.log('' === false);
console.log(null == undefined);
console.log(null === undefined)

//8. Conditional operators : if

const name = 'ho';
if (name === 'coder'){
    console.log('welcome');
}else if (name === 'han'){
    console.log('good');
}else {
    console.log('bye');
}

//9. Ternary operator: ?
console.log(name ==='han'? 'yes': 'no');

//10 . switch statement
const brower = 'QP';
switch (brower){
    case 'IE':
        console.log('go');
        break;
    case 'CH':
        console.log('ho');
        break;
    case 'PH':
        console.log('hi');
        break;
    default:
        console.log('all');
        break;
}

// 11. Loops

let i = 3;
while (i > 0){
    console.log(`while: ${i}`);
    i--;
}

do{
    console.log(`do while: ${i}`);
    i--;
}while(i>0);

for (i = 3; i > 0; i--){
    console.log(`for: ${i}`);
}

for (let i = 3; i > 0; i = i - 2){
    console.log(`inline: ${i}`);
}

for (let i = 0; i < 10; i++){
    for (let j = 0; j < 10; j++){
        console.log(`i: ${i}, j: ${j}`);
    }
}


for (let i = 0; i < 11; i++){
    if (i % 2 === 0){
        console.log(i)
    }else{
        continue
    }
}

for (let i = 0; i < 11; i++){
    if (i === 8){
        break
    }else{
        console.log(i)
    }
}
```



## 변수



```javascript
'use strict';
//비상식적인 문법이나 변수를 제어해주는 역할을 한다.
console.log('Hello World')


//2. VARIABLE rw(read/write)
//let (added in ES6)
{
    let name = 'han';
    console.log(name);
    name = 'hello';
    console.log(name);
}

console.log(name)


// var (don`t ever use this!)

console.log(age);
age = 4;
var age;
console.log(age);

// var hoisting = 어디에 선언했는지 상관없이 항상 제일 위로 끌어올리는 것
{
    age = 4;
    var age;
}
console.log(age);

// block scope 이 불가능하다.

// 3. constant r(read)
// 변하지 않는 값을 설정해야 한다.
// 보안 (security)
// thread safety
// reduce human mistakes

const daysInWeek = 7;
const maxNumber = 5;

//Immutable data types : premitive types, frozen objects
//Mutable data types : all objects by default are mutable in JS

//4. variable types

let a = 12;
let b = 1.2;

const infinity = 1 / 0;
const negativeInfinety = -1 / 0;
const nan = 'not a number' / 2;
console.log(infinity);
console.log(negativeInfinety);
console.log(nan);


const bigInt = 1231238129038128301283021983091n;
// 최근 추가된 것이고 뒤에 n을 붙여서 표현한다.

//5. string

const char = 'c';
const brendan = 'brendan'
console.log(`hi ${brendan}!`)
console.log(`value: ${brendan}, type: ${typeof brendan}`)


//6. boolean

const test = 3 < 1;
console.log(test)

// 7. null

let nothing = null;
console.log(nothing)

// 8. symbol 동일한 string 을 작성했어도 다른 값을 보여준다.

const symbol1 = Symbol('id');
console.log(symbol1)

// 9. dynamin typing : 동적 타입 언어

let text = 'hello';
console.log(text.charAt(0));
console.log(`value: ${text}, type: ${typeof text}`);
text = 1;
console.log(`value: ${text}, type: ${typeof text}`);
text = '7' + 5;
console.log(`value: ${text}, type: ${typeof text}`);
text = '8' / '2';
console.log(`value: ${text}, type: ${typeof text}`);
console.log(text.charAt(0)); //넘버이기 때문에 오류가 난다.


```







## 함수 기초



```javascript
//1. Fucntion
// 함수는 객체의 일종이다.
// 하나의 함수는 하나의 기능
// 이름 : 동작을 나타내는 이름으로 지을 것

function printHello(){
    console.log('Hello');
}

function log(message){
    console.log(message);
}
log("hello");

// type script

// 2. Parameters
// 


function changeName(obj){
    obj.name = 'coder';
}
const han = { name : "han"};
changeName(han);
console.log(han)

// 3. Default parameters
function showMessage(message, from='unknown'){
        console.log(`${message} by ${from}`); 
}
showMessage('Hi!')

// 4. Rest parameters
function printAll(...args){
    for (let i = 0; i < arguments.length; i++){
        console.log(args[i]);
    }
    for (const arg of args){
        console.log(arg);
    }
    args.forEach((arg) => console.log(arg));
}
printAll("han","sang","beom");


// 5. Local scope
// 밖에서는 안이 보이지 않고 안에서만 밖을 볼 수 있다.

let globalMessage = 'global'; // global variable
function printMessage(){
    let message = 'hello';
    console.log(message);
    console.log(globalMessage);
    function printAnother(){
        console.log(message);
        let chileMessage = 'hello'
    }
    //console.log(chileMessage)
}
printMessage()

// 6. Return a value
function sum(a, b){
    return a + b;
}
const result = sum(1,2);
console.log(`sum : ${sum(1,2)}`);


// 7. Early return, early exit
// 로직 많아질 때 빨리 리턴을 하라

function upgradeUser(user){
    if (user.point <= 10){
        return;
    }
}


// 1. Function expression

const print = function print(){
    console.log('print');
}
print();

const printAgain = print;
printAgain();
const sumAgain = sum;
console.log(sumAgain(2 ,3));

// 2. Callback 

function randomQuiz(answer, printYes, printNo){
    if (answer === 'love you'){
        printYes();
    }else{
        printNo();
    }
}

const printYes = function(){
    console.log('Yes');
}
const printNo = function print(){
    console.log('No');
    print();
}
randomQuiz('wrong', printYes, printNo);
randomQuiz('love you' , printYes, printNo);

// Arrow function

const simplePrint = function(){
    console.log('simpleprint');
};

const simplePrint = () => console.log('simpleprint');
const add = (a, b) => a + b;

// IIFE

(function hello(){
    console.log('IIFE');
})();

//QUIZ
// calculate(command, a, b)
// command: add, substarct, divide, multiply, remainder

function calc(command, a, b){
    switch(command){
        case '+':
            return a + b;
        case '-':
            return a - b;
        case '/':
            return a - b;
        case '*':
            return a - b;
        case '%':
            return a - b;
        default:
            throw Error('unknown command');
    }
}
console.log(calc('+', 2, 3))
```





## 함수



```javascript
//1. Fucntion
// 함수는 객체의 일종이다.
// 하나의 함수는 하나의 기능
// 이름 : 동작을 나타내는 이름으로 지을 것

function printHello(){
    console.log('Hello');
}

function log(message){
    console.log(message);
}
log("hello");

// type script

// 2. Parameters
// 


function changeName(obj){
    obj.name = 'coder';
}
const han = { name : "han"};
changeName(han);
console.log(han)

// 3. Default parameters
function showMessage(message, from='unknown'){
        console.log(`${message} by ${from}`); 
}
showMessage('Hi!')

// 4. Rest parameters
function printAll(...args){
    for (let i = 0; i < arguments.length; i++){
        console.log(args[i]);
    }
    for (const arg of args){
        console.log(arg);
    }
    args.forEach((arg) => console.log(arg));
}
printAll("han","sang","beom");


// 5. Local scope
// 밖에서는 안이 보이지 않고 안에서만 밖을 볼 수 있다.

let globalMessage = 'global'; // global variable
function printMessage(){
    let message = 'hello';
    console.log(message);
    console.log(globalMessage);
    function printAnother(){
        console.log(message);
        let chileMessage = 'hello'
    }
    //console.log(chileMessage)
}
printMessage()

// 6. Return a value
function sum(a, b){
    return a + b;
}
const result = sum(1,2);
console.log(`sum : ${sum(1,2)}`);


// 7. Early return, early exit
// 로직 많아질 때 빨리 리턴을 하라

function upgradeUser(user){
    if (user.point <= 10){
        return;
    }
}


// 1. Function expression

const print = function print(){
    console.log('print');
}
print();

const printAgain = print;
printAgain();
const sumAgain = sum;
console.log(sumAgain(2 ,3));

// 2. Callback 

function randomQuiz(answer, printYes, printNo){
    if (answer === 'love you'){
        printYes();
    }else{
        printNo();
    }
}

const printYes = function(){
    console.log('Yes');
}
const printNo = function print(){
    console.log('No');
    print();
}
randomQuiz('wrong', printYes, printNo);
randomQuiz('love you' , printYes, printNo);

// Arrow function

const simplePrint = function(){
    console.log('simpleprint');
};

const simplePrint = () => console.log('simpleprint');
const add = (a, b) => a + b;

// IIFE

(function hello(){
    console.log('IIFE');
})();

//QUIZ
// calculate(command, a, b)
// command: add, substarct, divide, multiply, remainder

function calc(command, a, b){
    switch(command){
        case '+':
            return a + b;
        case '-':
            return a - b;
        case '/':
            return a - b;
        case '*':
            return a - b;
        case '%':
            return a - b;
        default:
            throw Error('unknown command');
    }
}
console.log(calc('+', 2, 3))
```



## class



```javascript
// class : template
// object : instance of a class

// 1. class declarations

class person{
    constructor(name, age){
        this.name = name;
        this.age = age;
    }

    speak(){
        console.log(`${this.name} : hello!`);
    }
}

const han = new person('han', 20);
console.log(han.name);
console.log(han.age);


// 2. Getter and setter

class User {
    constructor(firstname, lastname, age){
        this.firstname = firstname;
        this.lastname = lastname;
        this.age = age;
    }
    get age(){
        return this._age;
    }
    set age(value){
        this._age =value < 0 ? 0 : value;
    }
}

const user1 = new User('steve', 'job', -1);
console.log(user1.age);

// 상속 & 다양성

class Shape{
    constructor(width, height, color){
        this.width = width;
        this.height = height;
        this.color = color;
    }

    draw(){
        console.log(`drawing ${this.color} color of`);
    }
    getArea(){
        return this.width * this.height
    }
}

class Rectangle extends Shape{}

class Triangle extends Shape{
    getArea(){
        return (this.width * this.height) / 2;  
    }
}
const rectangle = new Rectangle(20, 20, 'blue');
rectangle.draw();

const triangle = new Triangle(50, 50, 'red');
triangle.draw();
console.log(triangle.getArea());


// instance of

console.log(rectangle instanceof Rectangle);
console.log(triangle instanceof Rectangle);
console.log(triangle instanceof Triangle);
console.log(triangle instanceof Shape);
console.log(triangle instanceof Object);
```



## 배열



```javascript
'use strict'

//Array

// 1. 선언
const arr1 = new Array();
const arr2 = [1, 2]


// 2. index position

const fruits = ['apple', 'banana']
console.log(fruits)
console.log(fruits.length)
console.log(fruits[0]);
console.log(fruits[1]);
console.log(fruits[2]);
console.log(fruits[fruits.length-1]);

// 3. looping over an array
console.clear()
for (let i = 0; i < fruits.length; i++)
{
    console.log(fruits[i])
}

for (let fruit of fruits)
{
    console.log(fruit)
}

fruits.forEach((fruit) => console.log(fruit))

// 4. Addtion,deletion, copy
//push: add an item to the end
fruits.push("peach")
console.log(fruits)


//pop : remove an item from the end
fruits.pop();
console.log(fruits);

// unshift : add an item to the beginning
fruits.unshift("peach");
console.log(fruits)

//shift : remove an item to the beginning
fruits.shift();
console.log(fruits)

//shift, unshift 는 pop, push보다 훨씬 느리다.

// splice : remove an item by index position

fruits.push('lemon', 'lime')
console.log(fruits)
fruits.splice(1, 2, 'melon');
console.log(fruits)

// combine two arrays

const fruits2 = ['pear', 'coconut']
const newfruits = fruits.concat(fruits2);
console.log(newfruits)

// 5. searching
// find the index
// index of
console.clear();
console.log(fruits)
console.log(fruits.indexOf('apple'));

//includes
console.log(fruits.includes('coconut'));


//lastindexof
console.clear();
fruits.push('apple');
console.log(fruits);
console.log(fruits.indexOf('apple'))
console.log(fruits.lastIndexOf('apple'))


```



## 객체



```javascript
// 1. literals and property

const obj1 = {} // object literal
const obj2 = new Object(); // object constructor

function print(person)
{
    console.log(person.name);
    console.log(person.age);
}


// object { key : value } 

const ellie = { name : 'ellie', age : 4}
print(ellie)


ellie.hasjob = true;
console.log(ellie.hasjob)

delete ellie.hasjob;
console.log(ellie)


// 2. computed properties
// key 는 string 타입으로 받아야 한다.
console.log(ellie.name);
console.log(ellie['name'])
ellie['hasjob'] = true;
console.log(ellie.hasjob)

function printValue(obj, key)
{
    console.log(obj[key]);
}

printValue(ellie, 'name');
printValue(ellie, 'age');

// 3. property value shorthand
const person4 = new Person('sang', 30)
console.log(person4)

// 4. constructor function

function Person(name, age)
{
    this.name = name;
    this.age = age;
}

// 5. in operator

console.log('name' in ellie)
console.log('random' in ellie)

// 6. for...in, for...of
// for (key in obj)
console.clear();
for (key in ellie)
{
    console.log(key)
}

const array = [1,2,3,4]
// for (let i = 0; i < array.length; i++)
// {
//     console.log(array[i])
// }

for (value of array)
{
    console.log(value);
}

// 7. cloning

const user = {name : 'ellie', age: '20'};
const user2 = user;
user2.name = 'coder'
console.log(user)

const user4 = {};
Object.assign(user4, user);
console.log(user4)

const fruit1 = {color : 'red'}
const fruit2 = { color : 'blue', size: 'big'}
const mixed = Object.assign({}, fruit1, fruit2)
console.log(mixed.color)
console.log(mixed.size)
```



## JSON



```javascript
//HTTP : Hypertext Transfer Protocal
// request - response
//JSON = 데이터 포맷 Object {key : value}
//1. 텍스트 기반, 가볍다
// 서버와 클라이언트가 주고받는 언어
// object를 어떻게 변환할지

//1. Object to JSON
//stringfy(obj)
let json = JSON.stringify(['apple','banana']);
console.log(json)

const rabbit = {
    name : 'ha',
    color : 'white',
    size : null,
    birthdate : new Date(),
    jump : () => {
        console.log(`${name} can jump`);
    },
};

json = JSON.stringify(rabbit);
console.log(json);


json = JSON.stringify(rabbit, ['name', 'color']);
console.log(json);

json = JSON.stringify(rabbit, (key, value) => {
    console.log(`key :${key}, value : ${value}`);
    return key === 'name' ? 'ellie' : value;
});
console.log(json);

//2. JSON to Object

console.clear();

json = JSON.stringify(rabbit);
const obj = JSON.parse(json, (key, value) => {
    console.log(`key :${key}, value : ${value}`);
    return key === 'birthdate' ? new Date(value) : value;
});
console.log(obj);
rabbit.jump();
//obj.jump();

console.log(rabbit.birthdate.getDate());
console.log(obj.birthdate.getDate());
```



## async



### async

```javascript
//async & await

//1. async
async function fetchUser(){
    return 'ellie'
};

const user = fetchUser();
user.then(console.log)
console.log(user);


//2. await

function delay(ms){
    return new Promise(resolve => setTimeout(resolve, ms));
}

async function getApple(){
    await delay(2000);
    return 'apple';
}

async function getBanana(){
    await delay(2000);
    return 'banana';
}

async function pickFruits(){
        const applePromise = getApple();
        const bananaPromise = getBanana();
    const apple = await applePromise;
    const banana = await bananaPromise;
    return `${apple} + ${banana}`;
}

pickFruits().then(console.log);

//3. useful promise APIs

function pickAllFruits(){
    return Promise.all([getApple(), getBanana()])
    .then(fruits => fruits.join(' + '));
}

pickAllFruits().then(console.log)


function pickOnlyOne(){
    return Promise.race([getApple(), getBanana()]);
}

pickOnlyOne().then(console.log)
```



### callback

```javascript
'use strict';

//자바스크립트는 동기적이다.
// hoisting : var, function 선언들이 제일 위로 올라가는 것
console.log('1');
setTimeout(() => console.log('2'), 2000);


console.log('3');

//synchronous callback

function printImmediately(print){
    print();
}
printImmediately(() => console.log('hello'))

//asynchronous callback

function printWithDelay(print, timeout){
    setTimeout(print, timeout);
}

printWithDelay(() => console.log('async callback'), 2000);


//callback hell example

class UserStorage {
    loginUser(id, password, onSuccess, onError){
        setTimeout(() => {
            if(
                (id ==='ellie' && password ==='dream') ||
                (id ==='coder' && password ==='academy')
            ){
                onSuccess(id);
            }else{
                onError(new Error('Not Found'))
            }
        }, 2000);
    }

    getRoles(user, onSuccess, onError){
        setTimeout(() =>{
            if (user === 'ellie'){
                onSuccess({ name : 'ellie', role : 'admin'});
            }else{
                onError(new Error('no access'));
            }
        }, 1000);
    }
}

const userStorage = new UserStorage();
const id = prompt('enter your id');
const password = prompt('enter your password');
userStorage.loginUser(id, password, (user) => {
    userStorage.getRoles(user, (userwithRole) => {
        alert(`Hello ${userwithRole.name}, you have a ${userwithRole.role} role`)
    }, (error) => console.log(error))
}, (error) => {console.log(error)});
```



### promise



```javascript
'use strict';

//비동기 처리방식
//1. state : pending -> fulfilled or rejected
//producer vs consumer

//1. producer
//when new Promise is created, the executor runs automatically

const promise = new Promise((resolve, reject) => {
    // doing some heavy work(network, readfiles)
    console.log('doing something...');
    setTimeout(() => {
        resolve('ellie');
        //reject(new Error('no network'))
    }, 2000);
});


// 2. consumers : then, catch, finally
promise.then((value) => {
    console.log(value)
})
.catch(error => {
    console.log(error);
})
.finally(() => {
    console.log('finally');
});

//3. promise chaining
const fetchNumber = new Promise((resolve, reject) => {
    setTimeout(() => resolve(1), 1000);
});
fetchNumber
.then(num => num* 2)
.then(num => num * 3)
.then(num => {
    return new Promise((resolve, reject) => {
        setTimeout(() => resolve(num - 1), 1000)
    });
})
.then(num => console.log(num)) 


//4. error handling

const getHen = () =>
    new Promise((resolve, reject) => {
        setTimeout(() => resolve('chicken'), 1000);
    });

const getEgg = hen =>
    new Promise((resolve, reject) => {
        setTimeout(() => reject(new Error(` error! ${hen} => egg`)), 1000);
    });


const cook = egg =>
    new Promise((resolve, reject) => {
        setTimeout(() => resolve(`${egg} => cook`), 1000);
    });


getHen() //
.then(getEgg)
.catch(error =>{
    return 'bread';
})
.then(cook)
.then(console.log)
.catch(console.log)



```



### callback - to -promise



```javascript
class UserStorage {
    loginUser(id, password){
        return new Promise((resolve, reject) => {
            setTimeout(() => {
                if(
                    (id ==='ellie' && password ==='dream') ||
                    (id ==='coder' && password ==='academy')
                ){
                    resolve(id);
                }else{
                    reject(new Error('Not Found'))
                }
            }, 2000);
        });
    }

    getRoles(user){
        return new Promise((resolve, reject) => {
            setTimeout(() =>{
                if (user === 'ellie'){
                    resolve({ name : 'ellie', role : 'admin'});
                }else{
                    reject(new Error('no access'));
                }
            }, 1000);
        });
    }
}

const userStorage = new UserStorage();
const id = prompt('enter your id');
const password = prompt('enter your password');
userStorage
    .loginUser(id, password)
    .then(userStorage.getRoles)
    .then(user => alert(`Hello ${user.name}, you have a ${user.role} role`))
    .catch(console.log);



```

