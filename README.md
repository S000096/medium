解题思路
计划使用RobotFramework+Python的方式作为RPA（Robotic Process Automation）模拟人工操作来完成本次课题。
环境搭建
    Python 3.7.6
    pip install robotframework==6.1.1
    pip install wxPython==4.0.4
    pip install robotframework-ride==1.7.4.1
    pip install robotframework-seleniumlibrary==6.2.0
操作步骤
1、使用SeleniumLibrary打开谷歌浏览器，导航指定到https://medium.com/?tag=software-engineering
2、循环打开前十篇文章，利用谷歌浏览器的翻译功能，将文章翻译为中文
3、右键浏览器点击打印，目标打印机选择导出为WPS PDF
4、保存到D://files
5、前十篇文章操作完毕后，进入路径D://files全部选中将其压缩
