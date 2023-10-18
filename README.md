# DataDome OpenResty demo

This repo tests the DataDome OpenResty module using docker.

For additional information, please check our [public documentation](https://docs.datadome.co/docs/openresty)

## 1 - Configuration

Open file `nginx.conf` and set your `sever-side-key`

## 2 - Build

```
docker image build . -t my-datadome-openresty-image
```

## 3 - Run

```
docker run -d --rm --name myDataDomeOpenResty -p 8282:80 my-datadome-openresty-image
```

## 4 - Test

```
curl -v  http://localhost:8282/
```

You should be able to see DataDome cookie

## 5 - Logs

```
docker logs -f myDataDomeOpenResty
```

## 6 - Stop

```
docker stop  myDataDomeOpenResty
```
