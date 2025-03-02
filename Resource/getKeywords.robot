*** Settings ***
Library    SeleniumLibrary
Library    ExcelLibrary
Library    Collections

***Variables***
${login-url}  https://admin-demo.nopcommerce.com/login?returnurl=%2Fadmin%2F
${environment}  edge  #chrome

*** Keywords ***
launchBrowser
    Open Browser    ${login-url}    ${environment}
    Maximize Browser window
    # ${title}=   get title
    # [Return]    ${title}
    

Input username
    [Arguments]     ${username}
    input text  id:Email    ${username}

Input pwd
    [Arguments]     ${password}
    input text  id:Password     ${password}

Click Login
    Click Button   xpath=//*[@id="main"]/div/div/div/div[2]/div[1]/div/form/div[3]/button


Error message Login ไม่ผ่าน
    Page Should Contain 	Login was unsuccessful 

Welcome to Dashboard
    Page Should Contain 	Dashboard


Login
    [Arguments]     ${username}    ${password}
    Input username    ${username}
    Input pwd    ${password}
    Click Login

# Template
# RetrivedExcelData
#     [Arguments]    ${path_file}    ${RowData}
#     ${data_Retrived}=    Open Excel Document    ${path_file}    doc1
#     ${data_rowName}=    read excel row    1    0    0    DEV
#     log    ${data_rowName}
#     ${rowTrue}=    evaluate    ${RowData}+1
#     ${data_RowOfData}=    read excel row    ${rowTrue}    0    0    DEV
#     ${data_DictFrom}=    create dictionary
#     ${lenght}=    get length    ${data_rowName}
#     FOR    ${i}    IN RANGE    ${lenght}
#         Set To Dictionary    ${data_DictFrom}    ${data_rowName}[${i}]=${data_RowOfData}[${i}]
#     END
#     close all excel documents
#     return from keyword    ${data_DictFrom}



# GetItemsBody
#     [Arguments]    ${path}    ${Row}
#     ${excelRawData}=       RetrivedExcelData    ${path}     ${Row}
#     ${params}  set variable  ${excelRawData}[params]
#     ${Column_Name}=   Create list     params
#     ${Column_Data}=   Create list     ${params}
#     ${body}=    create dictionary
#     ${lenght}=    get length    ${Column_Name}
#     FOR    ${i}    IN RANGE    0    ${lenght}
#         set to dictionary    ${body}    ${Column_Name}[${i}]    ${Column_Data}[${i}]
#     END
#     ${json}=    Evaluate    json.dumps($body)   modules=json
#     log     json is : ${json}
#     log Many    ${json}
#     return from keyword    ${json}