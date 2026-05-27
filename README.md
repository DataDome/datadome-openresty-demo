# DataDome OpenResty demo

This repository provides an example of the DataDome OpenResty module using Docker Compose.

For additional information, please check our [public documentation](https://docs.datadome.co/docs/openresty).

## 1 - Configuration

Export your DataDome server-side key (found inside your [DataDome Dashboard](https://app.datadome.co/dashboard/management/integrations)) and the DataDome endpoint:

```
export DATADOME_SERVER_SIDE_KEY=your-server-side-key
export DATADOME_ENDPOINT=api.datadome.co
```

If `DATADOME_SERVER_SIDE_KEY` or `DATADOME_ENDPOINT` is not set, `docker compose up` will fail with an explicit error.

## 2 - Run

```
docker compose up -d
```

## 3 - Test

```
curl -v http://localhost:8282/
```

Your request was protected (the header `X-DataDome: protected` is present) and is shown in your Dashboard.

## 4 - Logs

```
docker compose logs -f
```

## 5 - Stop

```
docker compose down
```
