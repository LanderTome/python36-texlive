# python36-texlive
Basic Python 3.6 and TeX Live-full installation for use as a base image

Uses script from briandk/install-texlive-without-docs.py that gets dependencies from texlive-full, strips out the ones that end in -doc, and then apt-get the rest. This saves over a gigabyte of space from the unnecessary docs.

Python installation adds over 700 megabytes to the image size, but this container is used as a base image for a Python based tex build system so I am okay with that.

Final size, a little over 3 gigabytes.
