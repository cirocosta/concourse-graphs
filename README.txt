1. Clone `github.com/concourse/concourse

2. Modify `docker-compose.yml` to have an InfluxDB endpoint registered

    - CONCOURSE_INFLUXDB_URL=http://influxdb:8086
    - CONCOURSE_INFLUXDB_DATABASE=db
    - CONCOURSE_INFLUXDB_USERNAME=admin
    - CONCOURSE_INFLUXDB_PASSWORD=admin

3. Raise concourse up

4. Run this repo's docker-compose.yml
