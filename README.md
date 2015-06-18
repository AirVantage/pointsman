Pointsman
================
> Simple haproxy docker image redirecting HTTP => HTTPS

Usage
-----

`docker run -p 8080:8080 -e BINDING_PORT=8080 -e BACKEND_PORT=8081 --name pointsman airvantage/pointsman`

Binds your frontend with `BINDING_PORT` environnement variable and your backend with `BACKEND_PORT`.

See `haproxy.cfg` file for more details.

License
-------

MIT © [Sierra Wireless](http://wwww.sierrawireless.com)
