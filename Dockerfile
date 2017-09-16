FROM vijha1989/tliferay:7
ENV JAVA_HOME=/opt/jdk
ENV JRE_HOME=/opt/jdk/jre
ADD ./deploy /opt/tomcat-8.0.32/deploy/
ADD portal-ext.properties /opt
ADD starterscript.sh /opt
RUN chmod -R 755 /opt/starterscript.sh
RUN /opt/starterscript.sh
RUN apt-get update && apt-get install -y \
    git \
    wget \
    curl \
    vim \
    && apt-get clean
EXPOSE 8080 8009
CMD /usr/bin/liferay
