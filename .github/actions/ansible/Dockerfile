FROM centos:centos7.7.1908

RUN yum check-update; \
    yum install -y gcc libffi-devl python3 epel-release; \
    yum install -y openssh-clients; \
    pip3 install --upgrade pip; \
    pip3 install ansible; \
    curl https://packages.microsoft.com/config/rhel/7/prod.repo | tee /etc/yum.repos.d/microsoft.repo; \
    yum install -y powershell; \ 
    pip3 install ansible[azure]; \
    yum install -y sshpass; \
    yum install -y git; \
    pip3 install "pywinrm>=0.2.7"; \
    pip3 install ansible-lint

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash", "/entrypoint.sh"]