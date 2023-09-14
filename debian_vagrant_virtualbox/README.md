# Debian Vagrant VirtualBox

### Objetivo

Automatizar a criação e configuração de quatro servidores com GNU/Linux Debian.

### Configuração do ambiente

Especificações da máquina utilizada para efetuar o teste:
- GNU/Linux: Mint 20.1;
- Kernel: 5.4.0-159;
- CPU/Cores: 4;
- Memória RAM: 8192 MB;
- Disco: SSD de 120 GB.

O provider utilizado foi o [VirtualBox](https://www.virtualbox.org/wiki/Linux_Downloads), em sua versão 7.0.10. <br>
O provisioning utilizado foi o [Shell](https://developer.hashicorp.com/vagrant/docs/provisioning/shell), com o script `debian-default.sh`, automatizando a instalação e configuração das instâncias (VMs) criadas. <br>
Esse arquivo precisa ter permissão de execução e podemos habilitar com o comando abaixo (**antes de executar o comando `vagrant up`**):

```
$ chmod u+x debian-default.sh
```

A Box utiliza foi a [debian/buster64](https://app.vagrantup.com/debian/boxes/buster64).

> Utilize um editor de texto de sua prefência para editar o arquivo `Vagrantfile`.
### Comandos utilizados

Cria, dentro do diretório atual, o arquivo `Vagrantfile` e especifica a box que será utilizada:

```
$ vagrant init -m debian/buster64
```

Cria e configura o ambiente, a partir do `Vagrantfile`:

```
$ vagrant up
```

Caso deseje utilizar outro provider, utilize o parâmetro `--provider=nome_do_provider`.


Se realizar alguma alteração no arquivo `Vagrantfile`, **durante a execução das VMs**, utilize:

```
$ vagrant reload
```

Verifica o estado das máquinas:

```
$ vagrant status
```

Acessando as máquinas via SSH:

```
$ vagrant ssh [nome_da_vm]
```

Desliga as máquinas em execução:

```
$ vagrant halt
```

Interrompe e destrói todas as máquinas em execução:

```
$ vagrant destroy
```
Utilizando a opção `-f` (`--force`), não pede confirmação (**use com cuidado!**).
