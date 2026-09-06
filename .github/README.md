## Typst resume workflow

After years of LaTeX tyranny I have converted to its successor: Typst.

The tooling is much cleaner and the whole thing builds out of the upstream
container, which ships the fonts this resume actually uses:

```
$ docker run ghcr.io/typst/typst:0.15.1 fonts
DejaVu Sans Mono
Libertinus Serif
New Computer Modern
New Computer Modern Math
```

The resume is set in Libertinus Serif, so there is nothing to install and no
custom image to maintain: no curling font tarballs on each build, no checking
`.ttf`s into git.

Build it locally with `make`, which drops `resume.pdf` in the working
directory. GitHub Actions runs the same container on every push to `master`
and publishes the PDF to GitHub Pages.

An additional improvement over the LaTeX workflow is it is now workably fast to
compile and view the resume locally: no more 2GB docker container containing the
entire LaTeX universe.
