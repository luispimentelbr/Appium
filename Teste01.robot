** Settings **
Library     AppiumLibrary

** Test Cases **
Teste Drag and Drop

    Open Application    	http://localhost:4723
...                      	platformName=Android
...                         deviceName=Android Emulator
...                         automationName=uiautomator2
...                         app=ApiDemos-debug.apk
...                         udid=emulator-5554
...                         autoGrantPermissions=true

    Click Element    accessibility_id=Views
    Click Element    accessibility_id=Drag and Drop

    swipe      654     616     641     1032
    sleep  2
    swipe      233     1053    688    1048
    sleep  2
    Close Application
