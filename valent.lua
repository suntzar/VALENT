homedir = os.getenv('HOME')
os.execute('apt install -y figlet')
function cls()
  os.execute('clear')
end

function init()
  home()
end

function home()
  cls()
  
  local painel = ""
  for i, pkg in ipairs(package) do
    painel = painel .. string.format(" [%02d] %s\n", i, package[i].name)
  end
  painel = painel .. "\n [00] exit\n"

  print(line_d..red..asciit..line_d)
  print(ascii_start..painel..ascii_end) 

  io.write("| ")
  command  = io.read()
  commandn = command
  commandn = tonumber(commandn)
  
  if commandn == 0 or command == 'exit' then
    cls() print(bye..none) os.exit()
  elseif commandn and package[commandn] then
    cls()
    page(package[commandn])
  end

  home()
end

function page(pkgs)
  cls()

  local painel = ""
  for i, pkg in ipairs(pkgs.list) do
    painel = painel .. string.format(" [%02d] %s\n", i, pkg.name)
    k = i + 1
  end
  painel = painel .. " ["..k.."] install all\n\n [00] back\n"

  print(red)
  os.execute('figlet -f small " ' .. pkgs.name .. '"')
  print(line_d..ascii_start..painel..ascii_end) 

  io.write("| ")
  local command = io.read()
  local commandn = tonumber(command)

  if commandn == 0 or command == 'back' then
    home()
  elseif commandn == 25 then
    for _, pkg in ipairs(pkgs.list) do
      cls()
      os.execute(pkg.install)
    end
  elseif commandn and pkgs.list[commandn] then
    cls()
    os.execute(pkgs.list[commandn].install)
  end

  page(pkgs)
end

------------------pkgs-----------------------------------------

package = {
  -- Pacotes já existentes
  { name = "geral",
    list = {
      {name = "apt", install = "apt update && apt upgrade -y", help = "apt --help"},
      {name = "pkg", install = "pkg update && pkg upgrade -y", help = "pkg --help"}
    }
  },
  { name = "languages",
    list = {
      {name = "python", install = "apt -y install python", help = "python --help"},
      {name = "python2", install = "apt -y install python2", help = "python2 --help"},
      {name = "python3", install = "apt -y install python3", help = "python3 --help"},
      {name = "python-dev", install = "apt -y install python-dev", help = "python-dev --help"},
      {name = "php", install = "apt -y install php", help = "php --help"},
      {name = "java", install = "apt -y install java", help = "java --help"},
      {name = "perl", install = "apt -y install perl", help = "perl --help"},
      {name = "lua54", install = "apt -y install lua54", help = "lua54 --help"},
      {name = "ruby", install = "apt -y install ruby", help = "ruby --help"},
      {name = "nodejs", install = "apt -y install nodejs", help = "node --help"},
      {name = "golang", install = "apt -y install golang", help = "go --help"},
      {name = "rust", install = "apt -y install rust", help = "rustc --help"},
      {name = "r", install = "apt -y install r-base", help = "R --help"},
      {name = "swift", install = "apt -y install swift", help = "swift --help"},
      {name = "kotlin", install = "apt -y install kotlin", help = "kotlin --help"},
      {name = "scala", install = "apt -y install scala", help = "scala --help"},
      {name = "haskell", install = "apt -y install haskell-platform", help = "ghc --help"},
      {name = "erlang", install = "apt -y install erlang", help = "erl --help"},
      {name = "elixir", install = "apt -y install elixir", help = "elixir --help"},
      {name = "clojure", install = "apt -y install clojure", help = "clojure --help"},
      {name = "dart", install = "apt -y install dart", help = "dart --help"},
      {name = "groovy", install = "apt -y install groovy", help = "groovy --help"}
    }
  },
  { name = "dev tolls",
    list = {
      {name = "git", install = "apt -y install git", help = "git --help"},
      {name = "bash", install = "apt -y install bash", help = "bash --help"},
      {name = "clang", install = "apt -y install clang", help = "clang --help"},
      {name = "coreutils", install = "apt -y install coreutils", help = "coreutils --help"},
      {name = "make", install = "apt -y install make", help = "make --help"},
      {name = "cmake", install = "apt -y install cmake", help = "cmake --help"},
      {name = "gdb", install = "apt -y install gdb", help = "gdb --help"},
      {name = "valgrind", install = "apt -y install valgrind", help = "valgrind --help"},
      {name = "strace", install = "apt -y install strace", help = "strace --help"},
      {name = "ltrace", install = "apt -y install ltrace", help = "ltrace --help"},
      {name = "autoconf", install = "apt -y install autoconf", help = "autoconf --help"},
      {name = "automake", install = "apt -y install automake", help = "automake --help"},
      {name = "libtool", install = "apt -y install libtool", help = "libtool --help"},
      {name = "pkg-config", install = "apt -y install pkg-config", help = "pkg-config --help"},
      {name = "docker", install = "apt -y install docker", help = "docker --help"},
      {name = "vagrant", install = "apt -y install vagrant", help = "vagrant --help"},
      {name = "virtualbox", install = "apt -y install virtualbox", help = "virtualbox --help"},
      {name = "ansible", install = "apt -y install ansible", help = "ansible --help"},
      {name = "terraform", install = "apt -y install terraform", help = "terraform --help"},
      {name = "jenkins", install = "apt -y install jenkins", help = "jenkins --help"},
      {name = "gradle", install = "apt -y install gradle", help = "gradle --help"},
      {name = "maven", install = "apt -y install maven", help = "mvn --help"},
      {name = "ant", install = "apt -y install ant", help = "ant --help"},
      {name = "bazel", install = "apt -y install bazel", help = "bazel --help"},
      {name = "sbt", install = "apt -y install sbt", help = "sbt --help"},
      {name = "leiningen", install = "apt -y install leiningen", help = "lein --help"}
    }
  },
  { name = "web",
    list = {
      {name = "curl", install = "apt -y install curl", help = "curl --help"},
      {name = "openssl", install = "apt -y install openssl", help = "openssl --help"},
      {name = "openssh", install = "apt -y install openssh", help = "ssh --help"},
      {name = "wget", install = "apt -y install wget", help = "wget --help"},
      {name = "nmap", install = "apt -y install nmap", help = "nmap --help"},
      {name = "macchanger", install = "apt -y install macchanger", help = "macchanger --help"},
      {name = "host", install = "apt -y install host", help = "host --help"},
      {name = "dnsutils", install = "apt -y install dnsutils", help = "dnsutils --help"},
      {name = "net-tools", install = "apt -y install net-tools", help = "ifconfig --help"},
      {name = "traceroute", install = "apt -y install traceroute", help = "traceroute --help"},
      {name = "tcpdump", install = "apt -y install tcpdump", help = "tcpdump --help"},
      {name = "wireshark", install = "apt -y install wireshark", help = "wireshark --help"},
      {name = "iperf3", install = "apt -y install iperf3", help = "iperf3 --help"},
      {name = "ethtool", install = "apt -y install ethtool", help = "ethtool --help"},
      {name = "iftop", install = "apt -y install iftop", help = "iftop --help"},
      {name = "ncat", install = "apt -y install ncat", help = "ncat --help"},
      {name = "socat", install = "apt -y install socat", help = "socat --help"},
      {name = "hping3", install = "apt -y install hping3", help = "hping3 --help"},
      {name = "mtr", install = "apt -y install mtr", help = "mtr --help"},
      {name = "whois", install = "apt -y install whois", help = "whois --help"}
    }
  },
  { name = "security",
    list = {
      {name = "hydra", install = "apt -y install hydra", help = "hydra --help"},
      {name = "john", install = "apt -y install john", help = "john --help"},
      {name = "aircrack-ng", install = "apt -y install aircrack-ng", help = "aircrack-ng --help"},
      {name = "metasploit-framework", install = "apt -y install metasploit-framework", help = "msfconsole --help"},
      {name = "nikto", install = "apt -y install nikto", help = "nikto --help"},
      {name = "sqlmap", install = "apt -y install sqlmap", help = "sqlmap --help"},
      {name = "ncrack", install = "apt -y install ncrack", help = "ncrack --help"},
      {name = "nmap", install = "apt -y install nmap", help = "nmap --help"},
      {name = "burpsuite", install = "apt -y install burpsuite", help = "burpsuite --help"},
      {name = "wpscan", install = "apt -y install wpscan", help = "wpscan --help"},
      {name = "ettercap", install = "apt -y install ettercap-graphical", help = "ettercap --help"},
      {name = "openvas", install = "apt -y install openvas", help = "openvas --help"},
      {name = "recon-ng", install = "apt -y install recon-ng", help = "recon-ng --help"},
      {name = "maltego", install = "apt -y install maltego", help = "maltego --help"},
      {name = "beef-xss", install = "apt -y install beef-xss", help = "beef-xss --help"},
      {name = "hashcat", install = "apt -y install hashcat", help = "hashcat --help"}
    }
  }
}


