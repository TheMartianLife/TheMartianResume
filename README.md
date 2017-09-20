# The Martian Résumé 
**TMR** is a LaTeX template for a matching **Résumé & Cover Letter** pair, written with minimal interaction in mind. At the beginning of each file is a number of fields for author details, used to generate top- and bottom-matter, followed by a section for the body text or importation of sections. A quick no-fuss way to get simple documents for use anywhere you need to look good.

This package was strongly influenced by (is really just a very lightweight version of) **posquit0**'s [**Awesome-CV**](https://github.com/posquit0/Awesome-CV).

# Preview
| Cover Letter | Resume Page 1 | Resume Page 2 |
|:---:|:---:|:---:|
| [![Cover Letter](/examples/coverletter.png?raw=true)](examples/coverletter-example.pdf) | [![Résumé Page 1](/examples/resume1.png?raw=true)](examples/resume-example.pdf) | [![Résumé Page 2](/examples/resume2.png?raw=true)](examples/resume-example.pdf) |

# Usage
This package uses [The MIT License](https://opensource.org/licenses/MIT). 

It requires the [geometry](http://mirror.aarnet.edu.au/pub/CTAN/macros/latex/contrib/geometry/geometry.pdf), [fancyhdr](http://mirror.aarnet.edu.au/pub/CTAN/macros/latex/contrib/fancyhdr/fancyhdr.pdf), [parskip](http://mirror.aarnet.edu.au/pub/CTAN/macros/latex/contrib/parskip/parskip-doc.pdf), [xcolor](http://mirror.aarnet.edu.au/pub/CTAN/macros/latex/contrib/xcolor/xcolor.pdf), [enumitem](http://mirror.aarnet.edu.au/pub/CTAN/macros/latex/contrib/enumitem/enumitem.pdf) & [fontawesome](http://mirror.aarnet.edu.au/pub/CTAN/fonts/fontawesome/doc/fontawesome.pdf) packages, all of which use [**The LATEX Project Public License**](http://www.latex-project.org/lppl) (LPPL), along with the [import](http://mirror.aarnet.edu.au/pub/CTAN/macros/latex/contrib/import/import.pdf) package, which is **Public Domain**.

# TODO
- Learn about Makefiles or the {subfiles} package: *Make one .tex file that splits and generates both Résumé & Cover Letter using the same author details section*
- Extend \begin{document} to take one argument and begin coverletter or resume environment