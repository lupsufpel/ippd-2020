# IPPD 2020

O propósito desse repositório é fornecer uma ambiente virtualizado para estudo/teste de configurações e ferramentas que possam ser usadas nas cadeira de IPPD.

## Descrição do Ambiente

Esse repositório disponibiliza dois ambiente para uso: single-node (com uma máquina virtual) e ou multi-node ( com 2 ou mais máquinas virtuais). No ambiente multi-node, por exemplo, pode ser usado nas atividades que envolvam o uso da tecnologia `OpenMPI`

## Pré requisitos

* Suporte a aceleração de hardware vt-x/AMD-v na BIOS  
* VirtualBox: https://www.virtualbox.org/
* Vagrant: https://www.vagrantup.com/downloads.html

Para maioria das situações, basta baixar a versão mais atual dos programas e realizar a instalação de acordo com o sistema operacional usado.

* Para usar com Windows, é preciso instalar o VirtualBox Extension Pack: https://www.virtualbox.org/wiki/Downloads


## Comandos Básicos

Estes comandos precisam ser executados no diretório onde se encontra o arquivo `Vagrantfile`.

    $ cd single-node
    
  ou
  
    $ cd multi-node

### Iniciando o ambiente

    $ vagrant up
    
Esse repositório possui scripts (`provision.sh`) que permitem preparar a máquina virtual, deixando-a pronta para uso. Para isso, basta adicionar a opção `--provision` ao comando  ` vagrant up`:

    $ vagrant up --provision
    
 Ou executar o comando `vagrant provision` após o comando `vagrant up`
    
    $ vagrant up
    $ vagrant provision

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

Ativando  a diretiva no `Vagrantfile` (já está ativado).

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

O usuário padrão das máquinas virtuais é `vagrant` e é um usuário do grupo `sudo`.  

| Usuário 	| Senha   	|
|---------	|---------	|
| vagrant 	| vagrant 	|


## Compartilhamento
Este ambiente também está configurado para que as máquinas virtuais compartilhem com a máquina hospedeira. Isso permite que os arquivos possam ser acessados e manipulados por ambas.

| Hospedeiro 	| Máquina virtual |
|---------	|---------	|
| ./vm-home | /home/vagrant/shared" |

o mesmo ocorre no ambiente multi-nodo:

| Hospedeiro 	| Máquina virtual |
|---------	|---------	|
| ./nodo-01 | /home/vagrant/shared" |
| ./nodo-02 | /home/vagrant/shared" |



## Referências

* https://www.vagrantup.com/intro/index.html
* https://www.vagrantup.com/docs/index.html
* https://www.devops-sys.com.br/2018-10-07-vagrant/
* https://linuxconfig.org/how-to-install-cuda-on-ubuntu-20-04-focal-fossa-linux
