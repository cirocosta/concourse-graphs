USAGE

	1. Clone `github.com/concourse/concourse

	2. Modify `docker-compose.yml` to have an InfluxDB endpoint registered

	    - CONCOURSE_INFLUXDB_URL=http://influxdb:8086
	    - CONCOURSE_INFLUXDB_DATABASE=db
	    - CONCOURSE_INFLUXDB_USERNAME=admin
	    - CONCOURSE_INFLUXDB_PASSWORD=admin

	3. Raise concourse up

	4. Run this repo's docker-compose.yml


TODO
	Separate folders:
		CONCOURSE WORKER
			overall
		CONCOURSE WEB
			overall
		MACHINE
			overall
				quick view of generic metrics across most of the
				resources in the system.

				instance-group
					tag that identifies the type of machine that
					this one pertains to.

				uptime
					so we can know for how long the machine
					has been up

				number of cpus

				cpu
					u: total utilization
					s: runq len
					e: - should we keep track of this?
				memory
					u: total - available
					s: paging?
					e: - should we track this? 
				net
					u: throughput
					s: queueing
					e: drops/overruns ?
				disk
					u: total disk used
					u: % of time servicing IO
					s: wait queue length
					e: device errors
				procs
					u: per-state number of procs

			cpu
				In-depth metrics related to CPU.

				u: all cpu distrs (iowait,user,system,irq,...)
					remark: Usually, constant high `iowait` indicate that disks
						are a bottleneck.
					remark: Usually, constant high `softirq` might indicate 
						problems with network drivers.
				s: load (1m,5m,15m)
				s: scheduler latency
				s: (maybe) context switches?
			memory
			disk
			network
			applications
	

RESOURCES:
	http://www.brendangregg.com/USEmethod/use-linux.html
	https://london.my-netdata.io/#;theme=slate;help=true
	https://www.percona.com/blog/2017/08/04/saturation-metrics-in-pmm-120/

