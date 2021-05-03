#!/bin/bash

printf "Launching API..."
npm start --prefix Evenger-IoT-API/ & npm start --prefix evenger-react-app/ & python Evenger-Can-Listener/local_test.py ; fg
# while [ $? -eq 1 ]; do 
#     printf "Unable to start API, retrying..."
#     nohup npm start --prefix Evenger-IoT-API/
# done

# printf "\n\nLaunching Client..."
# npm start --prefix evenger-react-app/
# while [ $? -eq 1 ]; do 
#     printf "Unable to start Client, retrying..."
#     nohup npm start --prefix evenger-react-app/
# done

# printf "\n\nLaunching Listener..."
# python Evenger-Can-Listener/local_test.py
# while [ $? -eq 1 ]; do 
#     printf "Unable to start Listener, retrying..."
#     nohup python Evenger-Can-Listener/local_test.py
# done