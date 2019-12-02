# resume

Yaml-based statically generated resume.

## installation

```
$ pip install -r requirements.txt
```

## usage

```
$ python render.py content.yaml index.html.tpl
```

This will generate the rendered HTML file to your standard output. You can redirect it to your convenience

```
$ python render.py content.yaml index.html.tpl > index.html
```

## build

```
$ sh build.sh
```

This will create a `public` directory containing all the necessary to be pushed to whatever web endpoint
