*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library    SeleniumLibrary
    
*** Variables ***
${ URL}      http://206.189.178.139:8080/
${BROWSER}        chrome

*** Test Cases ***
          
Valid Login
    Open Browser in firefox
    maximize browser window
    Log    TEST START
    log    test location
    input text    xpath://*[@id="root"]/div[2]/div[2]/div/div[1]/div[1]/div[2]/div/span/span/span[1]/input    Ambala, Haryana, India
    #Click Button    xpath://*[@id="root"]/div[2]/div[2]/div/div[1]/div[1]/div[2]/div/span/span/span[2]/button        
    Get Selenium Speed              
    Title Should Be    OyeGrocery
    Press Keys    xpath://*[@id="root"]/div[2]/div[1]/div/div[2]/div[1]/div[2]/div[1]/a/button    ENTER
      
    ${"email_txt"}    set variable    name:email
    Element Should Be Visible    ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}
    input text  ${"email_txt"}  test@gmail.com

    ${"password_txt"}    set variable    name=password
    Element Should Be Visible    ${"password_txt"}
    Element Should Be Enabled    ${"password_txt"}
    input text  ${"password_txt"}  123123123  
    Click Button    xpath://*[@id="root"]/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/form/button 
    Sleep   6               
    Close All Browsers
    
*** Keywords *** 
Open Browser in firefox
    Open Browser    ${URL}    ${BROWSER}
    


    #Execute Javascript    window.scrollTo(0,1500)            (for scrolling the page)
    #Scroll Element Into View    locator                        (scroll jab tak element nehi milta)
    #Execute Javascript    window.scrollTo(0,document.body.scrollHeight)        (it will go at the end of the page)
    
    #Select From List By Label    locator                        (for selecting a list)
    #Select From List By Index    locator                        (select list index )
    #Unselect From List By Label    locator                        (for unselect list)
   
    #Select Radio Button    group_name    value                    (for select radio button)
    
    #Select Checkbox    locator                                    (select a checkbox)
    #Unselect Checkbox    locator                                    (unselect the checkbox)
    
    #handle alerts
    #Handle Alert    accept/dismiss/leave                            (handle pop up windows)
    #Alert Should Be Present    text                                     (jo be ho vaha pr ) 
   
    #how to handle frames
    #Select Frame    locator                                          (for select the frames)
    #Click Link    locator
    #Unselect Frame    