# Howto

O propósito desse repositório é fornecer uma ambiente virtualizado para estudo/teste de configurações e ferramentas que possam ser usadas nas cadeira de IPPD.

## Pré requisitos

* Suporte a aceleração de hardware vt-x/AMD-v na BIOS  
* VirtualBox: https://www.virtualbox.org/
* Vagrant: https://www.vagrantup.com/downloads.html

Para maioria das situações, basta baixar a versão mais atual dos programas e realizar a instalação de acordo com o sistema operacional usado.

* Para usar com Windows, é preciso instalar o VirtualBox Extension Pack: https://www.virtualbox.org/wiki/Downloads


## Comandos Básicos

Estes comandos precisam ser executados no diretório onde se encontra o arquivo `Vagrantfile`.

### Iniciando o ambiente

    $ vagrant up

### Acessando a máquina virtual 

De forma geral, é possível acessar a máquina virtual de duas maneiras:

#### Conectando de forma "remota"

Via SSH
```
$ vagrant ssh
```

Via RDP (Win10)
```
$ vagrant rdp
```
#### Acessando diretamenta a interface do Virtualbox

Ativando  a diretiva no `Vagrantfile`

```
vbox.gui = true
```

### Destruindo VM

```
$ vagrant destroy
```

### Reiniciando a VM

```
$ vagrant reload
```

### Desligando a VM

```
$ vagrant halt
```

## Usuários e senhas

| Usuário 	| Senha   	|
|---------	|---------	|
| vagrant 	| vagrant 	|


## Referências

* https://www.vagrantup.com/intro/index.html
* https://www.vagrantup.com/docs/index.html
* https://www.devops-sys.com.br/2018-10-07-vagrant/
* https://linuxconfig.org/how-to-install-cuda-on-ubuntu-20-04-focal-fossa-linux
