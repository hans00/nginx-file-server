Nginx File Server
===

The static file server based on Nginx.


Introduction
---

## Start the service

```sh
docker run -d --restart-always -p 80:80 -v ${path_to_store}:/var/www hans00/nginx-file-server
```

## Services

- Nginx
	- Public static file access
	- WebDAV
		- default is `<URL>/dav/` with account `admin:admin`

## Enviroments

### `HTPASSWD`

The account to access WebDAV service.

Default: `admin:$apr1$1LqDxPYe$bfT20Jzj5t.x85KCcm/ac.` \(admin:admin\)

### `BODY_SIZE`

It's apply to `client_max_body_size` this config.

Default: `16M`

### `DAV_PATH`

Path to access WebDAV service.

Default: `/dav`

### `CORS`

CORS header. [\[docs\]](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS)

Defailt: `none`
