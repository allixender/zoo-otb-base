FROM allixender/zoo-itk-base:latest

# that's me!
MAINTAINER Alex K, allixender@googlemail.com

# ENVs should already come from base
# ENV CGI_DIR /usr/lib/cgi-bin
# ENV CGI_DATA_DIR /usr/lib/cgi-bin/data
# ENV CGI_TMP_DIR /usr/lib/cgi-bin/data/tmp
# ENV CGI_# EACHE_DIR /usr/lib/cgi-bin/data/cache
# ENV WWW_DIR /var/www/html

ADD build-script.sh /opt
ADD CMakeLists.otb.patch /opt

RUN chmod +x /opt/build-script.sh \
  && sync \
  && /opt/build-script.sh
