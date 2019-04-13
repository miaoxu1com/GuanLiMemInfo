rem git远程库的正确关联流程
rem  注意： dir -a查看包含隐藏的所有文件
rem 1.环境变量要设置正确 
rem 2.ssh-keygen 不是内部或外部命令 
rem 3.打开windows的高级系统设置
rem 4.环境变量
rem 5.系统变量中新建一个变量名为TERM，值为cygwin
@echo off
rem  初始化Git信息之前可以先查询一下
git config --global  --list
rem  初始化Git信息
git config --global user.name "miaoxu"
git config --global user.email "miaoxu1@qq.com"
rem 创建Git库文件
mkdir GuanLiMemInfo
cd  GuanLiMemInfo
rem echo 当前路径:"%cd%"
git init >nul
rem 创建文件
cd .>memInfo.txt
rem  向本地库里边添加文件
git add memInfo.txt
rem 把版本信息提交到本地库方便回退时查看
git commit -m "create memInfo.txt at 2019-4-13 13:23:19"
rem 创建ssh keygen
rem ssh-keygen -t rsa
rem 查看ssh的的位置
rem ssh -v git@github.com
rem 本地仓库关联远程仓库
git remote add memInfo git@github.com:miaoxu1com/GuanLiMemInfo.git
rem 创建并且切换分支 相当于git branch dev和git checkout dev
git checkout -b dev
rem  推送本地仓库到远程仓库  
git push -u memInfo dev
rem  git  log
pause


