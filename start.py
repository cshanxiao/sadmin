# -*- coding: utf8 -*-
u'''
@summary:
@author: Administrator
@date: 2015年12月22日
'''

import subprocess

def start():
    ipython = "python27"
    cmds = [
#             "django-admin startproject xxx",
#             "%s manage.py %s" % (ipython, "startapp docker"),
#
#             "%s manage.py %s" % (ipython, "collectstatic"),
#
#             "%s manage.py %s" % (ipython, "dumpdata [appname] > appname_data.json"),
#             "%s manage.py %s" % (ipython, "loaddata appname_data.json"),
#
#             "%s manage.py %s" % (ipython, "dumpdata > mysite_all_data.json"),
#             "%s manage.py %s" % (ipython, "loaddata mysite_all_data.json"),
#
#             "%s manage.py %s" % (ipython, "makemigrations"),
#             "%s manage.py %s" % (ipython, "migrate"),
#             "%s manage.py %s" % (ipython, "makemessages -l zh-Hans"),


            "%s manage.py %s" % (ipython, "runserver 0.0.0.0:8000"),
            ]

    subprocess.Popen(cmds[0], shell=True)

if __name__ == '__main__':
    u'''
    @summary:
    '''
    start()


