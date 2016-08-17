FROM continuumio/anaconda

# Fix issue with httpredir.debian.org failing
RUN sed --in-place 's/httpredir.debian.org/mirrors.rackhosting.com/' /etc/apt/sources.list
RUN apt-get update && \
    apt-get install -qq\
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
    python-pdftools

ADD doc/src/manual/install_doconce.sh /install_doconce.sh
RUN /install_doconce.sh
