FROM gitlab/gitlab-runner:ubuntu-v17.2.0

ADD wget https://github.com/JonasProgrammer/docker-machine-driver-hetzner/releases/download/5.0.2/docker-machine-driver-hetzner_5.0.2_linux_amd64.tar.gz /tmp/docker-machine-driver-hetzner.tar.gz
RUN cd /tmp && \
	tar xvfz docker-machine-driver-hetzner.tar.gz && \
	chmod +x docker-machine-driver-hetzner && \
	mv docker-machine-driver-hetzner /usr/local/bin/ && \
	rm -f /tmp/docker-machine-driver-hetzner.tar.gz
