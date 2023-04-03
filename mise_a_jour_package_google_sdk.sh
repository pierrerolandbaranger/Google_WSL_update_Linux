#!/bin/bash

### Lors d'une mise à jour de votre linux WSL. 
### Err: https://packages.cloud.google.com/apt cloud-sdk InRelease
### Voici le code qui permet de mettre à jour votre librairie SDK Google.


sudo su  - root

apt install apt-transport-https ca-certificates gnupg -y

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee /etc/apt/sources.list.d/google-cloud-sdk.list

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

apt update && apt install google-cloud-sdk -y

gcloud --version

