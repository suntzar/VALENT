 os.execute('clear')

 function init()
  home()
 end

 function home()
  os.execute('clear')  

  local homedir = os.getenv('HOME')

  print(red   ..asciit1..line_d           )
  print(none  ..ascii2 ..fade             )
  print('|your home directory is:'        )
  print('|'   ..homedir..none             )
  print(line_d..red    ..asciip1          ) 
  print(line_d..none   ..ascii4..'\n'..red)

  command  = io.read()
  commandn = command
  commandn = tonumber(commandn)

  if commandn == 0 or commandn == 00 or command == 'exit' then os.execute('clear') print(ascii1..none) os.exit() end
  if commandn == 1 or commandn == 01 then pageA1() end

 end

 function pageA1()
  os.execute('clear')

  local homedir = os.getenv('HOME')
  local all = false

  print(red ..asciit2..line_d          )
  print(none..ascii2..fade             )
  print('|your home directory is:'     )
  print('|'..homedir..none             )
  print(line_d..red..asciip2           )
  print(line_d..none..ascii4..'\n'..red)
  
  command  = io.read()
  commandn = command 
  commandn = tonumber(commandn)

  if commandn == 25 or commandn == 25 then all = true end

  if commandn == 1  or commandn == 01 or all then os.execute('clear') os.execute('apt update    ') os.execute('apt upgrade -y') os.execute('pkg update    ') os.execute('pkg upgrade -y') end
  if commandn == 2  or commandn == 02 or all then os.execute('clear') os.execute('apt install python -y') end 
  if commandn == 3  or commandn == 03 or all then os.execute('clear') os.execute('apt install python2 -y') end 
  if commandn == 4  or commandn == 04 or all then os.execute('clear') os.execute('apt install python3 -y') end
  if commandn == 5  or commandn == 05 or all then os.execute('clear') os.execute('apt install python-dev -y') end
  if commandn == 6  or commandn == 06 or all then os.execute('clear') os.execute('apt install php -y') end
  if commandn == 7  or commandn == 07 or all then os.execute('clear') os.execute('apt install java -y') end
  if commandn == 8  or commandn == 08 or all then os.execute('clear') os.execute('apt install git -y') end
  if commandn == 9  or commandn == 09 or all then os.execute('clear') os.execute('apt install perl -y') end
  if commandn == 10 or commandn == 10 or all then os.execute('clear') os.execute('apt install bash -y') end
  if commandn == 11 or commandn == 11 or all then os.execute('clear') os.execute('apt install lua54 -y') end
  if commandn == 12 or commandn == 12 or all then os.execute('clear') os.execute('apt install curl -y') end
  if commandn == 13 or commandn == 13 or all then os.execute('clear') os.execute('apt install openssl -y') end
  if commandn == 14 or commandn == 14 or all then os.execute('clear') os.execute('apt install openssh -y') end
  if commandn == 15 or commandn == 15 or all then os.execute('clear') os.execute('apt install wget -y') end
  if commandn == 16 or commandn == 16 or all then os.execute('clear') os.execute('apt install clang -y') end
  if commandn == 17 or commandn == 17 or all then os.execute('clear') os.execute('apt install nmap -y') end
  if commandn == 18 or commandn == 18 or all then os.execute('clear') os.execute('apt install w3m -y') end
  if commandn == 19 or commandn == 19 or all then os.execute('clear') os.execute('apt install hydra -y') end
  if commandn == 20 or commandn == 20 or all then os.execute('clear') os.execute('apt install ruby -y') end
  if commandn == 21 or commandn == 21 or all then os.execute('clear') os.execute('apt install macchanger') end
  if commandn == 22 or commandn == 22 or all then os.execute('clear') os.execute('apt install host -y') end
  if commandn == 23 or commandn == 23 or all then os.execute('clear') os.execute('apt install dnsutils') end
  if commandn == 24 or commandn == 24 or all then os.execute('clear') os.execute('apt install coreutils -y') end

  if commandn == 00 or commandn == 00 or command == 'back' then home()   end 
     pageA1()

 end


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

 asciit1 = [[ 
  _ _  ___  _    ___  _ _  ___   ___   _       
 | | || . || |  | __>| \ ||_ _| |   | / |      
 | ' ||   || |_ | _> |   | | |  | / | | |      
 |__/ |_|_||___||___>|_\_| |_|  `___'.|_| ]]   
-------------------------------------------------
 asciit2 = [[
                 _                      
  ___  ___  ___ | |__ ___  ___  ___  ___
 | . \<_> |/ | '| / /<_> |/ . |/ ._><_-<
 |  _/<___|\_|_.|_\_\<___|\_. |\___./__/
 |_|                      <___'           ]]
-------------------------------------------------
 asciit3 = [[
           _  _    _                 
    ___  _| |<_> _| |_  ___  _ _  ___
   / ._>/ . || |  | |  / . \| '_><_-<
   \___.\___||_|  |_|  \___/|_|  /__/     ]]
-------------------------------------------------
 ascii1 = [[
+----+
|bye!|
+----+    ]]
-------------------------------------------------               
 ascii2 = [[
+----------------------------------------+
|tool instaler to termux.                |
+----------------------------------------+
|coded by L7   |   valent v0.1 (beta)    |
+----------------------------------------+ ]]
-------------------------------------------------
 asciip1 = [[
 [01] packages
 [02] editors
 [03] api
 [04] nil
 [05] nil
 [06] nil
 [07] nil
 [08] nil
 [09] nil
 [10] nil
 [11] nil
 [12] nil
 [13] nil
 [14] nil
 [15] nil
 [16] nil
 [17] nil
 [18] nil
 [19] nil
 [20] nil
 [21] nil
 [22] nil
 [23] nil
 [24] nil
 [25] nil

 [00] exit  ]]
-------------------------------------------------
 asciip2 = [[
 [01] apt/pkg       
 [02] python          
 [03] python2         
 [04] python3          
 [05] python-dev      
 [06] php
 [07] java
 [08] git
 [09] perl
 [10] bash
 [11] lua54
 [12] curl
 [13] openssl
 [14] openssh
 [15] wget
 [16] clang
 [17] nmap
 [18] w3m
 [19] hydra
 [20] ruby
 [21] macchanger
 [22] host
 [23] dnsutils
 [24] coreutils
 [25] install all

 [00] back  ]]
--------------------------------------------------
 ascii4 = [[
+----------------------------------------+
|this command for access storage:        |
|$ termux-setup-storage                  |
+----------------------------------------+ ]]

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
