# Resume-NG

A LaTeX resume designed for optimal information density and aesthetic appeal.

<div align="center">
  <img src="https://github.com/fky2015/resume-ng/assets/16451516/57eb6d6e-3bc0-4012-92bf-baad362d77be" width="90%">
</div>

The features of this template include:
- Increased information density of the resume through layout adjustments.
- Support for generating PDF bookmarks.
- Minimal dependencies, no default inclusion of additional fonts or icons.
- Examples of formatting hyperlinks, footnotes, and non-emphasized content.
- (🖼️) Support for inserting photos (please refer to the code comments).

## Usage

### Local Compilation

0. Make sure you have installed a LaTeX distribution.
1. **Clone or download** the code of this project.
2. Simply run `latexmk`.

### Overleaf Online Platform

You can directly access [this link][overleaf].

## Macros

Common usage can be found in the example content in `main.tex`.

- `\ResumeName{}` defines the resume title (usually the name).
- `\ResumeContact{}` adds a contact information.
- `\ResumeContacts{itemA, itemB, itemC}` adds multiple contact information.
- `\ResumeTitle` renders the title and contact information.
- `\section{}` section title.
- `\ResumeItem[]{}[][]`
  1. Optional parameter, controls the content of PDF bookmarks. If not provided, parameter 2 is used.
  2. Item title, left-aligned.
  3. Optional parameter, additional information displayed after parameter 2.
  4. Optional parameter, right-aligned.
- `\GrayText{}` changes the text content to gray.
- `\ResumeUrl{}{}` `\href` command with underline, same usage as `\href`.

> `[]` denotes optional parameters, `{}` denotes required parameters.

## Useful Resources

- [Resume Improvement](https://intdouble.com/resume/)
- GPTs

## Acknowledgements

This project was primarily inspired by [hijiangtao/resume](https://github.com/hijiangtao/resume) and further improved based on the layout concept of "increasing information density in a single page resume". It is written in $\LaTeX3$.


[overleaf]: https://www.overleaf.com/docs?snip_uri=https://github.com/fky2015/resume-ng/releases/latest/download/resume-ng-en.zip&engine=xelatex
