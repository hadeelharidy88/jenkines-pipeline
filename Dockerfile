FROM ubuntu

RUN apt-get update && apt-get install -y openjdk-11-jdk openssh-server maven git && \
    sed -i 's|session\s*required\s*pam_loginuid.so|session optional pam_loginuid.so|g' /etc/pam.d/sshd && \
    mkdir -p /var/run/sshd

RUN useradd -ms /bin/bash -d /home/jenkins jenkins && echo "jenkins:jenkins" | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]