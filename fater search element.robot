*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
    
using NSP
    Open Application	    http://localhost:4723/wd/hub	     platformName=iOS	    platformVersion=12.2	    deviceName=iPhone 6s	app=/Users/macbook/Documents/IntegrationApp.app	        newCommandTimeout= 45000
     Wait Until Page Contains    Scrolling
    Click Element     nsp=type == 'XCUIElementTypeButton' AND label == "Scrolling"


using xpath1
   
    Open Application	    http://localhost:4723/wd/hub	     platformName=iOS	    platformVersion=12.2	    deviceName=iPhone 6s	app=/Users/macbook/Documents/IntegrationApp.app	       newCommandTimeout= 45000
     Wait Until Page Contains    Scrolling
     Click Element     xpath=//XCUIElementTypeButton[@label="Scrolling"]
     
using xpath2
    Open Application	    http://localhost:4723/wd/hub	     platformName=iOS	    platformVersion=12.2	    deviceName=iPhone 6s	app=/Users/macbook/Documents/IntegrationApp.app	       newCommandTimeout= 45000
     Wait Until Page Contains    Scrolling
     Click Element     xpath=//XCUIElementTypeOther/XCUIElementTypeButton[4]
     
using chain
    Open Application	    http://localhost:4723/wd/hub	     platformName=iOS	    platformVersion=12.2	    deviceName=iPhone 6s	app=/Users/macbook/Documents/IntegrationApp.app	       newCommandTimeout= 45000
     Wait Until Page Contains    Scrolling
     Click Element     chain=**/XCUIElementTypeOther/XCUIElementTypeButton[4]
