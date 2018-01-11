FROM ethereum/client-go

# # our own custom bult geth that mines really fast
# COPY geth /usr/bin/geth

# script that invokes with all those
# command line options
COPY rungeth.docker /usr/bin/rungeth

# these two files and directory of geth state belong together and must be
# kept in sync if changes  are ever made
# Note we are taking advantage of Docker's copy-on-mount feature
COPY Testchaini_david.json  /root/Testchaini_david.json
COPY *.sh  /root/
COPY ethereum /root/.ethereum

ENTRYPOINT ["/usr/bin/rungeth"]

# use non-standard ports so don't accidently connect to real servers
# XXX Docker inheritance doesn't override, it extends the port      list...
EXPOSE 8545 8546 30303 30303/udp 30304/udp
EXPOSE 6110
