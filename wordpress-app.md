## Project 
- Automate the deployment of a wordpress app using Bash scrpting, Ansible and Terraform, such that the whole infrastrructure and deployment can be spun up with the run of a few commands. 

## Steps 
- Firstly update your apt repository with `sudo apt update` 
- Install Terraform 
- Install AWS CLI 
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" 
sudo apt install unzip -y
unzip awscliv2.zip
sudo ./aws/install 
``` 
- Create provider.tf 
- Create vpc.tf 
- Create subnet.tf 
- Create my-rt.tf 
- Create my-sg.tf 
- Create igw.tf 
- Create test.tf 
- Create inventory.yml 
- Create playbook.yml 
- Install python3 pip `curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py` 
- Install Ansible `python3 get-pip.py --user` 
```
#go to ansible's cfg file by running 'sudo nano /etc/ansible/ansible.cfg' 
#then insert and change as appropriate; 
#'[defaults]
#inventory = "path to your inventory"
#remote_user = "your remote user"
#private_key_file = "path to your public key.pem" 
``` 
- Download compressed worpress app `wget http://wordpress.org/latest.tar.gz` 
- Extract the compressed file to create the WordPress directory structure `tar -xvzf latest.tar.gz` 
- Change the directory to the WordPress directory and rename the default configuration file `cd wordpress` & `mv wp-config-sample.php wp-config.php` 
```
#sudo nano /tmp/wordpress/wp-config.php 
#then change the database name, user and password to your personal ones 
``` 
- Run terraform init 
- Run terraform plan 
- Run terraform apply 
- Run `ansible all -m ping` 
- Run `ansible playbook playbook.yml` 
