# The Butler

_The Butler_ is a ready to use static blog, powered by [Cecil](https://cecil.app).

[![The Butler screenshot](/docs/screenshot.png)](https://the-butler.cecil.app "the-butler.cecil.app")

## There is a demo?

:arrow_forward: [the-butler-demo.cecil.app](https://the-butler-demo.cecil.app) (theme: [Hyde](https://github.com/Cecilapp/theme-hyde#readme), host: [Netlify](https://www.netlify.com))  
:arrow_forward: [the-butler-garth.vercel.app](https://the-butler-garth.vercel.app) (theme: [Garth](https://github.com/Cecilapp/theme-garth#readme), host: [Vercel](https://vercel.com))

## How to use?

### Managing content

Create your own repository from the [GitHub template](https://github.com/Cecilapp/the-butler/generate), then just edit Markdown files in `pages/blog/`.

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://cecil.app/hosting/netlify/deploy/ "Deploy to Netlify")

### Customize your blog

1. Change configuration by editing [`config.yml`](https://github.com/Cecilapp/the-butler/blob/master/config.yml) file
2. Change templates by copying files from `themes/<theme>/layouts/` to your own `layouts/` directory to _override_ them
   - [Hyde](https://github.com/Cecilapp/theme-hyde#readme): [`themes/hyde/layouts/`](https://github.com/Cecilapp/theme-hyde/tree/master/layouts)
   - [Garth](https://github.com/Cecilapp/theme-garth#readme): [`themes/garth/layouts/`](https://github.com/Cecilapp/theme-garth/tree/master/layouts)

### Build & deploy

#### Locally

Run the following command in a terminal:

```bash
bash ./scripts/build.sh
```

#### Cloud

| Provider | Demo | Deploy |
|----------|------|--------|
| [Netlify](https://www.netlify.com) | <https://the-butler-demo.cecil.app> | [![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://cecil.app/hosting/netlify/deploy/ "Deploy to Netlify") |
| [Vercel](https://vercel.com) | <https://the-butler.vercel.app> | [![Deploy to Vercel](https://vercel.com/button)](https://cecil.app/hosting/vercel/deploy/ "Deploy to Vercel") |
| ~~[Cloudflare Pages](https://pages.cloudflare.com)~~ | ~~<https://the-butler.pages.dev>~~ | - Framework preset: `None`<br />- Build command: `curl -sSOL https://cecil.app/build.sh && bash ./build.sh`<br />- Build output directory: `_site` |
| [GitHub](https://github.com/features/actions/) | <https://cecilapp.github.io/the-butler/> | See [GitHub Actions workflow file](/.github/workflows/build-and-deploy.yml). |
| [GitLab](https://about.gitlab.com/stages-devops-lifecycle/continuous-integration/) | <https://cecilapp.gitlab.io/the-butler/> | See [GitLab config file.](/.gitlab-ci.yml) |
| ~~[Render](https://render.com)~~ | ~~<https://the-butler.onrender.com>~~ | [![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://cecil.app/hosting/render/deploy/ "Deploy to Render") |
| ~~[Travis CI](https://travis-ci.com)~~ | N/A | See [Travis config file.](/.travis.yml) |

## Need Help?

Read the [Cecil's documentation](https://cecil.app/documentation/) and/or ask help in Cecil's [Discussions](https://github.com/Cecilapp/Cecil/discussions).

## License

_The Butler_ is a free software distributed under the terms of the MIT license.

© [Arnaud Ligny](https://arnaudligny.fr)
