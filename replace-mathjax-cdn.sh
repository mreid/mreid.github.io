#!/bin/zsh
OLD='src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"'
NEW='async src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.7/MathJax.js?config=TeX-MML-AM_CHTML"'
find . -type f \( -iname "*.htm" -o -iname "*.html" \)  -exec sed -i.bak "s#${OLD}#$NEW}#" '{}' +
