*** Settings ***
Library   Selenium2Library
Test Teardown   Close Browser

*** Variables ***
${URL}  https://demoapp-aa53ab63-dev.okd.180.222.156.217.xip.io/demo

*** Test Case ***
Login fail - testing
  OpenLoginURL Login
  Fill username
  Fill password
  Push button
  Can access
  
*** Keywords ***
OpenLoginURL Login
  #Open Browser  http://10.22.66.240:8088/demo/
  Open Browser   ${URL}
  #...  browser=chrome
  #...  remote_url=http://10.22.66.240:4444/wd/hub
  #...  remote_url=http://180.222.156.219:30444/wd/hub
  #...  desired_capabilities=browserName:chrome,platform:MAC,platformName:MAC
  #...  desired_capabilities=browserName:chrome,platform:LINUX,version:62.0.3202.94,seleniumProtocol: WebDriver
  
  # Run selenium on opehshift now noet support route, please use node port
#  ...  remote_url=http://45.116.216.140.xip.io:30444/wd/hub
#  ...  desired_capabilities=browserName: chrome,platformName: LINUX,resolve_ip: False,seleniumProtocol: WebDriver,version:71.0.3578.98
  #...  command_executor = RemoteConnection(cfg.selenium.web_driver, resolve_ip=False)
  #...  driver = webdriver.Remote(command_executor, desired_capabilities=capabilities)
  # Run selenium from CICD Platform
  ...  remote_url=http://selenium-hub:4444/wd/hub
  ...  desired_capabilities=browserName: chrome,platformName: LINUX, seleniumProtocol: WebDriver,version:70.0.3538.110


Fill username
  Input Text  id:user  user1
  Capture Page Screenshot 
  
Fill password 
  Input Password  id:pin  password1
  Capture Page Screenshot 
  
Push button
  Click Button  id:login
  Capture Page Screenshot 
  
Can access
  Wait Until Page Contains  ผิดนะ เข้าไม่ได้
  #Wait Until Page Contains  ผิดนะ เข้าไม่ได้ Fail
  Capture Page Screenshot 
