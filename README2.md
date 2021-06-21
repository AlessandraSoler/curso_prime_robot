Comandos

"adbExecTimeout": 50000

Comando para o appium
{
  "platformName": "Android",
  "platformVersion": "9.0",
  "deviceName": "Pixel_4_API_30",
  "appPackage": "com.google.android.youtube",
  "appActivity": "com.google.android.apps.youtube.app.WatchWhileActivity",
  "automationName": "UiAutomator2"
}

https://appium.io/docs/en/writing-running-appium/caps/

https://appium.io/docs/en/about-appium/intro/

adb shell am start -W -n com.myfixedpackage/.myfixedactivity.MainActivity -S -a android.intent.action.MAIN -c android.intent.category.LAUNCHER -f 0x10200000
•adb devices
•adb shell “dumpsys window windows | grep -E 'mCurrentFocus|mFocusedApp’”
•emulator @nome_do_device
•emulator –list-avds

o meu fica emulator @Teste_pixel_09


----- comandos robot selenium

Select From List By Index

Preencher os dados obrigatórios
    Wait Until Element Is Visible    xpath=//input[contains(@name,'customer_firstname')]    20
    Input Text    xpath=//input[contains(@name,'customer_firstname')]    Name
    Input Text    xpath=//input[contains(@name,'customer_lastname')]    Sobrenome
    Input Text    xpath=//input[contains(@type,'password')]    Password
    Input Text    xpath=//input[@name='firstname']    AdressName
    Input Text    xpath=//input[@name='lastname']    AdressLast
    Input Text    xpath=//input[contains(@name,'address1')]    Endereço rua 1
    Input Text    xpath=//input[contains(@name,'city')]    Cidade
    Select From List By Index    xpath=//select[@name='id_state'][contains(@id,'state')]    1
    Input Text    xpath=//input[contains(@id,'postcode')]    00000
    Input Text    xpath=//input[@type='text'][contains(@id,'mobile')]    999999999
    Press Keys    xpath=//input[@type='text'][contains(@id,'mobile')]     TAB

Select From List By Label    id=id_state    Alabama

Set Focus To Element            id=id_state
    ### No firefox ocorreu problema ao achar o listbox State, então coloquei um if para esperar
    ### pelo elemento quando for firefox
    Run Keyword If    '${BROWSER}'=='firefox'  Wait Until Element Is Visible   id=id_state
    Select From List By Index       id=id_state              9

Select From List By Index    xpath=//select[@name='id_state'][contains(@id,'state')]    1

Execute JavaScript       window.scrollTo(0,2000)

${URL}    http://automationpractice.com

Element Should Contain    css=td.cart_description p.product-name a    ${PRODUTO}

Sleep    10s

Como posso usar CSS Selector? td.cart_description p.product-name 
 Daí cristian vc pass apro robot assim: css=td.cart_description p.product-name

