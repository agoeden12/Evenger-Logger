#!/bin/bash

printf "Cloning API repository"
git clone https://github.com/agoeden12/Evenger-IoT-API.git
if [ $? -eq 0 ]; then
   printf "Cloning successful\n\n"
   cd Evenger-IoT-API
   npm install
else
   printf "\nUnable to clone API repository please try to manually clone:"
   printf "\n\t$ git clone https://github.com/agoeden12/Evenger-IoT-API.git"
   printf "\n\t$ cd Evenger-IoT-API"
   printf "\n\t$ npm install"
fi

printf "\n\nCloning Python Listener repository"
git clone https://github.com/agoeden12/Evenger-Can-Listener.git
if [ $? -eq 0 ]; then
   printf "Cloning successful\n\n"
   cd Evenger-Can-Listener
   python -m pip install python-can websockets asyncio requests
else
   printf "\nUnable to clone Python Listener repository please try to manually clone:"
   printf "\n\t$ git clone https://github.com/agoeden12/Evenger-Can-Listener.git"
   printf "\n\t$ cd Evenger-Can-Listener"
   printf "\n\t$ python -m pip install python-can websockets asyncio requests"
fi

printf "\n\nCloning Client WebApp repository"
git clone https://github.com/agoeden12/evenger-react-app.git
if [ $? -eq 0 ]; then
   printf "Cloning successful\n\n"
   cd evenger-react-app
   npm install
else
   printf "\nUnable to clone Client WebApp repository please try to manually clone:"
   printf "\n\t$ git clone https://github.com/agoeden12/evenger-react-app.git"
   printf "\n\t$ cd evenger-react-app"
   printf "\n\t$ npm install"
fi