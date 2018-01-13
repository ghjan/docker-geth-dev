FROM ethereum/client-go

# # our own custom bult geth that mines really fast
# COPY geth /usr/bin/geth

# script that invokes with all those
# command line options
COPY ethereum/alliance-geth/*.sh /usr/bin/
COPY rungeth-alliance.docker /usr/bin/rungeth-alliance

# use non-standard ports so don't accidently connect to real servers
# XXX Docker inheritance doesn't override, it extends the port      list...
EXPOSE 8545 8546 8548 30303 30303/udp 30306 30306/udp

ENTRYPOINT ["/usr/bin/rungeth-alliance"]
