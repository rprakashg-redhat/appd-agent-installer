FROM registry.access.redhat.com/ubi8/ubi-minimal:8.1

RUN mkdir -p $HOME/appd

WORKDIR $HOME/appd

RUN microdnf install jq unzip

RUN wget https://raw.githubusercontent.com/Appdynamics/appdynamics-agent-downloader/master/get-agent.sh

RUN chmod +x ./get-agent.sh

CMD ["sh", "./get-agent.sh"]
