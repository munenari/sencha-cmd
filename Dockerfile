FROM openjdk:11-jre-buster

ARG SENCHA_VERSION=7.6.0.87
WORKDIR /tmp

RUN wget http://cdn.sencha.com/cmd/${SENCHA_VERSION}/no-jre/SenchaCmd-${SENCHA_VERSION}-linux-amd64.sh.zip && \
    unzip SenchaCmd-${SENCHA_VERSION}-linux-amd64.sh.zip && \
    ./SenchaCmd-${SENCHA_VERSION}*-linux-amd64.sh -q -dir /opt/sencha/${SENCHA_VERSION} -Dall=true && \
    ln -f -s /opt/sencha/${SENCHA_VERSION}/sencha /usr/local/bin/sencha && \
    rm SenchaCmd-${SENCHA_VERSION}-linux-amd64.sh.zip SenchaCmd-${SENCHA_VERSION}*-linux-amd64.sh

WORKDIR /code
CMD [ "sencha", "app", "watch", "--web-server=false" ]
