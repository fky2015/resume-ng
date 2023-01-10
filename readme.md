# Resume-NG

A LaTeX resume designed for optimal information density and aesthetic appeal.

一个旨在实现最佳的信息密度和美学吸引力的 $\LaTeX$ 简历排版模板项目。

<div align="center">
  <img src="https://user-images.githubusercontent.com/16451516/211311263-54c80473-79ce-4af9-af4d-6cd0f5d6edb9.png" width="90%">
</div>

本模板的特性包括：
- 通过调整排版提高简历的信息密度。
- 支持生成 PDF 书签。
- 精简依赖，不默认引入其他字体，不默认引入图标。
- 提供超链接、脚注、非重点内容的排版示例。

## 使用方法

### 本地编译

0. 确保已经安装 LaTeX 发行版。
1. **克隆或下载**本项目代码。
2. 直接运行 `latexmk` 即可。

### Overleaf 在线平台

直接访问并复制[此项目][overleaf]即可。

## 包依赖

如果你使用 TeXLive 发行版，可以直接使用本项目，无需手动安装依赖。

否则，请确保以下依赖安装。

- geometry
- fancyhdr
- enumitem
- footmisc
- hyperref
- xeCJKfntef
- xcolor
- ctex

## 致谢

该项目主要受到 [hijiangtao/resume](https://github.com/hijiangtao/resume) 的启发，
并基于“提高一页简历中的信息密度”这一排版思路而进一步改进，
并采用 $\LaTeX3$ 写成。


[overleaf]: https://www.overleaf.com/read/ygxtzycvwyqm
