** Settings **
Library     AppiumLibrary

**Variables**
${START}    QAX

** Test Cases **
Deve realizar Cliques na Opções do Menu

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

    ${menu_item}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Clique em Botões"]
    Wait Until Element Is Visible   ${menu_item}     5
    Click Element                   ${menu_item}

    Wait Until Page Contains        Clique simples  5
    Click Text                      Clique simples
    Wait Until Page Contains        Botão clique simples
    
    Sleep   5
    
    Close Application
