<!--- -------------------------------------------------------------------- --->

# `uob-dissertation`: a [LaTeX](https://en.wikipedia.org/wiki/LaTeX)-based [UoB](https://www.bris.ac.uk)/[CS](https://www.cs.bris.ac.uk) [dissertation](https://en.wikipedia.org/wiki/Thesis) template

This repository houses a 
[LaTeX](https://en.wikipedia.org/wiki/LaTeX)-based
template for 
[dissertations](https://en.wikipedia.org/wiki/Thesis)
(and associated posters) within the
[Computer Science Department](https://www.cs.bris.ac.uk)
at the
[University of Bristol](https://www.bris.ac.uk);
for example, it supports the Undergraduate-level individual project units
[COMS30045](https://www.bris.ac.uk/unit-programme-catalogue/UnitDetails.jsa?unitCode=COMS30045)
and
[COMSM0052](https://www.bris.ac.uk/unit-programme-catalogue/UnitDetails.jsa?unitCode=COMSM0052).

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

<!--- -------------------------------------------------------------------- --->

## The build system

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

## The `dissertation` template

- The files
  `dissertation.tex`
  and
  `dissertation.bib`
  are the template itself;
  they should be altered to reflect your own content.
  Note that the latter is a 
  [BibTeX](https://en.wikipedia.org/wiki/BibTeX)-based
  bibliography database, as used by the former via the
  [BibLaTeX](https://ctan.org/pkg/biblatex) 
  package.

- The file
  `dissertation.cls`
  is a class, which offers support functionality to and enforces a uniform 
  style on the template;
  it should remain unaltered.
  The class allows a range of options:

  - `author`
    specifies the author     name;
    this should be formatted as
    `FirstName LastName` (not `Initial LastName` for example),
  - `supervisor`
    specifies the supervisor name;
    this should be formatted as
    `FirstName LastName` (not `Initial LastName` for example, and with an optional title such as `Dr.` or `Prof.` if/where it makes sense),
  - `degree`
    specifies the degree programme;
    this should be one of `BSc`, `MEng`, `MSci`, `MSc`, or `PhD`,
  -    `title` 
    and
    `subtitle` 
    specifies the dissertation title and subtitle respectively;
    these should be suitably [capitalised](https://en.wikipedia.org/wiki/Capitalization#Title_case),
  - `type` 
    specifies the dissertation type,
    which depends on the degree programme:

    1. for the MEng degree programme 
       the type should be either `enterprise` or `research` to reflect the stream,
    2. for the MSc  degree programme
       the type should be `$X/Y/Z$` to indicate `X`%, `Y`% and `Z`% of type I, II, and III,
    3. otherwise
       the type is irrelevant, so can be ignored.

  - `year`
    specifies the 4-digit year of submission
    (for example `2014`, rather than an academic year such as `2013/14`).

- The rendered 
  [PDF](https://en.wikipedia.org/wiki/PDF)
  output
  `./build/dissertation.pdf`
  can be selectively built by using the command

  ```sh
  make ./build/dissertation.pdf
  ```

## The `poster`       template

- The files
  `poster.tex`
  and
  `poster.bib`
  are the template itself;
  they should be altered to reflect your own content.
  Note that the latter is a 
  [BibTeX](https://en.wikipedia.org/wiki/BibTeX)-based
  bibliography database, as used by the former via the
  [BibLaTeX](https://ctan.org/pkg/biblatex) 
  package.

- The file
  `poster.cls`
  is a class, which offers support functionality to and enforces a uniform 
  style on the template;
  it should remain unaltered.
  The class allows a range of options:

  - `author`
    specifies the author     name;
    this should be formatted as
    `FirstName LastName` (not `Initial LastName` for example),
  - `supervisor`
    specifies the supervisor name;
    this should be formatted as
    `FirstName LastName` (not `Initial LastName` for example, and with an optional title such as `Dr.` or `Prof.` if/where it makes sense),
  - `degree`
    specifies the degree programme;
    this should be one of `BSc`, `MEng`, `MSci`, `MSc`, or `PhD`,
  -    `title` 
    and
    `subtitle` 
    specifies the dissertation title and subtitle respectively;
    these should be correctly [capitalised](https://en.wikipedia.org/wiki/Capitalization#Title_case),
  - `type` 
    specifies the dissertation type,
    which depends on the degree programme:

    1. for the MEng degree programme 
       the type should be either `enterprise` or `research` to reflect the stream,
    2. for the MSc  degree programme
       the type should be `$X/Y/Z$` to indicate `X`%, `Y`% and `Z`% of type I, II, and III,
    3. otherwise
       the type is irrelevant, so can be ignored.

  - `year`
    specifies the 4-digit year of submission
    (for example `2014`, rather than an academic year such as `2013/14`),
  - `board`
    specifies the poster board number;
    this can be left blank if the board number is unknown.

- The rendered 
  [PDF](https://en.wikipedia.org/wiki/PDF)
  output
  `./build/poster.pdf`
  can be selectively built by using the command

  ```sh
  make ./build/poster.pdf
  ```

<!--- -------------------------------------------------------------------- --->
