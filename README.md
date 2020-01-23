# Sample Package

I'm a better student :) This package assigns a grade (pass/fail) to the projects for the exam _Coding for Data Science and Data Management_, R module (2019/2020), Master in Data Science and Economics, University of Milan.

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

Grade this project:

```R
sample::grade(ids = "15f07018")
```

The function `sample::grade()` supports grading multiple (all) projects at once, and storing results into a csv file. 

Type `?sample::grade` for a complete description of the function and its arguments.

__Note__: running the function several times or grading many projects at once may raise the error "API rate limit exceeded [...]". If so, create a GitHub token to authenticate requests and increase your rate limit, as explained in the error message.

