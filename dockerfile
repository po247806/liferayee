FROM debian:8
ENV JAVA_HOME=/opt/jdk
ENV JRE_HOME=/opt/jdk/jre
ADD ./liferay7sp4 /opt/
RUN chmod -R 777 /opt
RUN echo export JAVA_HOME=/opt/jdk > /usr/bin/liferay
RUN echo export PATH=$PATH:$JAVA_HOME/bin >> /usr/bin/liferay
RUN echo /opt/tomcat-8.0.32/bin/catalina.sh run >> /usr/bin/liferay
RUN chmod -R 777 /usr
EXPOSE 8080 8009
USER 10001
CMD /usr/bin/liferay

