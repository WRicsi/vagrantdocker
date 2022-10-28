Hello, welcome to Team One's week 11 project "Round Robin Rondo" !
We added a vagrant file with complete provisoning for easy use, and a script to build the containers
All you need is Vagrant and Oracle VM installed on your machine (host, propably windows)
IMPORTANT: !!!  if you dont want to use vagrant comment out the 2. line in every tunnel sh !!!

How to use :
1. Pull/Clone repo (duh)
2. Put codecool id_rsa into repo root
3. Go into vagrant dir [../<yourgithubfolder>/<reponame>/vagrant]
4. Run vagrant up , it will auto install may take a few minutes
5. Run vagrant ssh
6. Type ./innit.sh [options]  < db >< lb >< web1 >< web2 >< web3 >< all >
7. Checkout in your browser : http://3.74.231.211:11000 lb
                              http://3.74.231.211:11101 web1
                              http://3.74.231.211:11102 web2
                              http://3.74.231.211:11103 web3
                              http://3.74.231.211:11201 db                       
8. DONE :)

Info:
  Dependenies: Vagrant , Oracle VM
  Ports used:
        Container   VM      Codecool    host [up to you , fill it if you want!]
lb  :   80          80      11000
web1:   8080        8081    11101
web2:   8080        8082    11102   
web3:   8080        8083    11103
db  :   5432        5432    11201                       

Note: At the moment you have to shut down every Container with "docker stop" and every autossh with "kill -9" , or resart vagrantvm.
    !!!  if you dont want to use vagrant comment out the 2. line in every tunnel sh !!!

ToDo: "kill" script

Thanks for checking us out!
Authors:  Fekete Zsanett
          Füleki László
          Sallér Imre
          Szantó Szantina
          Weibl Richárd
