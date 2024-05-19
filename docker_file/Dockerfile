FROM gentoo/stage3

ENV FEATURES sign
ENV PORTAGE_GPG_DIR ~/.gnupg/

RUN mkdir -p /usr/portage/gentoo && emerge-webrsync && emerge --sync && \
    eselect profile set default/linux/amd64/23.0 && emerge app-crypt/gnupg \
    dev-vcs/git --autounmask-write && \
    mkdir -p /usr/local/portage/ros-overlay \
    mkdir -p /etc/portage/repos.conf && \
    echo "[ros-overlay]" > /etc/portage/repos.conf/ros-overlay.conf &&\
    echo "location = /usr/local/portage/ros-overlay" >> /etc/portage/repos.conf/ros-overlay.conf &&\
    echo "sync-type = git" >> /etc/portage/repos.conf/ros-overlay.conf && \
    echo "sync-uri = https://github.com/ros/ros-overlay" >> /etc/portage/repos.conf/ros-overlay.conf && \
    echo "priority = 100" >> /etc/portage/repos.conf/ros-overlay.conf && \
    echo "masters = gentoo" >> /etc/portage/repos.conf/ros-overlay.conf && \
    echo 'ACCEPT_KEYWORDS=~amd64' >> /etc/portage/make.conf && \
    printf 'USE="X compat -bindist"\n' >> /etc/portage/make.conf && \
    eselect profile set default/linux/amd64/23.0/desktop && \
    emaint sync -r ros-overlay && \
    emerge --oneshot portage && \
    echo "ros-noetic/* PYTHON_SINGLE_TARGET: -* python3_10" >> /etc/portage/package.use/iputils && \
    echo "sys-libs/zlib minizip" >> /etc/portage/package.use/iputils && \
    echo "sci-libs/vtk rendering java" >> /etc/portage/package.use/iputils && \
    echo "dev-python/PyQt5 webkit" >> /etc/portage/package.use/iputils && \
    echo "dev-qt/qtwebkit printsupport" >> /etc/portage/package.use/iputils && \
    echo "dev-libs/boost python" >> /etc/portage/package.use/iputils && \
    echo "net-dns/avahi python" >> /etc/portage/package.use/iputils && \
    perl-cleaner --reallyall && \
    emerge -C openssl && \
    printf 'USE="${USE} fontconfig ruby_targets_ruby33"\n' >> \
    /etc/portage/make.conf && \
    emerge pkgdev sys-libs/zlib && \
    emerge --jobs openssl dev-libs/boost dev-build/cmake sys-devel/llvm-common \
    dev-qt/qtchooser dev-libs/icu dev-build/ninja \
    dev-python/nose2 dev-python/numpy dev-python/docutils \
    dev-python/ply dev-python/netifaces dev-python/ipaddr \
    dev-python/pycparser dev-build/meson dev-python/python-dateutil \
    dev-python/catkin_pkg dev-python/rosdistro dev-python/rosdep \
    virtual/perl-IO dev-lang/nasm dev-perl/URI dev-perl/HTML-Parser \
    sys-devel/bc dev-libs/apr virtual/jpeg media-libs/lcms \
    dev-libs/tinyxml dev-build/autoconf-archive app-text/poppler-data \
    dev-libs/lzo media-libs/libogg app-arch/rpm2targz media-libs/libpng \
    dev-libs/gobject-introspection-common dev-libs/libbsd media-libs/jbig2dec \
    sys-libs/mtdev x11-themes/hicolor-icon-theme media-libs/alsa-lib \
    dev-python/empy app-text/libpaper dev-libs/libsodium dev-libs/vala-common \
    net-dns/libidn dev-build/scons dev-libs/double-conversion \
    dev-python/olefile \
    app-eselect/eselect-wxwidgets \
    app-eselect/eselect-notify-send app-text/qpdf dev-perl/File-Listing \
    dev-perl/HTTP-Message dev-python/pyasn1 \
    dev-python/asn1crypto dev-python/idna \
    virtual/perl-Carp virtual/perl-Encode dev-perl/LWP-MediaTypes \
    dev-perl/IO-HTML dev-perl/Encode-Locale \
    dev-qt/qtcore dev-cpp/gtest \
    net-nds/openldap media-libs/openjpeg \
    dev-libs/poco dev-libs/log4cxx dev-libs/apr-util app-arch/lz4 \
    dev-python/pillow dev-python/paramiko dev-python/pynacl dev-perl/Socket6 \
    dev-perl/XML-NamespaceSupport dev-perl/HTTP-Negotiate \
    dev-perl/HTTP-Cookies dev-perl/HTTP-Daemon dev-python/pycurl \
    dev-python/sip \
    dev-python/pytz dev-perl/WWW-RobotRules dev-perl/Tie-IxHash \
    app-portage/gentoolkit media-libs/assimp \
    dev-qt/qtxml x11-misc/util-macros dev-libs/tinyxml2 \
    virtual/perl-IO-Socket-IP virtual/perl-Time-HiRes dev-perl/XML-XPath \
    dev-perl/Text-Iconv dev-cpp/gtest dev-db/sqlite \
    dev-lang/swig sys-libs/binutils-libs bash-completion \
    # --keep-going \
    && emerge @preserved-rebuild \
    && rm -f /usr/portage/distfiles/*.tar* \
    && rm -f /usr/portage/distfiles/*.zip* \
    && rm -rf /var/tmp/portage/*; exit 0
