≡ Structure of the project:  
.  
├── .dockerignore  
├── .gitignore  
├── Dockerfile  
├── kub-sites-availability-bot.j2  
├── README.MD  
├── requirements.txt  
├── sites_availability.py  
└── sites-availability-playbook.yaml  

To start the project with Docker you need to run the following command:  
  `docker build -t sites-availability-bot .`  
  `docker run -e {BOT_TOKEN} -e {CHAT_IDS with commas} -e {HOSTS with commas} sites-availability-bot`

To start the project with K8S you need to fill vars in sites-availability-playbook.yaml and then run the following command:  
  `ansible-playbook sites-availability-playbook.yaml`
