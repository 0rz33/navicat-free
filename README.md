# 无限下载试用navicat
## 使用说明

- 从 [navicat premium](https://www.navicat.com.cn/download/navicat-premium) 官网下载最新版。安装并运行，选择试用14天。
- 待试用到期后，执行`./reset_navicat.sh`

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
