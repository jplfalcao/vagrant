# Vagrant

### Proposta

Provisionar infraestrutura como código ([IaC](https://pt.wikipedia.org/wiki/Infraestrutura_como_C%C3%B3digo)), utilizando a ferramenta Vagrant.

### Conhecendo o Vagrant

O [Vagrant](https://developer.hashicorp.com/vagrant/intro) é uma ferramenta de automação da [HashiCorp](https://www.hashicorp.com/) onde é possível desenvolver ambientes completos, utilizando um arquivo de configuração. <br>
Esse arquivo utiliza a linguagem **HCL** (HashiCorp Configuration Language), que é baseada na linguagem [Ruby](https://www.ruby-lang.org/pt/). <br>
Como sua estrutura base, para "subir" os ambientes de desenvolvimento, o Vagrant utiliza os *Providers*, *Provisioning* e as *Vagrant Boxes*:
- [Providers](https://developer.hashicorp.com/vagrant/docs/providers) são utilizados para fornecer os recursos de virtualização;
- [Provisioning](https://developer.hashicorp.com/vagrant/docs/provisioning) são responsáveis por executar algumas tarefas de forma automatizada;
- [Vagrant Boxes](https://app.vagrantup.com/boxes/search) são "caixas" onde contém os sistemas operacionais. 

<br>

> Em ambiente de produção é recomendável criar suas próprias boxes, ou utilizar boxes oficias (CentOS, Debian, Ubuntu).

### Vagrantfile

O [Vagrantfile](https://developer.hashicorp.com/vagrant/docs/vagrantfile) é responsável por descrever toda infraestrutura, e subir o ambiente diretamente no Vagrant.

### Command-Line Interface

Toda a interação com o Vagrant é realizada através de sua interface de linha de comando ([CLI](https://developer.hashicorp.com/vagrant/docs/cli)).
