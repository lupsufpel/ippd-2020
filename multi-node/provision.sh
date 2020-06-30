#!/bin/bash
set -e # To stop as soon as an error occured

#
# Instalação de ferramentas básicas para desenvolvimento
#

# atualiza a lista de pacotes
sudo apt-get update 

# atualiza distribuição
sudo apt-get -y dist-upgrade

# suporte a repositório externos
sudo apt install -y software-properties-common dirmngr 

## Compiladores, Bibliotecas etc


# Metapacote com as principais ferramentas para construir pacotes
sudo apt-get -y  install build-essential make

# GCC/G++
sudo apt-get -y  install g++ 
sudo apt-get -y  install gcc 

#Gfortran
sudo apt -y install gfortran

# Biblioteca padrão do C
sudo apt-get -y install libstdc++6 

# Documentação de desenvolvimento no linux
sudo apt-get -y  install manpages-dev 

#Documentação sobre C++-STL 
sudo apt-get -y  install stl-manual 

# Documentação sobre C++
sudo apt-get -y  install c++-annotations

# Documentação do GCC
sudo apt-get -y  install gcc-doc 

# Suporte ao 32bits
sudo apt-get -y  install libc6:i386 libgcc1:i386 libstdc++6:i386 libz1:i386

# 
# Controle de versão
#

# git
sudo apt-get -y  install git-core

#
# Ferramentas para Debugging
#

# Dr. Memory
#source scripts.d/drmemory.sh

# Valgrind
sudo apt-get -y install valgrind

#
# Instalação de ferramentas de rede
#

# MTR
sudo apt-get -y install mtr




# Instalando OpenMP
sudo apt-get install libomp-dev -y


#
# Instalação do OpenCL
#

# Instalação OpenCL GPU driver (NEO) no Ubuntu 18.04 (opcional)
sudo add-apt-repository ppa:intel-opencl/intel-opencl -y
sudo apt-get update
sudo apt install -y intel-opencl-icd

# Instalação das bibliotecas e da plataforma OpenCL para processadores Intel (depende do módulo i915)
sudo apt install -y pocl-opencl-icd ocl-icd-dev ocl-icd-opencl-dev libhwloc-dev clinfo

# Exibe informações sobre a instalação dos drivers OpenCL
clinfo

# Instalação do CUDA Toolkit
sudo apt install nvidia-cuda-toolkit -y


#
# Install DR. Memory
#

# Download do pacote
URL=https://github.com/DynamoRIO/drmemory/releases/download/release_2.1.0/DrMemory-Linux-2.1.0-1.tar.gz

wget $URL -O /tmp/drmemory.tar.gz

# Criação do diretório no lugar correto
sudo mkdir -p /opt/drmemory

# Descompactação do arquivo
sudo tar xzf /tmp/drmemory.tar.gz -C /opt/drmemory --strip-components 1

# Criação do link simbólico dentro do /usr/bin
sudo su -c "ln -s /opt/drmemory/bin/drmemory /usr/bin/drmemory"

# Permissão de execução para o binário do drmemory
sudo chmod +x /opt/drmemory/bin/drmemory

#
# Instalação do simgrid
#

# simgrid
sudo apt-get -y install simgrid

#
# Instalação de OpenMPI
#

# Dependências
sudo apt install openssh-client openssh-server -y

# Instalando OpenMPi
sudo apt-get install openmpi-bin openmpi-common -y


# Limpando sistema
sudo apt-get -y autoremove
sudo apt-get -y autoclean


