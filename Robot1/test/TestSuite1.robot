*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
MyFirstTest
    Log     Hello World...
    
FirstSeleniumTest
    #from selenium import webdriver
    #browser = webdriver.Firefox()
    Open Browser      https://google.com    chrome
    #Open Browser      https://google.com    ${browser}
    Set Browser Implicit Wait    5
    Input Text        name=q     Joao 3:16
    Press Keys        name=q     ENTER
    #Click Button      name=btnK          
    Sleep    2    
    Close Browser
    Log    Teste Completo    

SimpleLoginTest
    [Documentation]    This is a simple login test
    Open Browser        ${URL}  firefox
    Set Browser Implicit Wait    5
    logarUSER
    Click Element   id=welcome
    Click Element   link=Logout
    Sleep    3    
    Close Browser
    Log     Teste Completo  
    Log     This test was executed by %{username} in %{os}
 

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}    username=Admin    password=admin123



*** Keywords ***
logarUSER
    #Input Text      id=txtUsername    Admin
    Input Text      id=txtUsername    @{CREDENTIALS}[0]
    #Input Password  id=txtPassword    admin123
    Input Password  id=txtPassword    ${LOGINDATA}[password]
    Click Button    id=btnLogin 
    
MyFirstTest
    [Tags]    Example
    Log    I'm inside MyFirsTest    
    
MySecondTest
    [Tags]    Example
    Log    I'm inside MySecondTest  
    Set Tags    Regressuion1
    Remove Tags    Regression1
    