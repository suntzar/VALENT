## VALENT: Instalador de Pacotes para Termux

**VALENT** é uma ferramenta simples e fácil de usar para instalar pacotes no Termux. Ela fornece uma interface baseada em menus para instalar facilmente vários pacotes, incluindo linguagens de programação, ferramentas de desenvolvimento, ferramentas de desenvolvimento web e ferramentas de segurança.

**Características:**

* **Fácil de usar:** VALENT oferece uma interface baseada em menus simples e intuitiva.
* **Abrangente:** Oferece uma ampla gama de pacotes para várias finalidades.
* **Rápido:** VALENT usa apt-get para instalar pacotes rapidamente.

**Instalação:**

1. Instale os pacotes necessários:
```bash
apt update && apt upgrade
apt install git lua54 figlet
```
2. Clone o repositório:
```bash
git clone https://github.com/suntzar/VALENT.git
```
3. Navegue até o diretório:
```bash
cd VALENT
```

**Uso:**

1. Execute o script `valent.lua`:
```bash
lua valent.lua
```
2. Escolha a categoria de pacotes que você deseja instalar.
3. Selecione o pacote que você deseja instalar na lista.
4. Siga as instruções na tela.

**Exemplo:**

Para instalar Python, siga estes passos:

1. Execute `lua valent.lua`.
2. Selecione a opção `[01] languages`.
3. Selecione a opção `[01] python`.
4. VALENT instalará automaticamente o Python.

**Aviso Legal:**

Esta ferramenta é apenas para fins educacionais. Use-a de forma responsável e por sua própria conta e risco. Não me responsabilizo por quaisquer danos causados pelo uso desta ferramenta.

**Contribuições:**

Contribuições são bem-vindas! Se você encontrar algum bug ou tiver sugestões de melhorias, por favor, envie um pull request.