# Mercure Hub

The [Mercure](https://mercure.rocks) hub that is powering real-time features on our apps using
[Server-Sent Events](https://en.wikipedia.org/wiki/Server-sent_events).

This repo implements a custom Scalingo [buildpack](https://doc.scalingo.com/platform/deployment/buildpacks/custom)
tailored to run a Mercure hub using the latest version of the standalone `mercure` executable.