-------string-arguments--------------------------------

red    = '\27[31m'
green  = '\27[32m'
yellow = '\27[33m'
blue   = '\27[34m'
purple = '\27[35m'
fade   = '\27[2m'
none   = '\27[39m\27[0m'
line_d = '\n' 

-------ASCII-------------------------------------------------------------------

 asciit = [[ 
  _ _  ___  _    ___  _ _  ___   ___   _       
 | | || . || |  | __>| \ ||_ _| |   | / |      
 | ' ||   || |_ | _> |   | | |  | / | | |      
 |__/ |_|_||___||___>|_\_| |_|  `___'.|_| ]]   
-------------------------------------------------
 bye = [[
+----+
|bye!|
+----+ ]]
-------------------------------------------------               
 ascii2 = [[
+----------------------------------------+
|tool instaler to termux.                |
+----------------------------------------+
|coded by L7   |   valent v0.1 (beta)    |
+----------------------------------------+ ]]
-------------------------------------------------
 
--------------------------------------------------
 ascii_end = none..line_d..[[
+----------------------------------------+
|this command for access storage:        |
|$ termux-setup-storage                  |
+----------------------------------------+ ]]..red

--------------------------------------------------
 ascii_start = none..ascii2..fade..line_d..'|your home directory is:'..line_d..'|'..homedir..none..line_d..line_d..red
---------+---------------------------------------------------------------------
init()---|
---------+



---clip-board--------------------------
-- ("apt update")
-- ("atp upgrade -y")
-- ("apt install python -y")
-- ("apt install python2 -y")
-- ("apt install php -y")
-- ("apt install python-dev -y")
-- ("apt install python3 -y")
-- ("apt install java -y")
-- ("apt install git -y")
-- ("apt install perl -y")
-- ("apt install bash")
-- ("apt install nano -y")
-- ("apt install curl -y")
-- ("apt install openssl -y")
-- ("apt install openssh -y")
-- ("apt install wget -y")
-- ("apt install clang -y")
-- ("apt install nmap -y")
-- ("apt install w3m -y")
-- ("apt install hydra -y")
-- ("apt install ruby -y")
-- ("apt install macchanger -y")
-- ("apt install host -y")
-- ("apt install dnsutils -y")
-- ("apt install coreutils -y")
---------------------------------------
