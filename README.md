# Mercure Hub

The [Mercure](https://mercure.rocks) hub that is powering real-time features on our apps using
[Server-Sent Events](https://en.wikipedia.org/wiki/Server-sent_events).

> [!NOTE]
> This repository is used by the production environment only. In the local environment, there's no need to clone it
> unless you have to update what's running in production.

## The Scalingo buildpack

This repo implements a custom Scalingo [buildpack](https://doc.scalingo.com/platform/deployment/buildpacks/custom)
tailored to run a Mercure hub using the standalone `mercure` executable.

Since this repo is [private](https://doc.scalingo.com/platform/deployment/buildpacks/custom#private-buildpack), the
buildpack is provided as a `tar.gz` archive.

## The `mercure` executable

This executable is versioned. To update it, run `./scripts/update.sh` and commit the resulting changes.