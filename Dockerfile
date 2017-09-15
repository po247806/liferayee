FROM vijha1989/liferaypv:7
ENV JAVA_HOME=/opt/jdk
ENV JRE_HOME=/opt/jdk/jre
ADD ./deploy /opt/tomcat-8.0.32/deploy/
ADD portal-ext.properties /opt
RUN starterscript.sh
RUN apt-get update && apt-get --assume-yes install git && apt-get --assume-yes install wget && apt-get --assume-yes install curl && apt-get --assume-yes install vim
EXPOSE 8080 8009
CMD /usr/bin/liferay
