Pointsman
================
> Simple haproxy docker image redirecting HTTP => HTTPS behind an AWS ELB

Usage
-----

`docker run -p 8080:8080 -p 8081:8081 -e HTTP_PORT=8080 -e HTTPS_PORT=8081 -e BACKEND_PORT=3000 --name pointsman airvantage/pointsman`

Binds your ELB HTTP listener on `HTTP_PORT` and HTTPS litener on `HTTP_PORT` and your backend with `BACKEND_PORT`.

See `haproxy.cfg` file for more details.

License
-------

MIT © [Sierra Wireless](http://wwww.sierrawireless.com)
