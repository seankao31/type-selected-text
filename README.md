# Guide to Creating a Shortcut for Typing Selected Text
We've all experienced those annoying moments when you manage to type a bunch of Chinese characters, only to find that you've used the wrong input method. 

**忘記切換輸入法啦~~~~~**

本指南就是為此而生。 

OS: Linux 

## 簡介

本文會帶領你設定一個快捷鍵，其功能是將你選取的文字重新輸入一次。 

使用範例： 

1. 選取「qu/6eji3qu/6eji35/ fu42u03194wji 」 

2. 切換到新注音輸入法 

3. 按下快捷鍵 

4. Voila! 
 
在第三步，實際上你在做的事情就是把剛才選取的文字重新在鍵盤上輸入一次，不過這一次你用的是正確的輸入法。 

在第四步，你欣賞著這神奇的結果的同時，可能會發現一些惱人的自動選字錯誤。最根本的解決辦法是去學一個不需要選字的輸入法。 


至於非法的輸入，結果會因輸入法引擎而異。 


## 那麼就開始吧

需要的工具有三個：
* xclip    - to get selected text
* xdotool  - to simulate keyboard input
* xbindkey - to bind a shortcut to our script

###首先來安裝工具

在terminal輸入：

    $ sudo apt-get install xclip xdotool xbindkey


###接著來寫script

用你最愛的文字編輯器vim開啟新檔案（路徑、檔名隨意）： 

    $ vim $HOME/bin/type_selected_text

或者若你不會使用vim： 

    $ gedit $HOME/bin/type_selected_text


將以下內容複製貼上： 

    #!/bin/bash

    text=$(xclip -o)
    xdotool type "$text"


儲存、退出。 



把檔案變成可執行檔（注意路徑、檔名）： 

    $ chmod +x $HOME/bin/type_selected_text



###最後來把快捷鍵搞定

先開啟（新增）一個config file： 

    $ gedit $HOME/.xbindkeysrc

將以下內容複製貼上： 

    "sleep 0.3 && bin/type_selected_text"
    Control+y

將bin/type_selected_text改成你在前幾步決定的絕對路徑、檔名；Control+y改成任何你喜歡的快捷鍵。 


儲存、退出。 

開啟xbindkeys： 

    $ xbindkeys


###完成了！ 

恭喜你啊。




## TODO
處理Capital Letters

