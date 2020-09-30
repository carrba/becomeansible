FROM centos:centos7.7.1908

RUN yum check-update; \
    yum install -y gcc libffi-devl python3 epel-release; \
    yum install -y openssh-clients; \
    yum install -y sshpass; \
    pip3 install --upgrade pip; \
    pip3 install ansible

RUN curl https://packages.microsoft.com/config/rhel/7/prod.repo | tee /etc/yum.repos.d/microsoft.repo; \
    yum install -y powershell; \
    pwsh -c "Set-PackageSource -Name PSGallery -Trusted"; \
    pwsh -c "Install-Module AZ -Scope AllUsers"; \
    pip3 install ansible[azure]; \
    yum install -y git; \
    pip3 install "pywinrm>=0.3.0"; \
    pip2.7 install cryptography==2.2.2; \
    pip3 install ansible-lint
