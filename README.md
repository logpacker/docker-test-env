## Docker-based test environment for LogPackerFiles:  * Dockerfile.logpacker -- it is builder image for building our application. You can see how we building go-applications inside docker   * docker-compose.yml -- config for docker-compose environment   * lp_service_start.sh -- startup script for LogPacker under supervisor   * random.sh -- load generator, which produce random-length text strings into several files   * supervisor.conf -- main config for supervisor  * supervisord-logpacker-server.conf -- config for logpacker service, running under supervisor   ---[LogPacker](https://logpacker.com)