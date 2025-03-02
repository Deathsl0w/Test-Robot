*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/getKeywords.robot


*** Test Cases ***
TC-01 Test Open Browser login
    Set Selenium Speed 	    0.5s
    ${PageTitle}=   launchBrowser
    log to console  ${PageTitle}NuiTEST
    # Sleep  100s

TC-02 PassEmptry      
    login   admin@yourstore.com     ${EMPTY}
    Error message Login ไม่ผ่าน

TC-03 WrongPassword   
    Login   admin@yourstore.com     zxc
    Error message Login ไม่ผ่าน


# TC-04 Wrongusername   
#     Login   adm@yourstore.com      admin
#     Error message Login ไม่ผ่าน

# TC-05 WrongPassword&username
#     Login  adm@yourstore.com     ${EMPTY}
#     Error message Login ไม่ผ่าน

# Tc-06 login Success
#     Login    admin@yourstore.com    admin
#     Welcome to Dashboard


#  Code Template
#  Test All linsk
#     ${AllLinsksCount}=  get element count   xpath://a
#     log  ${AllLinsksCount}

#     @{LinkItems}    create list
    
#     : FOR ${i}  IN RANGE    1   ${AllLinsksCount}
#     \ ${LinkItems}= get text xpath://a
#     \ log @{LinkItems}
#     END

# ForLoop1
#     FOR   ${i}    IN RANGE 1   10
#        Log to Console  ${i}
#     END


# ForLoop2
#     FOR   ${i}    IN   1 2 3 4 5 6 7 8 9
#       Log to Console  ${i}
#     END


# ForLoop3
#     @{items}    create list     1 2 3 4 5
#     FOR   ${i}    IN  @{items}
#        Log to Console ${i}
#     END


# ForLoop4
#     FOR    ${i}    IN    john    david    smith    scott
#         Log To Console    ${i}
#     END



# TC-03 Get Excel
#     GetItemsBody  Data/GetItemsData.xlsx   10


# TC-04 RetrivedExcel
#     RetrivedExcelData  Data/GetItemsData.xlsx   10
    

