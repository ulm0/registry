FROM scratch

COPY ./bin/registry /bin/registry
COPY ./etc/config-example.yml /etc/docker/registry/config.yml
COPY ./etc/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt

VOLUME ["/var/lib/registry/", "/etc/docker/registry/"]

EXPOSE 5000

ENTRYPOINT ["/bin/registry"]
CMD ["serve", "/etc/docker/registry/config.yml"]
