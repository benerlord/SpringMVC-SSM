0. 使用springdb的mysql库，表使用student（id auto_increment, name, age）
1. 新建maven web项目
2. 加入依赖
    springmvc, spring, mybatis三个框架的依赖，Jackson依赖，MySQL驱动，druid连接池
    jsp, servlet依赖
3. 写web.xml
    1）注册DispatcherServlet，目的：1.创建springmvc容器对象，才能创建Controller类对象
                                    2.创建的是Servlet，才能接收用户的请求
    2）注册spring的监听器：ContextLoaderListener，目的：创建spring的容器对象，才能创建service，dao类对象
    3）注册字符集过滤器，解决post请求乱码的问题
4. 创建包。Controller包，service，dao，实体类包名
5. 写springmvc,spring,mybatis的配置文件
    1） springmvc配置文件
    2）spring配置文件
        ·引入属性配置文件
        ·声明数据源，连接数据库
        -----写到这里可以进行测试，发布服务器
        ·SqlSessionFactoryBean创建SqlSessionFactory
        -----接下来去写mybatis配置文件，写完回到spring配置文件
        ·声明mybatis扫描器，创建dao对象
        ·声明service的注解@Service所在的包名位置
    3）mybatis配置文件
    4）数据库的属性配置文件
    （springmvc课程的47节视频，到此讲完配置文件，接下来开始写代码部分）
6. 写代码，dao接口和mapper文件，service和实现类，controller，实体类
7. 写jsp页面
