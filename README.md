#Sadmin

###版本：
    python v2.7
    django v1.8.7
    Bootstrap v3.2.0

###部署(linux)：
    1.安装django 1.8
    2.将项目解压在任意目录下，进入项目目录
    3.同步数据库，需要先创建好数据库，数据库连接信息在website/settings.py文件中定义
        # python manage.py syncdb
    4.运行项目
        # python manage.py runserver 0.0.0.0:80
    5.浏览器访问

###权限判断逻辑：
    1.用户隶属于某个角色（组的概念），角色具有一定的权限
    2.当用户访问某个url时，获取当用户的用户名和要访问的URL地址，判断用户隶属的角色是否包含所以访问的url

###Demo:
    http://sadmin.sinaapp.com
    原作者的blog也是基于此系统开发的：http://liufeily.sinaapp.com

###更新说明
    2016-01-06 15:00:00 fork from: https://github.com/liufeily/sadmin
    *********************************************************************
    version: V1.0.0.20160106_alpha
    update author QQ: 342314781
    功能修改：
    升级django版本至1.8.7；
    增加实用脚本start.py；
    优化部分模块代码；
    增加数据库sql文件data/account.sql，默认超级用户名：admin，密码：111111

    未来计划：
    修正原作者代码不规范问题；
    清理不必要文件和代码等；

    *********************************************************************





