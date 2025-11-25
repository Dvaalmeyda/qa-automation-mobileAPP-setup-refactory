*** Settings ***
Documentation	Simple example using AppiumLibrary
Library		AppiumLibrary
Test Teardown	Close Application

*** Variables ***
# --- Konfigurasi Device ---
${APPIUM_SERVER}	      http://127.0.0.1:4723 # Sesuaikan ip localhost
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${DEVICE_ID}		      emulator-5554 # Sesuaikan emulator Android studio
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=16} # Sesuaikan versi android

# --- Konfigurasi File path ---
${APP_PATH}		      ${CURDIR}/../drivers/ApiDemos-debug.apk
${APP_PACKAGE}		      io.appium.android.apis
${APP_ACTIVITY}		      .app.SearchInvoke

# --- Locator ---
${LOCATOR_SEARCH_TEXTBOX}     id=txt_query_prefill
${LOCATOR_SEARCH_BUTTON}      id=btn_start_search
${LOCATOR_RESULT_TEXT}	      id=android:id/search_src_text

*** Test Cases ***
Should send keys to search box and then check the value
  Open Test Application
  Input Search Query  Hello World!
  Submit Search
  Search Query Should Be Matching  Hello World!


*** Keywords ***
Open Test Application
  Open Application  http://127.0.0.1:4723  
  ...  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}
  ...  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  app=${APP_PATH}
  ...  appPackage=${APP_PACKAGE}
  ...  appActivity=${APP_ACTIVITY}

Input Search Query
  [Arguments]  ${query}
  Input Text  ${LOCATOR_SEARCH_TEXTBOX}  ${query}

Submit Search
  Click Element  ${LOCATOR_SEARCH_BUTTON}

Search Query Should Be Matching
  [Arguments]  ${text}
  Wait Until Page Contains Element  ${LOCATOR_RESULT_TEXT}
  Element Text Should Be  ${LOCATOR_RESULT_TEXT}  ${text}
