![Logo](phpdocumentor.png?raw=true)

# phpDocumentor-deb


Debian package for https://github.com/phpDocumentor/phpDocumentor

Installation
------------

```shell
sudo apt install lsb-release wget
echo "deb http://repo.vitexsoftware.cz $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/vitexsoftware.list
sudo wget -O /etc/apt/trusted.gpg.d/vitexsoftware.gpg http://repo.vitexsoftware.cz/keyring.gpg
sudo apt update
sudo apt install phpdocumentor
```


