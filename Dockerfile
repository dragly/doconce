FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -qy --no-install-recommends\
    sudo\
    mercurial\
    git\
    subversion\
    texinfo\
    texlive\
    texlive-base\
    texlive-binaries\
    texlive-extra-utils\
    texlive-latex-extra\
    texlive-latex-recommended\
    texlive-math-extra\
    texlive-font-utils\
    texlive-humanities\
    latexdiff\
    auctex\
    texlive-xetex\
    texlive-generic-extra\
    fonts-tlwg-kinnari\
    imagemagick\
    netpbm\
    mjpegtools\
    pdftk\
    giftrans\
    gv\
    evince\
    smpeg-plaympeg\
    mplayer\
    totem\
    libav-tools\
    ispell\
    pandoc\
    python-pip\
    idle\
    python-dev\
    python-pdftools\
    apt-utils\
    build-essential\
    autoconf\
    libxml2-dev\
    libxslt1-dev\
    python-dev\
    zlib1g-dev
    
RUN pip install --upgrade wheel

ADD doc/src/manual/install_doconce.sh /install_doconce.sh
RUN /install_doconce.sh && rm /srclib
