####################################DevX####################################################
# image 
FROM ubuntu:latest
# update repo and dep / openssh 
RUN apt-get update && apt-get install -y openssh-server
# Configure SSH
RUN mkdir /var/run/sshd
# configure user and passwd
RUN echo 'root:redhat' | chpasswd
#password for user login
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# port expose
EXPOSE 22
# Start SSH server
CMD ["/usr/sbin/sshd", "-D"]
