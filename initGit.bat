rem gitԶ�̿����ȷ��������
rem  ע�⣺ dir -a�鿴�������ص������ļ�
rem 1.��������Ҫ������ȷ 
rem 2.ssh-keygen �����ڲ����ⲿ���� 
rem 3.��windows�ĸ߼�ϵͳ����
rem 4.��������
rem 5.ϵͳ�������½�һ��������ΪTERM��ֵΪcygwin
@echo off
rem  ��ʼ��Git��Ϣ֮ǰ�����Ȳ�ѯһ��
git config --global  --list
rem  ��ʼ��Git��Ϣ
git config --global user.name "miaoxu"
git config --global user.email "miaoxu1@qq.com"
rem ����Git���ļ�
mkdir GuanLiMemInfo
cd  GuanLiMemInfo
rem echo ��ǰ·��:"%cd%"
git init >nul
rem �����ļ�
cd .>memInfo.txt
rem  �򱾵ؿ��������ļ�
git add memInfo.txt
rem �Ѱ汾��Ϣ�ύ�����ؿⷽ�����ʱ�鿴
git commit -m "create memInfo.txt at 2019-4-13 13:23:19"
rem ����ssh keygen
rem ssh-keygen -t rsa
rem �鿴ssh�ĵ�λ��
rem ssh -v git@github.com
rem ���زֿ����Զ�ֿ̲�
git remote add memInfo git@github.com:miaoxu1com/GuanLiMemInfo.git
rem ���������л���֧ �൱��git branch dev��git checkout dev
git checkout -b dev
rem  ���ͱ��زֿ⵽Զ�ֿ̲�  
git push -u memInfo dev
rem  git  log
pause


