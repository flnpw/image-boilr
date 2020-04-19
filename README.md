# flnpw/boilr

This repo has boilr installed for using on multilayer builds, as a installer or
as is.

## How to use

Using this image in a multilayered Dockerfile and fetching boilr from it:
```
FROM flnpw/boilr AS boilr
...
FROM myimage
...
COPY --from=boilr /usr/local/bin/boilr /<wherever>/boilr
...
```

Using this image as a local installer:
```
docker run --rm -ti \
  --entrypoint='' \
  -v /usr/local/bin:/target \
  flnpw/boilr \
  cp /usr/local/bin/boilr /target
```


