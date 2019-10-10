FROM amazonlinux:2

RUN yum -y update && \
    yum -y install saxon && \
    amazon-linux-extras install -y corretto8 && \
    yum clean all

RUN /usr/sbin/useradd -ms /bin/bash saxon
USER saxon
WORKDIR /app/saxon
COPY . /app/saxon

ENV CLASSPATH="/usr/share/java/saxon.jar"
CMD ["java", "-jar", "jars/nailgun-server-1.0.0-SNAPSHOT.jar"]
