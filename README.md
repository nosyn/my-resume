# Resume

My resume written in LaTex.

Can be edit and modify with [Overleaf](https://www.overleaf.com/)

# Use

```
docker build -t latex:latest .
docker run --rm -i -v "$PWD":/data latex pdflatex resume.tex
```
