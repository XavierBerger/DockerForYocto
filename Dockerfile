FROM scratch
ADD docker-image-base-genericx86-64.tar.bz2 /
ENV PS1 '[beber007@mylaptop /home/beber007/yocto/docker]# '
RUN smart channel -y --add all type=rpm-md baseurl=http://repo/all/
RUN smart channel -y --add core2_64 type=rpm-md baseurl=http://repo/core2_64/
RUN smart channel -y --add genericx86_64 type=rpm-md baseurl=http://repo/genericx86_64/
EXPOSE 22
COPY init.sh /usr/bin/init.sh
RUN chmod +x /usr/bin/init.sh
CMD ["init.sh"]
