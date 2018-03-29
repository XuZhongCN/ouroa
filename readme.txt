直接通过导入数据库脚本，实现系统数据初始化
    
#jdbc.url=jdbc:mysql://10.0.116.166:3306/ouroa?useUnicode=true&characterEncoding=utf-8
jdbc.url=jdbc:mysql://localhost:3306/ouroa2?useUnicode=true&characterEncoding=utf-8
jdbc.user=root
jdbc.password=root
jdbc.driver=com.mysql.jdbc.Driver
#数据库初始化配置
jdbc.host=localhost
jdbc.port=3306
#借用
jdbc.importDatabaseName=mysql
#数据是否已经初始化，0 没有
status=0
管理员 123 密码 123
─WEB-INF
  │ web.xml
  ├─classes
  │  ├─conf
  │  │   db.properties ----------------> 数据库配置文件，需要修改用户名、密码
  │  │   mybatis.xml
  │  ├─import
  │  │   ouroa166121300.sql ----------------> 数据库脚本，不需修改
  │  └─spring
  │      applicationContext-dao.xml
  │      applicationContext-service.xml
  │      applicationContext-shiro.xml
  │      applicationContext-tran.xml
  │      spring-activiti.xml
  │      spring-mvc.xml
  └─pages
     │ demo.html
     │ home.html
     │ index.html
     │ logout.html
     ├─error
     │   msg.html
     ├─sys
     │  ├─activiti
     │  │   deploy.html
     │  │   index.html
     │  ├─menu
     │  │   form.html
     │  │   index.html
     │  ├─role
     │  │   form.html
     │  │   index.html
     │  └─user
     │      form.html
     │      index.html
     ├─task
     │   index.html
     │   view.html
     └─user
         borrow.html
         leave.html
0 min
0 s
49 ms