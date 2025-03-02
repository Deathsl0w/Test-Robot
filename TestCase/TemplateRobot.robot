
*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/getKeywords.robot


*** Test Cases ***




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
    
