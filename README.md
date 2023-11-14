# Assignment Template

LaTex template for general Assignments for example at University

## Usage

This document needs to be built with `latexmk`.

```bash
latexmk -pdf -output-directory=$OUTDIR $ENTRYPOINT
```

To make this template easier to use, it includes a make file with build commands.

- `make pdf`: Build the PDF document (output directory `build/`)
- `make listen`: Listen to file changes and automatically build pdf
- `make clean`: Remove `build/` directory and rebuild PDF

By default the make file uses `main.tex` as entrypoint for the document but you can provide an alternative entrypoint by setting the `FILE` environment variable:

```bash
FILE=my_assignment.tex make pdf
```

## Configuration

The heading of the document can be configured by setting three commands:

- `\assignmentSubject`: Subject of your assignment
- `\assignmentTitle`: Title of the assignment (e.g. Assignment 1)
- `\assignmentAuthors`: Author or Authors
- `\facultyHeader`: Header for your specific faculty (see [below](#faculty-headers))

For further personalisation you can use the usual `scrartcl` options. The `assignment` document class uses `scrartcl` as base class. If you pass any option/argument to the `assignment` class it will be passed through to `scrartcl`

### Faculty Headers

The `\facultyHeader` command can be used to insert a faculty header before the title.

> If you don't want to use  a faculty header, simply define `\facultyHeader` empty

#### TUM Headers

The Template includes a preset for the EI faculty at the Technische Universität München where you can insert the path to the department logo, the department name and name of the Professor.

```latex
\eiFacultyHeader{path/to/logo.png}{Department Name}{Professor Name}
```

> There are also some departments already supported. You can find all commands in the `tumheaders.sty` package. If you want to add a new department, feel free to submit a pull request.