*** Settings ***

Documentation        Desafio Mobile da PrimeExperts feito pela Alessandra Soler
Library              AppiumLibrary
Resource             ./VariablesMobile.robot
 
*** Test Cases ***
Caso de teste 01
    Abrir o Youtube
    Buscar o canal        Adrenaline
    Navegar pelo menu Playlist
    Selecionar a primeira playlist do canal
    Navegar por todos os botões da barra de menus do YouTube
 
Caso de Teste 02: Logar no YouTube
    Abrir o Youtube
    Logar no aplicativo com a conta        projetomobilealessandra@gmail.com
    Entrar no menu “Explorar”
#    Usar swipe de tela até o 10 item da tela
#    Clicar no vídeo
    Deslogar

Caso de Teste 03: Usar método Swipe na tela
    Abrir o Youtube
    Entrar no menu “Explorar”
#     Usar swipe de tela até o 10 item da tela
#     Clicar no vídeo
    Sair do Youtube

*** Keywords ***
Abrir o Youtube
    Open Application                        ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}
    ...                                     deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}
    ...                                     automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element        ${BANNER_ICON}    20
 
Buscar o canal
    [Arguments]                             ${content}
 
    Wait Until Page Contains Element        ${BTN_SEARCH}    
    Click Element                           ${BTN_SEARCH}
    Wait Until Page Contains Element        ${INPUT_SEARCH}    
    Input Text                              ${INPUT_SEARCH}    ${content}
    Press Keycode                           66
    Wait Until Page Contains Element        ${CHANNEL_NAME}
    Click Element                           ${CHANNEL_NAME}

Navegar pelo menu Playlist
    Wait Until Page Contains Element        ${PLAYLISTS}    20
    Click Element                           ${PLAYLISTS}

Selecionar a primeira playlist do canal
    Wait Until Page Contains Element        ${CHOOSE_E3}
    Click Element                           ${CHOOSE_E3}

Navegar por todos os botões da barra de menus do YouTube
    Click Element                           ${HOME_BTN}
    Click Element                           ${TRENDING_BTN}
    Click Element                           ${SUBSCRIPTIONS_BTN}
    Click Element                           ${NOTIFICATION_BTN}
    Click Element                           ${LIBRARY_BTN}
    Sleep                                   5s
    Close Application                       

Logar no aplicativo com a conta
    [Arguments]                             ${conta}   
    
    Wait Until Page Contains Element        ${BTN_ACCOUNT}    
    Click Element                           ${BTN_ACCOUNT}
    Wait Until Page Contains Element        ${BTN_SINGIN}
    Click Element                           ${BTN_SINGIN}
    Wait Until Page Contains Element        ${BTN_MAIS}
    Click Element                           ${BTN_MAIS}
    Wait Until Page Contains                ${INPUT_ACCOUNT}     30
    Click Element                           ${INPUT_ACCOUNT2}
    Input Text                              ${INPUT_ACCOUNT2}    ${conta}
    Sleep                                   10s
    Click Element                           ${BTN_NEXT}
    Sleep                                   10s
    Input Password                          ${INPUT_ACCOUNT2}    ${SENHA}   
    Click Element                           ${BTN_NEXT}
    Sleep                                   10s
    Click Element                           ${BTN_IAGREE}
    Sleep                                   20s
    Click Element                           ${BTN_ACCEPT}

Entrar no menu “Explorar”
    Wait Until Page Contains Element        ${BANNER_ICON}    20
    Click Element                           ${TRENDING_BTN}


## MEU SWIPE NÃO FUNCIONOU :(
# Usar swipe de tela até o 10 item da tela
#     Wait Until Page Contains Element        ${BTN_MUSIC}
#     Swipe                                   556    763    561    275    20
#     Swipe                                   556    763    561    275    20
#     Swipe                                   556    763    561    275    20
#     Swipe                                   556    763    561    275    20
#     Swipe                                   556    763    561    275    20
#     Swipe                                   556    763    561    275    20
#     Swipe                                   556    763    561    275    20
#     Swipe                                   556    763    561    275    20
#     Swipe                                   556    763    561    275    20
#     Swipe                                   556    763    561    275    20
 
# Clicar no vídeo
#     Sleep                               15s
#     Click Element At Coordinates        556    275


Deslogar
    Wait Until Page Contains Element        ${BTN_ACCOUNT}    
    Click Element                           ${BTN_ACCOUNT}
    Wait Until Page Contains Element        ${YOUR_CHANEL}
    Click Element                           ${FLEXA}
    Sleep                                   10s
    Click Element                           ${SAIR}
    Sleep                                   5s
    Close Application

Sair do Youtube
    Sleep                    5s
    Close Application        

     ## comando para executar no terminal robot -d .\logs .\DesafioMobileAlessandra\