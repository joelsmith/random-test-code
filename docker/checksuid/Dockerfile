FROM rhel7:latest

ADD start.sh /usr/local/bin

RUN chmod -R g+rwX /etc/passwd /etc/group && \
    cp -a /usr/bin/grep /usr/local/bin/sugrep && \
    chmod 4755 /usr/local/bin/sugrep

CMD /usr/local/bin/start.sh
