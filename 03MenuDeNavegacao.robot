** Settings **
Library     AppiumLibrary

**Variables**
${START}    QAX

** Test Cases **
Deve realizar Check Points e Variavel Global

    Open Application    	http://localhost:4723
...                      	platformName=Android
...                         deviceName=Android Emulator
...                         automationName=uiautomator2
...                         app=yodapp-beta.apk
...                         udid=emulator-5554
...                         autoGrantPermissions=true

    Wait Until Page Contains        ${START}     5
    Click Text                      ${START}

    ${hambuger}     Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible   ${hambuger}     5
    Click Element                   ${hambuger}

    Sleep   5
    
    Close Application
