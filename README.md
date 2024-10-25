# K8S Playground

## Onboard a service

1. Init service source

Services should be listen port 8080

```
<root>
    service/
        <service_name>/
            .Dockerfile
```

2. Build service image

```
make image name=<service_name>
```

The current commit hash will be taken as the image tag
