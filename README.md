# Sample Package

This package provides a template for the exam _Coding for Data Science and Data Management_, R module (2019/2020), Master in Data Science and Economics, University of Milan.

## Installation

```R
# first install the R package "devtools" if not installed
devtools::install_github('unimi-dse/15f07018')
```

## Dataset

The package provides a dataset containing the ids for the exam _Coding for Data Science and Data Management_, R module (2019/2020) from https://github.com/unimi-dse

```R
# dataset documentation
?sample::repo
```

## Usage

```R
# load the package
require(sample)
```

### Grade

The function `grade()` supports grading multiple (all) projects at once, and storing results into a csv file. Type `?grade` for a complete description of the function and its arguments.

```R
# grade this project
grade(ids = "15f07018")
```

__Note__: running the function several times or grading many projects at once may raise the error "API rate limit exceeded [...]". If so, create a GitHub token to authenticate requests and increase your rate limit, as explained in the error message.

### Fibonacci

The function `fibonacci()`, implemented in C++, generates the Fibonacci Sequence.

```R
fibonacci(15)
```

### Shiny App

The function `sampleGUI()` runs a Graphical User Interface to evaluate the projects from https://github.com/unimi-dse 

```R
sampleGUI()
```

