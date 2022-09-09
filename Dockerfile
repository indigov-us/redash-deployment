FROM redash/redash:10.1.0.b50633

COPY ./entrypoint.sh /bin/redash-entrypoint
ENTRYPOINT ["/bin/redash-entrypoint"]