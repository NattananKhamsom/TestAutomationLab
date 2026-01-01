*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# Path ของบราวเซอร์และไดรเวอร์ตามโครงสร้างที่คุณแจ้งไว้ก่อนหน้า
${CHROME_BROWSER_PATH}    ${EXECDIR}${/}chrome-win64${/}chrome.exe
${CHROME_DRIVER_PATH}    ${EXECDIR}${/}chromedriver-win64${/}chromedriver.exe
${URL}    http://localhost:7272/Lab4/Registration.html

*** Keywords ***
Open Browser To Registration Page
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    ${chrome_options.binary_location}    Set Variable    ${CHROME_BROWSER_PATH}
    ${service}    Evaluate    sys.modules["selenium.webdriver.chrome.service"].Service(executable_path=r"${CHROME_DRIVER_PATH}")
    Create Webdriver    Chrome    options=${chrome_options}    service=${service}
    Go To    ${URL}

*** Test Cases ***
Scenario: Empty Firstname and Last Name
    [Documentation]    ทดสอบกรณีไม่มีช่องชื่อและนามสกุล
    # 1. เปิดหน้าเว็บ
    Open Browser To Registration Page
    
    # 2. กรอกข้อมูลตามขั้นตอน
   
	
    Input Text    id=organization    CS KKU
    Input Text    id=email    somyod@kkumail.com
    Input Text    id=phone    091-001-1234
    
    # 3. กดปุ่ม Registerป
    Click Button    id=registerButton
    
  
    
    # ปิดบราวเซอร์เมื่อเสร็จสิ้น
    [Teardown]    Close Browser