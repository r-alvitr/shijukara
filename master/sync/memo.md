# masterのmemo
k8sのmaster用のVMをvagrant+virtualboxで建設してみる。

* ホストOS:CentOS7
* wishlist
  * docker
  * vim
  * kubectl

## setup
参考: https://qiita.com/inakadegaebal/items/be9fecce813cebec5986

```bash
$ vagrant up
$ vagrant ssh
$ sudo yum update

# dockerをぶっこむ
# 今あるdockerを殺す
$ sudo yum remove docker docker-common docker-selinux docker-engine
# 必要なpackageをインストール
$ sudo yum install -y yum-utils device-mapper-persistent-data lvm2
# リポジトリ追加
$ sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# yumのpackage indexのupdate
$ sudo yum makecache fast
# latestのdockerをinstall
$ sudo yum install docker-ce
# dockerのdeamonを召喚する
$ sudo systemctl start docker
# sudoつけるのめんどい
$ sudo groupadd docker
$ sudo usermod -aG docker vagrant
# いったんexitしてもっかいsshしたらsudoつけなくてもいい感じになる
```
