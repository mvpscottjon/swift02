//
//  func.swift
//  sevenS02
//
//  Created by user on 2017/6/7.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation


func hr(){
print("--------------------")
}

func seven10(){
    var (x,y,z) = (1,2,3)
    var a = (x,y,z);
    print(type(of:a))
    print(x); print(a.0); print(a.1); print(a.2)
}


func seven11(){
    var a: Int? = 4
    a = 5
    a = nil //宣告要加問號才可以
    print(a as Any)
    print(type(of:a))
}


func seven12(){
    var a = 3
//    a++   現在沒有＋＋的用法了
    a += 1
    a += 2
    print(a)

}


//if practice

func seven13(){
    var score : UInt = 79
    if score >= 60 {
        print("PASS")
    }else {
        print("DOWN")
}
}

//random
func seven14(){
    
    let rand = arc4random()  //0- (2^32-1)
    let score = rand % 101 //0-100
    print(score)
    
    let rand2 = arc4random_uniform(5) //not include 2    0..<2
    
    print(rand2)
    
    if score >= 60 {
        print("PASS")
    }else {
        print("DOWN")
    }
    
}



func seven15(){
    var a = "Brad"
//    var a:String  //這樣不行 除非有問號
    
    var b : String? = "III"
    b = nil
    
    print(b ?? "none")  //??  後 變數預設的值 default value
    print(b ?? "0")
    
    //    var c = a + b
    
    //    print(c)
    
//    var c = "123"
    var c = "Brad"  //string
    var d: Int? = Int(c)  // String to Int  壹定要有問號！
    print(d ?? "cant't translate")

}


func seven16(){
    print("input a score = ", terminator: "") //terminator 表結尾為空白  （原為\n換列）
    let input: String? = readLine()
    let score: UInt8 = UInt8(input ?? "0") ?? 0  //第一個為input 可能為nil 如為nil 則等於 字串0 , 第二個 ?? 0 表 將Input String轉型為 UInt8 也有可能為nil 如為nil 則等於 Int 0
    
    if score >= 90 {
        print("A")
    }else if score >= 80 {
        print("B")
    }else if score >= 70 {
        print("C")
    }else if score >= 60 {
        print("D")
    }else if score < 60 {
        print("E")
    }
    
   



//    print(type(of: input))
//    print(input)
//
    
    
}


///閏年

func seven17(){
    print("input a year = ", terminator: "") //terminator 表結尾為空白  （原為\n換列）
    let input: String? = readLine()

    let year: UInt16 = UInt16(input ?? "0") ?? 0
    
    if year % 400 == 0 {
        print("Y")
    }else if year % 100 == 0 {
        print("N")
    }else if year % 4 == 0 {
        print("Y")
    }

}


func pra17() {
    print("type here", terminator: "")
    let input: String? = readLine()
    let result:Int = Int(input ?? "0") ?? 0
    print(result)
}

// 字串

func seven18(){
    var a = "Hello"
    var b = String()  //空字串 不等於nil
    
    
    if b.isEmpty {
        print("b is empty")
    }
    
    
    for c in a.characters {
        print(c)
    }
    
    var c = a
    a = "Hello,Brad"
     print(a)
     print(c)
    print(a.characters.count)
//
//    
    print("----")
    for i in 1...a.characters.count {
        let start2 = a.index(a.startIndex, offsetBy: a.characters.count)
        let start = a.index(a.startIndex, offsetBy: i-1) //算出起始位置
        let end = a.index(a.startIndex, offsetBy:  i) //結尾
        let range = start..<end //range 變數
        
        print(a[range])    //a[index]
        
        }
    
        var e = "addscdcds123454657"
        e.insert("B", at: e.index(e.endIndex, offsetBy: -5))
        e.insert("g", at: e.endIndex)
        e.insert("z", at: e.index(e.startIndex, offsetBy: 4)) // String.Index  插到4的位置
        print(e)
    
        
    
}


//func sevenSubString() -> {
//}


func seven19(){
    for i in 1...10 {
//        i += 1  錯的  i 為let常數  i = i + 1
        print(i)
    }
    
//    print(i)  錯的  i 是區域變數
    
    
    for var j in 1...10{
        j += 1
        print(j)
    }
//
//    
    var k:Int = 100
    for _ in 1...10 {
        k += 1
        print(k)
    }
    
}

// 9*9 table
func seven99() {
    for k in 0..<2 {
        for j in 1...9 {
            for i in 2...5 {
                let newi = i + k * 4
                print("\(newi) x \(j) = \(newi * j)", terminator: "\t")
                
                
                
            }
            print()
        }
        print("------")
    }
}



// 99 pratice

func pra99() {
    
    for k in 0...1 {
    for i in 1...9 {
            for j in 2...5 {
            
                let newj = j + 4 * k
                print("\(newj) * \(i) = \(newj * i)", terminator: "\t")
            
        }
    }

    }
}






//****1+......+100
func seven20() {
    var sum = 0
    var i:Int = 1
    while  i <= 100  {
        sum += i
        i += 1
    }
    print("1 + 2 + .....+ 100 = \(sum)")
    
}


//1+...+100 prac
func pra100() {
    var sum = 0
    var i = 10  //沒給初值就不給過了
    
    while i <= 100 {

        sum += i  // sum = sum + i
        i += 1   //i = i + 1
        }
        print(sum)
    
}


//******* 先執行repeat 如果while false 則停止  如do while
func seven21() {
    var sum = 0
    var i:Int = 5
    
    repeat {
        sum += i
        i += 1
        
    }while i <= 4

    print(sum)
}


//*****質數判斷
func number() {
    for j in 0...9 {
        var i = 1
        while i <= 10 {
        var num = j * 10 + i
        //判斷質數寫這
            for k in 2..<num {
                if num % 2 == 0 {
                    print("*\(num)")
                }else {
                    
                    print(num,terminator :" ")
                    
                }
                
            }
            
            i += 1
            
        }
        print()
    }


}


func number2(){
    var j = 1
    while j <= 100{
        for i in 1...10 {
            
            if j % 2 == 0 {
            print(j)
            }
            else{
            print(j, terminator: "  ")
                j += 1}
        }
        
        
    }
    
}

