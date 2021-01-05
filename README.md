# The Butler

> A ready to use static blog, powered by [Cecil](https://cecil.app).

![Cecil preview](static/images/cecil-preview.png)

## There is a demo?

:arrow_forward: [the-butler-demo.cecil.app](https://the-butler-demo.cecil.app) (theme: [Hyde](https://github.com/Cecilapp/theme-hyde#readme))  
:arrow_forward: [the-butler-garth.now.sh](https://the-butler-garth.now.sh) (theme: [Garth](https://github.com/Cecilapp/theme-garth#readme))

## How to use?

### Managing content

#### [Forestry](https://forestry.io) CMS

If your goal is managing content quickly, and decide later where to deploy to it, use the following button to import the starter blog to Forestry CMS and start editing immediatelly!

[![Import this project into Forestry](https://assets.forestry.io/import-to-forestryK.svg)](https://cecil.app/cms/forestry/import/)

#### Manually

Edit content files in `content/blog/` directly from your repository.

### Build & deploy

#### Locally

Run the following command in a terminal:

```bash
bash ./scripts/build.sh
```

#### [Netlify](https://www.netlify.com) ([demo](https://the-butler-demo.cecil.app))

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/Cecilapp/the-butler&stack=cms)

To use [**Netlify CMS**](https://www.netlifycms.org) ([demo](https://the-butler-demo.cecil.app/admin/)) you must:

1. enable [Netlify Identity](https://docs.netlify.com/visitor-access/git-gateway/#setup-and-settings) and Git Gateway
2. invite a user
3. connect to `https://<your-blog>.netlify.com/admin/` with the user credentials

#### [Vercel](https://vercel.com) ([demo](https://vercel.cecil.app))

[![Deploy to Vercel](https://vercel.com/button)](https://vercel.com/import/project?template=https://github.com/Cecilapp/the-butler)

#### [Render](https://render.com) ([demo](https://the-butler.onrender.com))

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/Cecilapp/the-butler)

#### [GitHub Actions](https://github.com/features/actions) ([demo](https://cecilapp.github.io/the-butler/))

See [GitHub Actions workflow file](/.github/workflows/build-and-deploy.yml).

#### [GitLab CI](https://about.gitlab.com/stages-devops-lifecycle/continuous-integration/) ([demo](https://narno.gitlab.io/the-butler/))

See [GitLab config file](/.gitlab-ci.yml).

#### [Travis CI](https://travis-ci.com)

See [Travis config file](/.travis.yml).

### Customize your blog

1. Update configuration by editing `config.yml` file
2. Change templates by copying files from `themes/<theme>/layouts/` to your own `layouts/` directory to _override_ them.

## Need Help?

Read the [Cecil's documentation](https://cecil.app/documentation/).

## License

The Butler is a free software distributed under the terms of the MIT license.

© [Arnaud Ligny](https://arnaudligny.fr)
