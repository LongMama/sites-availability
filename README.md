Structure of the project:  
.  
├── .dockerignore  
├── .gitattributes  
├── .gitignore  
├── template  
├── Terraform  
│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ├── cron_job.tf  
│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ├── namespace.tf  
│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; └──  variables.tf  
├── Dockerfile  
├── README.MD  
├── requirements.txt  
├── sites_availability.py  
└── sites-availability-playbook.yaml  

To start the project with Docker you need to run the following command:  
  `docker build -t sites-availability-bot .`  
  `docker run -e {BOT_TOKEN} -e {CHAT_IDS with commas} -e {HOSTS with commas} sites-availability-bot`

To start the project with K8S you need to fill vars in sites-availability-playbook.yaml and then run the following command:  
  `ansible-playbook sites-availability-playbook.yaml`  
or you can use Terraform
