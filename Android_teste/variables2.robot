*** Settings ***
Documentation     Variaveis e passo a passo do teste
Library    AppiumLibrary

*** Variables ***
#Setup do device
${REMOTE_URL}            http://localhost:4723/wd/hub
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      9.0
${DEVICE_NAME}           Teste_pixel_09
${APP_PACKAGE}           com.google.android.youtube
${APP_ACTIVITY}          com.google.android.apps.youtube.app.WatchWhileActivity
${AUTOMATION_NAME}       UiAutomator2

#Locators
${BANNER_ICON}           thumbnail

