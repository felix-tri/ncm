
FROM ubuntu:20.04

# build and fill directories.
RUN mkdir /cfg /build &&\
    chmod 755 /cfg &&\
    chmod 777 /build
ADD ./config/* /cfg/
ADD ./scripts/* /build/


# installs for environment.
RUN /bin/sh /build/install-pkgs.sh &&\
    /bin/sh /build/create-denzel.sh

# user installs.
USER denzel  
RUN . /build/create-virtenv.sh &&\
    . /build/vs-code-install.sh
    
USER root
RUN service ssh start
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]