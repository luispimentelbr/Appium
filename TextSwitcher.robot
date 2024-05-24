** Settings **
Library     AppiumLibrary

** Test Cases **
Teste TextSwitcher

    Open Application    	http://localhost:4723
...                      	platformName=Android
...                         deviceName=Android Emulator
...                         automationName=uiautomator2
...                         app=ApiDemos-debug.apk
...                         udid=emulator-5554
...                         autoGrantPermissions=true

    Click Element    accessibility_id=Views
    swipe   365  1847    382     764
    swipe   446  1864    454     1172
    swipe   395  1864    399     1201
    swipe   543  1698    548     1019

    Click Element    accessibility_id=TextSwitcher
    Sleep  3

    Click Element    accessibility_id=Next
    Sleep  2
    Click Element    accessibility_id=Next
    Sleep  2
    Click Element    accessibility_id=Next
    Sleep  2
    Click Element    accessibility_id=Next
    Sleep  2   
    Click Element    accessibility_id=Next
    Sleep  2
    Click Element    accessibility_id=Next
    Sleep  2
    
    Close Application
