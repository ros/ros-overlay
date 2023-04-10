FROM gentoo/stage3

ENV FEATURES sign
ENV PORTAGE_GPG_DIR ~/.gnupg/

RUN mkdir -p /usr/portage/gentoo 
RUN emerge-webrsync 
RUN emerge --sync 
RUN   eselect profile set 5 && emerge app-crypt/gnupg dev-vcs/git --autounmask-write 
RUN   mkdir -p /usr/local/portage 
RUN   printf '\nPORTDIR_OVERLAY="/usr/local/portage"\n' >> /etc/portage/make.conf 
RUN   mkdir /etc/portage/repos.conf 

# add ros-overlay to repos.conf
RUN   echo "[ros-overlay]\n\
location = /usr/local/portage\n\
sync-type = git\n\
sync-uri = https://github.com/ros/ros-overlay\n\
auto-sync = yes\n\
masters = gentoo" >> /etc/portage/repos.conf/ros-overlay.conf 

RUN   echo 'ACCEPT_KEYWORDS=~amd64' >> /etc/portage/make.conf
RUN   printf 'USE="X compat -bindist"\n' >> /etc/portage/make.conf 
RUN   eselect profile set default/linux/amd64/17.1/desktop 
RUN   emaint sync -r ros-overlay 
RUN   emerge --oneshot portage 
# add iputils conf
RUN echo "ros-kinetic/* PYTHON_TARGETS: -* python2_7\n\
ros-kinetic/* PYTHON_SINGLE_TARGET: -* python2_7\n\
ros-melodic/* PYTHON_TARGETS: -* python2_7\n\
ros-melodic/* PYTHON_SINGLE_TARGET: -* python2_7\n\
sys-libs/zlib minizip\n\
sci-libs/vtk rendering java\n\
dev-python/PyQt5 webkit \n\
dev-qt/qtwebkit printsupport\n\
dev-libs/boost python\n\
net-dns/avahi python" >> /etc/portage/package.use/iputils 

RUN echo "ros-humble\nros-galactic\nros-foxy" >> /etc/portage/categories
RUN perl-cleaner --reallyall 
RUN emerge -C openssl 
RUN printf 'USE="${USE} fontconfig ruby_targets_ruby25"\n' >> \
    /etc/portage/make.conf 
RUN emerge dev-util/pkgdev
RUN emerge --jobs openssl dev-libs/boost dev-util/cmake sys-devel/llvm-common 
RUN emerge --jobs dev-qt/qtchooser dev-libs/icu dev-util/ninja 
RUN emerge --jobs dev-python/nose dev-python/numpy dev-python/docutils 
RUN emerge --jobs dev-python/ply dev-python/netifaces dev-python/ipaddr 
RUN emerge --jobs dev-python/pycparser dev-util/meson dev-python/python-dateutil 
RUN emerge --jobs virtual/perl-IO dev-lang/nasm dev-perl/URI dev-perl/HTML-Parser 
RUN emerge --jobs sys-devel/bc dev-libs/apr virtual/jpeg media-libs/lcms 
RUN emerge --jobs dev-libs/tinyxml sys-devel/autoconf-archive app-text/poppler-data 
RUN emerge --jobs dev-libs/lzo media-libs/libogg app-arch/rpm2targz media-libs/libpng 
RUN emerge --jobs dev-libs/gobject-introspection-common dev-libs/libbsd media-libs/jbig2dec 
RUN emerge --jobs sys-libs/mtdev x11-themes/hicolor-icon-theme media-libs/alsa-lib 
RUN emerge --jobs dev-python/empy app-text/libpaper dev-libs/libsodium dev-libs/vala-common 
RUN emerge --jobs net-dns/libidn dev-util/scons dev-libs/double-conversion 
RUN emerge --jobs dev-python/olefile 
RUN emerge --jobs app-eselect/eselect-wxwidgets 
RUN emerge --jobs app-eselect/eselect-notify-send app-text/qpdf dev-perl/File-Listing 
RUN emerge --jobs dev-perl/HTTP-Message dev-python/pyasn1 
RUN emerge --jobs dev-python/asn1crypto dev-python/idna =app-text/docbook-xml-dtd-4.3-r2 
RUN emerge --jobs =app-text/docbook-xml-dtd-4.5-r2 =app-text/docbook-xml-dtd-4.4-r3 
RUN emerge --jobs virtual/perl-Carp virtual/perl-Encode dev-perl/LWP-MediaTypes 
RUN emerge --jobs dev-perl/IO-HTML dev-perl/Encode-Locale 
RUN emerge --jobs dev-qt/qtcore dev-cpp/gtest dev-libs/libpthread-stubs 
RUN emerge --jobs net-nds/openldap media-libs/openjpeg 
RUN emerge --jobs =dev-libs/poco-1.11.2-r1 dev-libs/apr-util app-arch/lz4 
RUN emerge --jobs dev-python/pillow dev-python/paramiko dev-python/pynacl dev-perl/Socket6 
RUN emerge --jobs dev-perl/XML-NamespaceSupport dev-perl/HTTP-Negotiate 
RUN emerge --jobs dev-perl/HTTP-Cookies dev-perl/HTTP-Daemon dev-python/pycurl 
RUN emerge --jobs dev-python/sip 
RUN emerge --jobs dev-python/pytz dev-perl/WWW-RobotRules dev-perl/Tie-IxHash 
RUN emerge --jobs app-portage/gentoolkit media-libs/assimp 
RUN emerge --jobs dev-qt/qtxml 
RUN emerge --jobs x11-misc/util-macros dev-libs/tinyxml2 
RUN emerge --jobs virtual/perl-IO-Socket-IP virtual/perl-Time-HiRes dev-perl/XML-XPath 
RUN emerge --jobs dev-perl/Text-Iconv dev-cpp/gtest dev-db/sqlite 
RUN emerge --jobs dev-lang/swig sys-libs/binutils-libs bash-completion --keep-going 
RUN emerge @preserved-rebuild 
RUN cp /usr/share/portage/config/repos.conf /etc/portage/repos.conf/gentoo.conf
RUN rm -f /usr/portage/distfiles/*.tar* 
RUN rm -f /usr/portage/distfiles/*.zip* 
RUN rm -rf /var/tmp/portage/*; exit 0