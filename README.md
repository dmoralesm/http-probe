# HTTP Probe

This is a simple http server created with Deno to run it in a remote location in order to hit and check that is reachable through internet.
It responds with an HTTP Status Code `200` and a JSON response:
``` json
{
  "live": "ok"
}
```

### Build container locally
``` console
docker build --rm -t http-probe .
```

### Run container locally
``` console
docker run -itd -p 8000:8000 --restart always http-probe
```

### Get container from Docker Hub
``` console
docker run -itd -p 8000:8000 --restart always davidmna/http-probe
```

Use `--restart` flag to start container automatically after a Docker restart.
