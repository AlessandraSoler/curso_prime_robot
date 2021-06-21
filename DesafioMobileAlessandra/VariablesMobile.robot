*** Variables ***
#Setup do device
${REMOTE_URL}              http://localhost:4723/wd/hub
${PLATFORM_NAME}           Android
${PLATFORM_VERSION}        9.0
${DEVICE_NAME}             Teste_pixel_09
${APP_PACKAGE}             com.google.android.youtube
${APP_ACTIVITY}            com.google.android.apps.youtube.app.WatchWhileActivity
${AUTOMATION_NAME}         UiAutomator2
 
#Locators Caso de Teste 01
${BANNER_ICON}              thumbnail
${BTN_SEARCH}               accessibility_id=Search
${INPUT_SEARCH}             search_edit_text
${CHANNEL_NAME}             channel_name
${PLAYLISTS}                accessibility_id=Playlists
${CHOOSE_E3}                //android.widget.TextView[@text='E3 2021'] 
${HOME_BTN}                 accessibility_id=Home
${TRENDING_BTN}             accessibility_id=Trending
${SUBSCRIPTIONS_BTN}        accessibility_id=Subscriptions
${NOTIFICATION_BTN}         accessibility_id=Notifications
${LIBRARY_BTN}              accessibility_id=Library
${LIBRARY}                  id=com.google.android.youtube:id/title

#Locators Caso de Teste 02
${BTN_ACCOUNT}              accessibility_id=Account
${BTN_SINGIN}               button
${BTN_MAIS}                 accessibility_id=Add account
${INPUT_ACCOUNT}            Sign in
${INPUT_ACCOUNT2}           class=android.widget.EditText
${BTN_NEXT}                 //android.widget.Button[@text='Next'] 
${INPUT_SENHA}              id=headingText
${SENHA}                    1234@bcd
${BTN_IAGREE}               //android.widget.Button[@text='I agree']
${BTN_ACCEPT}               //android.widget.Button[@text='ACCEPT']
${BTN_MUSIC}                accessibility_id=Music
${YOUR_CHANEL}              //android.widget.TextView[@text='Your channel']
${FLEXA}                    accessibility_id=Alessandra Duarte. Switch accounts.
${SAIR}                     id=com.google.android.youtube:id/sign_out_footer
