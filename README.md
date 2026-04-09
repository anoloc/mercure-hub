# Mercure Hub

The [Mercure](https://mercure.rocks) hub that is powering real-time features on our apps through
[Server-Sent Events](https://en.wikipedia.org/wiki/Server-sent_events).

> [!NOTE]
> This repository is used by the production environment only. In local environment, there's no need to clone it unless
> you have to update the Mercure executable.

## Prerequisites

  - Docker
    - This container is part of a [larger Docker Composer project](https://github.com/anoloc/docker)

## Installation

In our aforementioned Docker project, run `docker compose up -d anoloc-mercure-hub` (use `--build` to force rebuild).

## Production environment

The `mercure` executable is used, which is versioned in this repository. To update this executable, run
`./scripts/download.sh` and commit the resulting changes.