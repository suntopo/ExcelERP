### 背景

当企业门店由单一门店扩张到多门店时，门店管理，信息共享就成了关键问题。往往由于信息不共享，在A门店留存的客户资料，B门店是没有的，给客户造成了很大的不便。于是市场上出现了很多门店管理系统，在产片价格，使用方便，以及数据安全性上良莠不齐。

### 产品形式

对于解决上述背景提到的问题，市场上存在两种主要的形式：

* 安装版ERP
* WEB版ERP

对于实现同样的功能，个人觉得还是WEB版要优于安装版，主要是因为安装版操作不方便，对于一般门店系统量级有点重。但是两者最大的缺点就是形式不灵活，一旦产品形式确定后就不能再根据门店的需求做出相应的更改，其次就是收费，操作不方便和数据不安全的问题。

### EXCELERP

excelerp不是什么新鲜的概念，多年前以及现在都有很多公司在开发，比如说国内办公软件大佬WPS就集成了有类似的功能。

那我们EXCELERP是一个什么样的产品呢？ EXCELERP = EXCELERP + GIT。 

excel负责产品数据的展现形式，它不关心数据是如何存储的；git只负责数据的存储，它不关心数据是如何展现的。excel最为生活中最常用的办公软件之一，很多人都非常熟悉，而且excel功能十分强大，包括数据分析，数据透视，数据图表展示等等。git是程序员界最伟大的发明之一，是程序员托管程序的地方，其安全性是最高的，当然还有很多强大的功能。

### EXCELERP的核心

无规矩不成方圆，EXCELERP正确运行也是按照一定的规范进行的。

public文件夹：这个文件夹相当于整个ERP的数据库，里面每个excel都对应着一个门店的所有资料。门店的管理人员在该文件夹下找到自己门店对应的excel，然后进行数据的增删改查。

private文件夹： 这个问价夹相当于门店的私有数据库，该文件夹里的数据不会提交到共享数据库中，这个文件的设计考虑到门店管理可能有一些私有数据而不想共享的。

module问价夹： 这里面有个moduel.xls这个问价是public文件夹下的数据模板，也就是约定了门店数据该怎么填。每增加一个门店，就拷贝一个module.xls到public下，然后把拷贝到public下的module.xls重命名为门店的名字即可。

index.xls： 这个文件相当于数据展示页，该文件汇总了所有门店的数据，门店管理人员，查找数据只需要在这里就可以了（*当然添加修改数据还是要到public文件夹下，此处正在优化，以后所有的数据的操作只需要在这里进行*）。该文件打开的时候回自动同步所有门店的数据，包括下载远端数据到本地，本地数据汇总到index.xls。在"会员"页面有三个按钮"获取数据","汇总数据","提交数据"。"获取数据"是把其他门店信息获取过来；"汇总数据"是把其他门店数据汇总到该文件里，方便查询；"提交数据"，是门店管理人员在public下修改了对应自己门店的数据后，同步到其他门店的操作（只有修改了数据才需要去提交）。

### EXCELERP的安装

* [注册git账号](#1-1)
* [下载安装git](#1-2)
* [初始化EXCELERP](1-3)

<a name="1-1"><a>
## 注册git账号

1）在http://git.oschina.net/上面注册账户

2）初始化ExcelERP仓库

3）添加项目成员管理

<a name="1-2"><a>
## 下载安装git

1）在http://rj.baidu.com/search/index/?kw=git下载对应机型（32/64位）的Git安装


<a name="1-3"><a>
## 初始化EXCELERP

1）进入到cmd命令

2）输入git clone 地址

3）输入（存储密码免得每次操作都要输入）git config --global credential.helper store

