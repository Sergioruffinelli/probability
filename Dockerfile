# This is a CENTOS container for Microsoft Open R with MKL
# Using this container requires compliance with the Terms of Service
# of Microsoft R (Microsoft) and MKL (Intel)

# When building specify the version of R that you want
# Due to changes in the install script of MRO it is not advised
# to try versions much earlier than 3.3.1.

FROM centos:centos7
MAINTAINER jlisic@gmail.com

# Build instructions:
# docker build -t probability:0.0.1 .


# Setup EPEL
RUN yum -y install epel-release && \
    yum -y install R && \
    yum clean all && \
    R --version && \
    Rscript --version








# install need packages
RUN R -e "install.packages('plumber',repo='https://cloud.r-project.org/')"  && \
    R -e "install.packages('xgboost',repo='https://cloud.r-project.org/')"






# using a symlink to get around the lack of dynamic variables in docker
# this is a slightly better way to handle setting up littler than editing
# the text files through sed.
ENV LIBLOC /usr/lib64/R/library
RUN mkdir -p /usr/lib64/R/library

# COPY APP SOURCE CODE
RUN mkdir -p /var/sources/prueba
WORKDIR /var/sources/prueba
ADD . /var/sources/prueba
RUN PATH="/bin:$PATH"
RUN export PATH
# Clean UP
RUN rm -rf /tmp/*
RUN Rscript packages.R

EXPOSE 8080


#CMD Rscript run.R
CMD ["Rscript", "run.R"]
