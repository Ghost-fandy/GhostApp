//
//  main.swift
//  SwiftBasic
//
//  Created by Fandy on 15/8/2.
//  Copyright (c) 2015年 Fandy. All rights reserved.
//

import Foundation

//println("Hello, World!")

var a = 1
var b = 2

let c = a+b //常量由let指定

//指定变量类型，可以使用如下方式

var i:Int = 10

var str:String = "hello world"

//println(str)

//字符串连接
var title = "Hi fandy"

var content = "your girl friend is comming soon , and you will cost "

var cost = 2000

var mail = "\(title) \(content) \(cost)"

//println(mail)

//swift 数组

var arr = ["hi fandy","no use in \'",20,2.3]

var arr1 = []   //空数组

var arr2 = [String]()   //只能存放字符串的数组

//println(arr)

//字典，类似C++的map的数据结构,key:value结构

var dict = ["name":"fandy","age":"22"]

dict["sex"] = "female"

//println(dict)

for index in 1...100{
    arr.append("item \(index)")
}

// for循环
//for val in arr{
//    println(val)
//}

//while循环

//var id = 0
//while id < arr.count {
//    println(arr[id])
//    id++
//}

//func 返回多个值

func getNums()->(Int,String){
    return (2,"hello")
}

var (d,e) = getNums()

//println("\(d),\(e)")


//面向对象

class Hi{
    func sayHi(){
        println("say hi")
    }
}

var hi = Hi()
hi.sayHi()


class Hello:Hi{
    var _name:String
    
    init(name:String) {
        
        self._name = name
        
    }
    
    override func sayHi() {
        //执行父类的方法，使用super关键字
        super.sayHi()
        println("say hello,\(self._name)")
    }
    
    class func static_func(){
        println("this is a static func")
    }
    
}

//动态扩展类方法

extension Hello{
    func sayHaHa(){
        println("haha")
    }
}

var hello = Hello(name: "Fandy")
//hello.sayHi()
//
//Hello.static_func()
//
//hello.sayHaHa()


//接口

protocol people{
    func getName()->String
}

class Man:people{
    func getName() -> String {
        return "Fandy"
    }
}

var m = Man()
println("\(m.getName())")







