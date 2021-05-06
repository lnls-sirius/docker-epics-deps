Base image containing OS packages

## Build
**docker-compose** must be used to build the images in order to are set the labels accordingly.

The variables defined at [`.env`](.env) are used during the build process and should be updated using the [`scripts/config.sh`](scripts/config.sh).

```bash
./scripts/config.sh
docker-compose build <service_name>
```
