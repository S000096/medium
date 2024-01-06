*** Settings ***
Library  SeleniumLibrary
Library  AutoItLibrary
Library  OperatingSystem


*** Variables ***
${URL}  https://medium.com/?tag=software-engineering
${browser}  chrome
${FILES_DIRECTORY}  D://files


*** Test Cases ***
资源下载
    Open Browser    ${URL}    ${browser}
    Execute Javascript    document.body.style.width = '100%'; document.body.style.height = '100%'; document.body.style.margin = 0;
    ${links}  Get Webelements  xpath://h2[@class=='gr cw cz bz cs ct']  limit=10
    :FOR  ${index}  IN RANGE  10
    \  ${link}  Get Text xpath:(//h2[@class='gr cw cz bz cs ct'])[${index}+1]
    \  Click Link  ${link}
    \  Sleep    3
    \  Mouse Click    LEFT    1715    69    #点击翻译此页
    \  Mouse Click    LEFT    1613    108   #点击翻译简体中文
    \  Sleep    3
    \  Send    ^p    #打印快捷键
    \  Send    {ENTER}    #点击回车导出为pdf文件格式,进入路径选择
    \  Send    {ENTER}    #点击回车，保存到默认路径 D://files
    Close Browser     #下载中文pdf文件完毕
    Change Working Directory    ${FILES_DIRECTORY}
    Send    ^a    #全部选中
    Mouse Click    RIGHT    299    221    #右键弹出菜单
    Mouse Click    LEFT     429    464    #左键点击压缩为ZIP文件
