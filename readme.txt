NAME: httpd container

RUN:
1. podman login quay.io
2. podman pull quay.io/xfmbi9/xfmbi9
3. sudo podman run --rm -d --name apache -it -p 10080:443 quay.io/xfmbi9/xfmbi9:latest

in browser: http://127.0.0.1:10080
