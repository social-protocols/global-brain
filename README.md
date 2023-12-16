# Write-Ups and Explanations on the global brain algorithm

On this site, we collect our explanations and write-ups on 
[The Social Network of the Future](https://github.com/social-protocols/social-network), a platform that we build with the
aim of enabling large-scale intelligent conversations.
As of right now, this site is a living document that is subject to rapid change
because we are figuring stuff out along the way. In the long run, we hope to
turn this into a series of explanations that provide an easy introduction to the
concepts behind the platform to anyone who wishes to participate in development.

## Workflows

We use [bookdown](https://github.com/rstudio/bookdown), an R framework for
writing ebooks in RMarkdown.

For a simple iteration workflow, there is a `justfile` in this repository which
provides two recipes:

```
just render  # render the book
just watch   # watch and rerender on changes
```

The site is automatically built and deployed on push to `main`. It is available
[here](https://www.social-protocols.org/global-brain).
