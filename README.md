<!--- -------------------------------------------------------------------- --->

# `uob-dissertation`: a [UoB](https://www.bris.ac.uk)/[CS](https://www.cs.bris.ac.uk) [dissertation](https://en.wikipedia.org/wiki/Thesis) template

*This repository houses a 
[LaTeX](https://en.wikipedia.org/wiki/LaTeX)-based
template for 
[dissertations](https://en.wikipedia.org/wiki/Thesis)
(and associated posters) within the
[Computer Science Department](https://www.cs.bris.ac.uk)
at the
[University of Bristol](https://www.bris.ac.uk).*

<!--- -------------------------------------------------------------------- --->

## Organisation

```
├── build                  - working directory for build
├── image                  - images, e.g., logos, etc.
├── Makefile               - make-based build system
├── dissertation.cls       - dissertation template:  LaTeX class
├── dissertation.tex       - dissertation template:  LaTeX source
├── dissertation.bib       - dissertation template: BibTeX source
├── poster.cls             - poster       template:  LaTeX class
├── poster.tex             - poster       template:  LaTeX source
└── poster.bib             - poster       template: BibTeX source
```

<!--- -------------------------------------------------------------------- --->

## Quickstart (with more detail in the [wiki](https://github.com/danpage/uob-dissertation/wiki))


### Using LaTeX

- Writing
  [LaTeX](https://en.wikipedia.org/wiki/LaTeX)-based
  documents can be challenging, but various (online) resources can at least 
  help you get started: see, for example, related
  [user groups](https://www.tug.org),
  [forums](https://tex.stackexchange.com),
  [books](https://en.wikibooks.org/wiki/LaTeX),
  [tutorials](https://www.learnlatex.org),
  etc. 

- A huge range of packages exists, which can be used to support and enhance 
  your document; these can normally be found via the
  [Comprehensive TeX Archive Network (CTAN)](https://www.ctan.org).

- To produce rendered output, e.g., a
  [PDF](https://en.wikipedia.org/wiki/PDF),
  you'll need a
  [LaTeX](https://en.wikipedia.org/wiki/LaTeX)
  installation: available options include

  1. a  local installation, e.g.,
     [TeX Live](https://www.tug.org/texlive),
     or
  2. a hosted installation, e.g., 
     [Overleaf](https://www.overleaf.com),
     on which you can start by 
     [copying](https://www.overleaf.com/learn/how-to/Copying_a_project)
     the same
     [template](https://www.overleaf.com/read/qjzrwzyvczdd).

### Using the template(s)

- There are two templates:
  the 
  [the `dissertation` template](https://github.com/danpage/uob-dissertation/wiki/dissertation.{cls,tex,bib}) 
  is for the dissertation itself,
  whereas
  [the `poster`       template](https://github.com/danpage/uob-dissertation/wiki/posters.{cls,tex,bib})
  is for associated posters.

- The file
  `Makefile`
  captures the 
  [`make`](https://en.wikipedia.org/wiki/Make_(software))-based
  build system: the directory
  `./build`
  is used to capture all built output.

- Targets in `Makefile` automate common tasks, e.g.,

  - the command

    ```sh
    make clean
    ```

    will remove all output, 
    i.e., *everything* in `./build`,

  - the command

    ```sh
    make all
    ```

    will build  all output, 
    e.g., `./build/dissertation.pdf` and `./build/poster.pdf`.

<!--- -------------------------------------------------------------------- --->
