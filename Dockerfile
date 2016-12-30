FROM ubuntu

# File Author / Maintainer
MAINTAINER mbills


# Update the repository sources list and install the dependencies 
RUN apt-get update && apt-get install -y \
wget \
apache2 \
owncloud \
mariadb-server 
  
  # We will first download the release key associated with the ownCloud software:

  CMD ["cd /tmp \
  wget http://download.opensuse.org/repositories/isv:ownCloud:community/xUbuntu_14.04/Release.key \
  sudo apt-key add - < Release.key"]
  
  # Then we can add the ownCloud 7 repository as follows:
  CMD ["sudo sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/community/xUbuntu_14.04/ /' >> \
  /etc/apt/sources.list.d/owncloud.list"]
  
  EXPOSE 80
  RUN service apache2 start
  
