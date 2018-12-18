# umps-apt-installer

Install [umps](https://github.com/tjonjic/umps) using apt

## Installation

- Make `installUmps.sh` executable:
  ```
  chmod +x installUmps.sh
  ```

- Run `installUmps.sh` as **root**:
  ```
  sudo ./installUmps.sh
  ```

## Running umps

- Anywhere:
  ```
  umps2
  ```

- Enjoy :heart:


### Side notes

In order to compile and run the example in `/examples/hello-umps/`:
- In `/Makefile-templ` replace
  ```
  XT_PRG_PREFIX = mipsel-elf-
  ```
  
  with
  
  ```
  XT_PRG_PREFIX = mipsel-linux-gnu-
  ```
- Run
  ```
  make -f Makefile-templ
  ```
  
### Possible issue

If running the installation during the "configure" process appear the error:
"configure: error: cannot find Boost headers version >= 1.34.0"

With root permission lunch:
':~# apt update && apt upgrade -y'
//for upgrade the system

and then:
':~# apt build-dep gearman-job-server'
// you may need restart the system

Try again the installation with 'installUmps.sh'
