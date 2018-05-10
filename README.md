# sencha-cmd

## how to use

- build image

```bash
cd sencha-cmd
docker build -t sencha-cmd .
```

- run watch

```bash
docker run -it --rm -v /path/to/your/sencha-app:/code sencha-cmd
```

- init sencha app

```bash
docker run -it --rm -v /path/to/your/sencha-app:/code -v /path/to/sencha-sdk:/sdk sencha-cmd sencha -sdk /sdk generate app TestApp /code/test-app -modern
```
