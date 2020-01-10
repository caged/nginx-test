How to use an nginx reverse proxy to serve a subdirectory in nextjs through a subdomain. For example, if you have a pages directory that is structured

```
pages/
  - index.js
  - about.js
  - admin/
      - index.js
      - dashboard.js
```

Typically, you would access the admin pages as `http://host/admin` and `http://host/admin/dashboard`, however if you use nginx reverse proxy, you can use a subdomain to mask the `admin` folder.

- http://admin.host - serves pages/admin
- http://admin.host/dashboard - serves pages/admin/dashboard

It's important to note that you must set the `assetPrefix` in `next.config.js` to the host root when doing this.
