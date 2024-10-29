# 无限下载试用navicat
http://www.navicat.com.cn/download/navicat-premium#win

# 使用cron脚本

打开cron
``` bash
crontab -e
```

定时任务
``` bash
# 每天 5 点半
0 30 5 * * sh /Users/user/A/navicat/resetNavicat.sh
```
