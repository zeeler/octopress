---
layout: post
title: "create ssh key on linux"
date: 2015-11-23 18:12:02 +0800
comments: true
categories: 
---

## Linux上创建密钥登录方式的步骤

### 1. 在Server创建密钥

```
ssh-keygen -t rsa
```
一路回车即可，然后进入.ssh目录修改:

```
cd ~/.ssh
mv id_rsa.pub authorized_keys
chmod 600 *
```

### 2. 将私钥下载到本地

```
mkdir ~/.ssh
cd ~/.ssh
scp 用户名@服务器/用户名/.ssh/id_rsa 用户名@服务器
```

### 3. 客户端~/.ssh目录下创建config，内容如下

```
HostName 登录名称
  Host 服务器IP或域名
  Port 端口号
  User 用户名
  identitiFile ~/.ssh/用户名@服务器
```

修改权限:

```
chmod 600 *
```

### 4. 验证是否能正常登录

```
ssh 登录名称
```

如果可以登录，则登录到服务器删除相应私钥:

```
rm -f ~/.ssh/id_rsa
```

