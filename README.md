# cronjob-container: Conveniently run a single cron job in a container

[![Build](https://img.shields.io/github/checks-status/smkent/cronjob-container/main?label=build)][gh-actions]
[![GitHub stars](https://img.shields.io/github/stars/smkent/cronjob-container?style=social)][repo]

# Usage with docker-compose

Example `docker-compose.yaml`:

```yaml
version: '3.7'

services:
  nginx:
    image: ghcr.io/smkent/cronjob-container:latest
    environment:
      CRON_SCHEDULE: "*/5 * * * *"
      CRON_COMMAND: "/path/to/command 2>&1"
      SMTPHOST: "smtp"
      MAILFROM: "cron@example.com"
      MAILTO: "you@example.com"
      # EXPORT_EXTRA_VAR: "foo"   # Add EXTRA_VAR=foo to the crontab
    restart: unless-stopped
    volumes:
      - path/to/command:/path/to/command:ro
```

---

Created from [smkent/cookie-docker][cookie-docker] using
[cookiecutter][cookiecutter]

[cookie-docker]: https://github.com/smkent/cookie-docker
[cookiecutter]: https://github.com/cookiecutter/cookiecutter
[gh-actions]: https://github.com/smkent/cronjob-container/actions?query=branch%3Amain
[repo]: https://github.com/smkent/cronjob-container
