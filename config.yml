title: "Starter blog"
baseline: "Your blog's butler."
description: "A ready to use static blog, powered by Cecil and Hyde."
baseurl: "/"
canonicalurl: true
theme: "hyde"
date:
  format: "j F Y"
  timezone: "Europe/Paris"
pagination:
  max: 5
  path: "page"
output:
  formats:
    netlify_redirects:
      mediatype: "text/plain"
      extension: ""
virtualpages:
  admin:
    layout: admin/index
    output: html
    title: "Content Manager (Netlify CMS)"
  _redirects:
    output: netlify_redirects
netlify:
  cms:
    path: "admin"
    version: "latest"
  identity:
    version: "v1"
