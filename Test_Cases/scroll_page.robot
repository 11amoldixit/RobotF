*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${Req_URL}        https://selectorshub.com/xpath-practice-page/
${Scroll_Ele}    A

*** Test Cases ***
ScrollPage
        Set Selenium Speed    1s
        Open Browser    ${Req_URL}    gc        options=add_experimental_option("detach", True)
        Maximize Browser Window
        Sleep    5s
        Execute Javascript    window.scrollTo(0,1000)
        Execute JavaScript    document.querySelector('#userName').shadowRoot.querySelector('#kils').value='Amolchandra'
        document.querySelector("#userName").shadowRoot.querySelector("#app2").shadowRoot.querySelector("#pizza")