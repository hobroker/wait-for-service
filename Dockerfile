FROM gcr.io/kubernetes-e2e-test-images/dnsutils:1.3
ENV SLEEP_TIME=2

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
