# Pelican Container

Ubuntu 24.04-based container image with Pelican and Markdown support.

## Build

```bash
docker build -t pelican:latest -f Containerfile .
```

## Use

```bash
docker run --rm -v $PWD:/workspace pelican:latest content/done -s pelicanconf.py
docker run --rm -v $PWD:/workspace -p 8000:8000 pelican:latest --listen --bind 0.0.0.0
```
