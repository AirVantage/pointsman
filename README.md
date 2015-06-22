Pointsman
================
> Simple haproxy docker image redirecting HTTP => HTTPS behind an AWS ELB

Usage
-----

`docker run -p 8080:8080 -p 8081:8081 -e FRONTEND_PORT=8080 -e BACKEND_PORT=3000 --name pointsman airvantage/pointsman`

Binds your ELB HTTP and HTTPS listeners on `FRONTEND_PORT`  and your backend with `BACKEND_PORT`. We also open `:8081` port for the ELB health check.


```
                                    -->  HTTPS      HTTP
                                   |       |        |
                                   |       v        v
                   ----------------|----[:443]----[:80]----
           ELB    |                |       |        |      |
                  |  healthcheck   |       |_     _ |      |
                  |       |        |          |  |         |
                  |-------|--------|----------|--|---------|
                          |        |          v  v
                   ----[:8081]-----|--------[:8080]--------
                  |       |        |           |           |
            EC2   |       |         -------- HTTPS?        |
                  |       V                    |           |
                  |    checker              frontend       |
                  |                            |           |
                  |                         [:3000]        |
                  |                         backend        |
                  |________________________________________|
                  

```

See `haproxy.cfg` file for more details.

License
-------

MIT © [Sierra Wireless](http://wwww.sierrawireless.com)
