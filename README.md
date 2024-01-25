# Write-Ups and Explanations on the Global Brain Algorithm

*On this site, we collect our explanations and write-ups on 
[The Social Network of the Future](https://github.com/social-protocols/social-network), 
a platform that we build with the aim of enabling collective intelligence at scale.
As of right now, this site is a living document that is subject to rapid change
because we are figuring stuff out along the way. In the long run, we hope to
turn this into a series of explanations that provide an easy introduction to the
concepts behind the platform to anyone who wishes to participate in development.*

---

## Workflows

We use [bookdown](https://github.com/rstudio/bookdown), an R framework for
writing ebooks in RMarkdown.
If you're cloning this repository for the first time and you're using [direnv](https://direnv.net/)
and [nix](https://nixos.org/), simply navigate into this repository and execute `direnv allow`.
The flake included in this repository should then be automatically create your dev environment.

This repository uses [`just`](https://github.com/casey/just) as a command runner.
To render the book, execute:

```
just render
```

Then open `./_book/index.html` in your browser to view the book.

### Adding New Chapters

There are two folders in which you can put new writeups: `chapters` and `writeups`.
Chapters are explanations that went through many iterations and give explanations on the algorithm.
Writeups are on the "cutting edge".
New insights and first explanations of new ideas and concepts.

You can include a chapter or writeup in the docs like this in `index.Rmd`:

````
...

```{r, child='./chapters/XX-your-chapter-title.Rmd'}
# for chapters
```

```{r, child='./writeups/XX-your-writeup-title.Rmd'}
# for writeups
```

...
````


## Deployment

The site is automatically built and deployed on push to `main`. It is available
[here](https://www.social-protocols.org/global-brain).
