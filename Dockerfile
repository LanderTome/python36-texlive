FROM python:3.6.2

# Install all packages the texlive-full installs except leave out all the docs and extra languages
RUN apt-get update && apt-get install -y --no-install-recommends \
    aglfn \
    chktex \
    cm-super \
    cm-super-minimal \
    context \
    dvidvi \
    dvipng \
    feynmf \
    fonts-cabin \
    fonts-comfortaa \
    fonts-crosextra-caladea \
    fonts-crosextra-carlito \
    fonts-dejavu-extra \
    fonts-droid fonts-ebgaramond \
    fonts-ebgaramond-extra \
    fonts-font-awesome \
    fonts-freefont-otf \
    fonts-freefont-ttf \
    fonts-gfs-artemisia \
    fonts-gfs-baskerville \
    fonts-gfs-complutum \
    fonts-gfs-didot \
    fonts-gfs-neohellenic \
    fonts-gfs-olga \
    fonts-gfs-porson \
    fonts-gfs-solomos \
    fonts-hosny-amiri \
    fonts-inconsolata \
    fonts-ipaexfont-gothic \
    fonts-ipaexfont-mincho \
    fonts-ipafont-gothic \
    fonts-ipafont-mincho \
    fonts-junicode \
    fonts-lato \
    fonts-linuxlibertine \
    fonts-lmodern \
    fonts-lobster \
    fonts-lobstertwo \
    fonts-oflb-asana-math \
    fonts-sil-gentium \
    fonts-sil-gentium-basic \
    fonts-stix fragmaster \
    ghostscript \
    gsfonts \
    info \
    install-info \
    lacheck \
    latexdiff \
    latexmk \
    lcdf-typetools \
    libavahi-client3 \
    libavahi-common-data \
    libavahi-common3 \
    libcups2 \
    libcupsfilters1 \
    libcupsimage2 \
    libdbus-1-3 \
    libfile-which-perl \
    libgs9 \
    libgs9-common \
    libharfbuzz-icu0 \
    libijs-0.35 \
    libintl-perl \
    libjbig2dec0 \
    libkpathsea6 \
    libmagick++-6.q16-5 \
    libopenjpeg5 \
    libpaper-utils \
    libpaper1 \
    libplot2c2 \
    libpoppler46 \
    libpotrace0 \
    libpstoedit0c2a \
    libptexenc1 \
    libruby2.1 \
    libsynctex1 \
    libtext-unidecode-perl \
    libxaw7 \
    libxi6 \
    libxml-libxml-perl \
    libxml-namespacesupport-perl \
    libxml-sax-base-perl \
    libxml-sax-perl \
    libxmu6 \
    libzzip-0-13 \
    lmodern \
    m-tx \
    musixtex \
    pfb2t1c2pfb \
    pmx \
    poppler-data \
    prerex \
    preview-latex-style \
    prosper \
    pstoedit \
    psutils \
    purifyeps \
    ruby \
    ruby2.1 \
    rubygems-integration \
    t1utils \
    tex-common \
    tex-gyre \
    tex4ht \
    tex4ht-common\
    texinfo \
    texlive-base \
    texlive-bibtex-extra \
    texlive-binaries \
    texlive-extra-utils \
    texlive-font-utils \
    texlive-fonts-extra \
    texlive-fonts-recommended \
    texlive-formats-extra \
    texlive-games \
    texlive-generic-extra \
    texlive-generic-recommended \
    texlive-humanities \
    texlive-lang-english \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-luatex \
    texlive-math-extra \
    texlive-metapost \
    texlive-music \
    texlive-omega \
    texlive-pictures \
    texlive-plain-extra \
    texlive-pstricks \
    texlive-publishers\
    texlive-science \
    texlive-xetex \
    tipa \
    ttf-adf-accanthis \
    ttf-adf-gillius \
    ttf-adf-universalis \
    xdg-utils &&\
    # clean up all temporary files \
    apt-get clean &&\
    apt-get autoclean -y &&\
    apt-get autoremove -y &&\
    apt-get clean &&\
    rm -rf /tmp/* /var/tmp/* &&\
    rm -rf /var/lib/apt/lists/*

CMD python --version
