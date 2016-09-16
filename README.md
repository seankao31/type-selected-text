# Guide to Creating a Shortcut for Typing Selected Text
We've all experienced those annoying moments when you manage to type a bunch of Chinese characters, only to find that you've used the wrong input method. 

**忘記切換輸入法啦~~~~~**

本指南就是為此而生。 

OS: Linux 

## 簡介

本文會幫助你設定一個快捷鍵，其功能是將你選取的文字在游標位置重新輸入一次。 

使用範例： 

1. 選取「qu/6eji3qu/6eji35/ fu42u03194wji 」 

2. 切換到新注音輸入法 

3. 按下快捷鍵 

4. Voila! 
 
在第三步，實際上你在做的事情就是把剛才選取的文字重新在鍵盤上輸入一次，不過這一次你用的是正確的輸入法。 

在第四步，你欣賞著這神奇的結果的同時，可能會發現一些惱人的自動選字錯誤。最根本的解決辦法是去學一個不需要選字的輸入法。 


至於非法的輸入，結果會因輸入法引擎而異。 


## 使用的工具

* xclip - to get selected text
* xdotool - to simulate keyboard input
* xbindkeys - to bind a shortcut to our script

## 安裝

將以下指令複製到terminal：

    $ git clone https://github.com/seankao31/type-selected-text
    $ cd type-selected-text && ./install.sh

完成！

預設的快捷鍵是Control+y，可以在 ~/.xbindkeysrc 修改。


## TODO
處理Capital Letters

