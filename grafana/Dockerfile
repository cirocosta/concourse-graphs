# Explicitly pinning to 5.0.4 so that we're able
# to save automatically provisioned dashboards.
#
# See https://github.com/grafana/grafana/issues/11778 for
# more about it.
FROM grafana/grafana:5.0.4

ADD ./provisioning /etc/grafana/provisioning
ADD ./config.ini /etc/grafana/config.ini
ADD ./dashboards /var/lib/grafana/dashboards
