# mingqingxiaoshuor

## Description

An R Package for Chinese novels around Ming and Qing (dynasties of China).

Inspired by [janeaustenr](https://github.com/juliasilge/janeaustenr) by Julia Silge.

UTF-8 plain text for each novel was originally sourced from [Project Gutenberg](https://www.gutenberg.org/).

## Development

```R
roxygen2::roxygenise()
devtools::check(document = FALSE)
devtools::test()
```

## Installation

```R
library(devtools)
install_github("boltomli/mingqingxiaoshuor")
library(mqxsr)
```

## Citation

`citation(package = 'mqxsr')`

To cite mqxsr in publications use:

  Song Li (2019). An R package for Chinese novels around Ming and Qing. URL
  https://github.com/boltomli/mingqingxiaoshuor/.

A BibTeX entry for LaTeX users is

  @Manual{,  
    title = {Chinese novels around Ming and Qing},  
    author = {Song Li},  
    year = {2019},  
    note = {R package version 0.1.0},  
    url = {https://github.com/boltomli/mingqingxiaoshuor/},  
  }

## License

MIT
