##Install sornarqube on Redhat servers
##Author : Ibrehima Keita 
## Devops engeneer US -Maryland 
sudo useradd sonar
# Grand sudo access to sonar user
sudo echo "sonar ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/sonar
sudo hostnamectl set-hostname sonar 
sudo su - sonar
    1  sudo passwd sonar
    2  sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
    3  sudo service sshd restart
    4  cd /opt
    5  sudo yum -y install unzip wget git
    6  sudo wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
   
    
   12  sudo yum install java-11-openjdk-devel -y
   13  sudo yum install java-11-openjdk-devel
   14  sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.8.zip
   15  sudo unzip sonarqube-7.8.zip
   16  sudo rm -rf sonarqube-7.8.zip
   17  sudo mv sonarqube-7.8 sonarqube
   18  ls
   19  sudo chown -R sonar:sonar /opt/sonarqube/
   20  sudo chmod -R 775 /opt/sonarqube/
   21  sh /opt/sonarqube/bin/linux-x86-64/sonar.sh start
   22  sh /opt/sonarqube/bin/linux-x86-64/sonar.sh status
   23  history
