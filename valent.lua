-- Imports
local os = require("os")

-- Constants
local red    = "\027[31m"
local green  = "\027[32m"
local yellow = "\027[33m"
local blue   = "\027[34m"
local purple = "\027[35m"
local fade   = "\027[2m"
local none   = "\027[39m\027[0m"
local lnd = "\n"

local title = [[
  _ _  ___  _    ___  _ _  ___   ___   _       
 | | || . || |  | __>| \ ||_ _| |   | / |      
 | ' ||   || |_ | _> |   | | |  | / | | |      
 |__/ |_|_||___||___>|_\_| |_|  `___'.|_| ]]   

local bye = [[
+----+
|bye!|
+----+ ]]

local info = none .. [[
+----------------------------------------+
|tool instaler to termux.                |
+----------------------------------------+
|coded by L7   |   valent v0.1 (beta)    |
+----------------------------------------+ ]]

local storage = none .. lnd .. [[
+----------------------------------------+
|this command for access storage:        |
|$ termux-setup-storage                  |
+----------------------------------------+ ]]

local home = fade .. lnd .. "|your home directory is:" .. lnd .. "|" .. os.getenv("HOME") .. none .. lnd .. lnd .. red

-- Package definitions
local packages = {
  -- General packages
  { name = "general",
    list = {
      { name = "apt", install = "apt update && apt upgrade -y", help = "apt --help" },
      { name = "pkg", install = "pkg update && pkg upgrade -y", help = "pkg --help" }
    }
  },
  -- Programming languages
  { name = "languages",
    list = {
      { name = "python", install = "apt -y install python", help = "python --help" },
      { name = "python2", install = "apt -y install python2", help = "python2 --help" },
      { name = "python3", install = "apt -y install python3", help = "python3 --help" },
      { name = "python-dev", install = "apt -y install python-dev", help = "python-dev --help" },
      { name = "php", install = "apt -y install php", help = "php --help" },
      { name = "java", install = "apt -y install java", help = "java --help" },
      { name = "perl", install = "apt -y install perl", help = "perl --help" },
      { name = "lua54", install = "apt -y install lua54", help = "lua54 --help" },
      { name = "ruby", install = "apt -y install ruby", help = "ruby --help" },
      { name = "nodejs", install = "apt -y install nodejs", help = "node --help" },
      { name = "golang", install = "apt -y install golang", help = "go --help" },
      { name = "rust", install = "apt -y install rust", help = "rustc --help" },
      { name = "r", install = "apt -y install r-base", help = "R --help" },
      { name = "swift", install = "apt -y install swift", help = "swift --help" },
      { name = "kotlin", install = "apt -y install kotlin", help = "kotlin --help" },
      { name = "scala", install = "apt -y install scala", help = "scala --help" },
      { name = "haskell", install = "apt -y install haskell-platform", help = "ghc --help" },
      { name = "erlang", install = "apt -y install erlang", help = "erl --help" },
      { name = "elixir", install = "apt -y install elixir", help = "elixir --help" },
      { name = "clojure", install = "apt -y install clojure", help = "clojure --help" },
      { name = "dart", install = "apt -y install dart", help = "dart --help" },
      { name = "groovy", install = "apt -y install groovy", help = "groovy --help" }
    }
  },
  -- Development tools
  { name = "dev tools",
    list = {
      { name = "git", install = "apt -y install git", help = "git --help" },
      { name = "bash", install = "apt -y install bash", help = "bash --help" },
      { name = "clang", install = "apt -y install clang", help = "clang --help" },
      { name = "coreutils", install = "apt -y install coreutils", help = "coreutils --help" },
      { name = "make", install = "apt -y install make", help = "make --help" },
      { name = "cmake", install = "apt -y install cmake", help = "cmake --help" },
      { name = "gdb", install = "apt -y install gdb", help = "gdb --help" },
      { name = "valgrind", install = "apt -y install valgrind", help = "valgrind --help" },
      { name = "strace", install = "apt -y install strace", help = "strace --help" },
      { name = "ltrace", install = "apt -y install ltrace", help = "ltrace --help" },
      { name = "autoconf", install = "apt -y install autoconf", help = "autoconf --help" },
      { name = "automake", install = "apt -y install automake", help = "automake --help" },
      { name = "libtool", install = "apt -y install libtool", help = "libtool --help" },
      { name = "pkg-config", install = "apt -y install pkg-config", help = "pkg-config --help" },
      { name = "docker", install = "apt -y install docker", help = "docker --help" },
      { name = "vagrant", install = "apt -y install vagrant", help = "vagrant --help" },
      { name = "virtualbox", install = "apt -y install virtualbox", help = "virtualbox --help" },
      { name = "ansible", install = "apt -y install ansible", help = "ansible --help" },
      { name = "terraform", install = "apt -y install terraform", help = "terraform --help" },
      { name = "jenkins", install = "apt -y install jenkins", help = "jenkins --help" },
      { name = "gradle", install = "apt -y install gradle", help = "gradle --help" },
      { name = "maven", install = "apt -y install maven", help = "mvn --help" },
      { name = "ant", install = "apt -y install ant", help = "ant --help" },
      { name = "bazel", install = "apt -y install bazel", help = "bazel --help" },
      { name = "sbt", install = "apt -y install sbt", help = "sbt --help" },
      { name = "leiningen", install = "apt -y install leiningen", help = "lein --help" }
    }
  },
  -- Web development tools
  { name = "web",
    list = {
      { name = "curl", install = "apt -y install curl", help = "curl --help" },
      { name = "openssl", install = "apt -y install openssl", help = "openssl --help" },
      { name = "openssh", install = "apt -y install openssh", help = "ssh --help" },
      { name = "wget", install = "apt -y install wget", help = "wget --help" },
      { name = "nmap", install = "apt -y install nmap", help = "nmap --help" },
      { name = "macchanger", install = "apt -y install macchanger", help = "macchanger --help" },
      { name = "host", install = "apt -y install host", help = "host --help" },
      { name = "dnsutils", install = "apt -y install dnsutils", help = "dnsutils --help" },
      { name = "net-tools", install = "apt -y install net-tools", help = "ifconfig --help" },
      { name = "traceroute", install = "apt -y install traceroute", help = "traceroute --help" },
      { name = "tcpdump", install = "apt -y install tcpdump", help = "tcpdump --help" },
      { name = "wireshark", install = "apt -y install wireshark", help = "wireshark --help" },
      { name = "iperf3", install = "apt -y install iperf3", help = "iperf3 --help" },
      { name = "ethtool", install = "apt -y install ethtool", help = "ethtool --help" },
      { name = "iftop", install = "apt -y install iftop", help = "iftop --help" },
      { name = "ncat", install = "apt -y install ncat", help = "ncat --help" },
      { name = "socat", install = "apt -y install socat", help = "socat --help" },
      { name = "hping3", install = "apt -y install hping3", help = "hping3 --help" },
      { name = "mtr", install = "apt -y install mtr", help = "mtr --help" },
      { name = "whois", install = "apt -y install whois", help = "whois --help" }
    }
  },
  -- Security tools
  { name = "security",
    list = {
      { name = "hydra", install = "apt -y install hydra", help = "hydra --help" },
      { name = "john", install = "apt -y install john", help = "john --help" },
      { name = "aircrack-ng", install = "apt -y install aircrack-ng", help = "aircrack-ng --help" },
      { name = "metasploit-framework", install = "apt -y install metasploit-framework", help = "msfconsole --help" },
      { name = "nikto", install = "apt -y install nikto", help = "nikto --help" },
      { name = "sqlmap", install = "apt -y install sqlmap", help = "sqlmap --help" },
      { name = "ncrack", install = "apt -y install ncrack", help = "ncrack --help" },
      { name = "nmap", install = "apt -y install nmap", help = "nmap --help" },
      { name = "burpsuite", install = "apt -y install burpsuite", help = "burpsuite --help" },
      { name = "wpscan", install = "apt -y install wpscan", help = "wpscan --help" },
      { name = "ettercap", install = "apt -y install ettercap-graphical", help = "ettercap --help" },
      { name = "openvas", install = "apt -y install openvas", help = "openvas --help" },
      { name = "recon-ng", install = "apt -y install recon-ng", help = "recon-ng --help" },
      { name = "maltego", install = "apt -y install maltego", help = "maltego --help" },
      { name = "beef-xss", install = "apt -y install beef-xss", help = "beef-xss --help" },
      { name = "hashcat", install = "apt -y install hashcat", help = "hashcat --help" }
    }
  }
}

-- Clear the screen
function cls()
  os.execute("clear")
end

-- Display the home menu
function init()
  cls()

  local menu = ""
  for i, pkg in ipairs(packages) do
    menu = menu .. string.format(" [%02d] %s\n", i, pkg.name)
  end
  menu = menu .. "\n [00] exit\n"

  print(lnd .. red .. title .. lnd)
  print(info .. home .. menu .. storage)

  io.write(red.."| ")
  local cmd = io.read()
  local cmdn = tonumber(cmd)

  if cmdn == 0 or cmd == "exit" then
    cls()
    print(bye .. none)
    os.exit()
  elseif cmdn and packages[cmdn] then
    cls()
    page(packages[cmdn])
  else
    init()
  end
end

-- Display the package menu
function page(pkg)
  cls()

  local menu = ""
  for i, pkg in ipairs(pkg.list) do
    menu = menu .. string.format(" [%02d] %s\n", i, pkg.name)
  end
  menu = menu .. string.format(" [%02d] install all\n\n [00] back\n", #pkg.list + 1)

  print(red)
  os.execute('figlet -f small " ' .. pkg.name .. '"')
  print(lnd .. info .. home .. menu .. storage)

  io.write(red.."| ")
  local cmd = io.read()
  local cmdn = tonumber(cmd)

  if cmdn == 0 or cmd == "back" then
    init()
  elseif cmdn == #pkg.list + 1 then
    for _, pkg in ipairs(pkg.list) do
      cls()
      os.execute(pkg.install)
    end
  elseif cmdn and pkg.list[cmdn] then
    cls()
    os.execute(pkg.list[cmdn].install) io.write(string.rep("\n",100))
  end
  page(pkg)
end

-- Initialize the application
os.execute("apt install -y figlet")
init()

--[[  README.md

## VALENT: Termux Package Installer

**VALENT** is a simple and user-friendly tool for installing packages on Termux. It provides a menu-driven interface to easily install various packages, including programming languages, development tools, web development tools, and security tools.

**Features:**

* **Easy to use:** VALENT provides a simple and intuitive menu-driven interface.
* **Comprehensive:** It offers a wide range of packages for various purposes.
* **Fast:** VALENT uses apt-get to install packages quickly.

**Installation:**

1. Install the necessary packages:
```bash
apt update && apt upgrade
apt install git lua54 figlet
```
2. Clone the repository:
```bash
git clone https://github.com/suntzar/VALENT.git
```
3. Navigate to the directory:
```bash
cd VALENT
```

**Usage:**

1. Run the `valent.lua` script:
```bash
lua valent.lua
```
2. Choose the category of packages you want to install.
3. Select the package you want to install from the list.
4. Follow the on-screen instructions.

**Example:**

To install Python, follow these steps:

1. Run `lua valent.lua`.
2. Select option `[01] languages`.
3. Select option `[01] python`.
4. VALENT will automatically install Python.

**Disclaimer:**

This tool is for educational purposes only. Use it responsibly and at your own risk. I am not responsible for any damage caused by using this tool.

**Contributions:**

Contributions are welcome! If you find any bugs or have suggestions for improvement, please submit a pull request.

**License:**

This project is licensed under the MIT License. See the LICENSE file for details.

]]
