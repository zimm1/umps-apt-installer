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
