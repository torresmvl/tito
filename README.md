# tito

###### A small container with basic runtime features and security management providing a reliable base image for high-available microservices.

---

### Usage

`tito` uses **GitHub's Container Registry** and can be pulled:

```
docker pull ghcr.io/torresmvl/tito:tag
```

Or directly on **_Dockerfile_**:

```Dockerfile
FROM ghcr.io/torresmvl/tito:tag AS yourApp
```

---

`tito` is based on [Alpine Linux](https://alpinelinux.org) and targets to be a minimal footprint for other applications that lacks of a containerized packaging. It has many flavors that describes it's tags, i.e:

| TAG  | Description                                                                                                                                   | Alpine Version |
| ---- | --------------------------------------------------------------------------------------------------------------------------------------------- | -------------- |
| node | A _NodeJS v14.15.4_ + _NPM v6.14.10_ environment. It comes with **pm2** globally installed                                                    | v3.13          |
| base | It's the base image for all others tags, it simply setup the alpine environment with one passwordless user, **tito** and `tini` as entrypoint | v3.13          |

---

### Links

For changelog, and a more in-depth guides, [read the docs](https://docs.growlab.digital)
