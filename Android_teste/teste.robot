*** Settings ***

Documentation    automatizando o app do youtube (PrimeExperts)
Library    AppiumLibrary
Resource    ./variables2.robot

*** Test Cases ***
Testando o Android Mobile
    Open Youtube
    Buscar o canal     Adrenaline
    Navegar pelo menu Playlist
    Selecionar a primeira playlist do canal
    Navegar por todos os botões da barra de Menus do YouTube

*** Keywords ***

Open Youtube
    Open Application                    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}
    ...                                 deviceName=${DEVICE_NAME}    appPa0ckage=${APP_PACKAGE}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}
    ...                                 automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element    ${BANNER_ICON}    20

Buscar o canal
    [Arguments]                             ${content}

    Wait Until Page Contains Element    accessibility_id=Search
    Click Element                       accessibility_id=Search
    Wait Until Page Contains Element    search_edit_text
    Input Text                          search_edit_text        ${content} 
    Press Keycode                       66
    Wait Until Page Contains Element    channel_name
    Click Element                       channel_name

Navegar pelo menu Playlist
    Wait Until Page Contains Element    accessibility_id=Playlists
    Click Element                       accessibility_id=Playlists
    
Selecionar a primeira playlist do canal
    Wait Until Page Contains Element    //android.widget.TextView[@text='E3 2021']
    Click Element                       //android.widget.TextView[@text='E3 2021']

Navegar por todos os botões da barra de Menus do YouTube
    Click Element                           accessibility_id=Home
    Click Element                           accessibility_id=Trending
    Click Element                           accessibility_id=Subscriptions
    Click Element                           accessibility_id=Notifications
    Click Element                           accessibility_id=Library
    Close Application

    ## comando para executar no terminal robot -d .\logs .\Android_teste\