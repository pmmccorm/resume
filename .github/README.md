## Typst resume workflow

After years of LaTeX tyranny I have converted to its successor: Typst.

The tooling is much cleaner (just cargo install typst-cli!) and the only speed bump I encountered was fonts.

The upstream typst container contains just a handful of fonts:

```
$ docker run ghcr.io/typst/typst:0.14.0-rc.1 fonts
DejaVu Sans Mono
Libertinus Serif
New Computer Modern
New Computer Modern Math
```

And I just wanted to have a wide selection to choose from, managed by the fine Ubuntu packagers, versus having to go and curl a bunch of font tarballs on each build or whatever.

So I built a mostly version-unlocked container which upon each build will pull in latest stable:
1. awesomefonts
2. cargo/rust from rustup
3. typst from cargo

An additional improvement over the latex workflow is it is now workably fast to compile and view the resume locally: no more 2GB docker container containing the entire Latex universe.
