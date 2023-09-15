# Gitea

初始化安装时，需手工将 **基础URL** 的值。这个可以作为后期的优化项，当前将 APP_HTTP_PORT=3000 可以解决这个困扰

## FAQ

#### 环境变量中的 SSH_PORT HTTP_PORT 是容器的吗？

是的，不是宿主机的

#### 管理员账号是什么？

可以通过初始化向导中设置，也可以之后注册第一个账号

#### gitea:-rootless 镜像有什么特征？

The rootless image use Gitea internal SSH to provide Git protocol and doesn’t support OpenSSH.

#### 配置文件怎么处理？

1. 容器启动后，有一个配置文件：gitea/conf/app.ini
2. 官方表名支持[自定义配置文件](https://docs.gitea.io/zh-cn/install-with-docker/#%E8%87%AA%E5%AE%9A%E4%B9%89)，但是自定义的配置文件是整个覆盖原生的，还是仅覆盖配置项有待研究
