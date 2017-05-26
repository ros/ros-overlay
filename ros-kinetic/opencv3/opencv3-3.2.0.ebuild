# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="OpenCV 3.x"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/opencv3-release/archive/release/kinetic/opencv3/3.2.0-4.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/catkin
    virtual/ffmpeg
    sys-libs/zlib
    dev-libs/protobuf
    media-libs/libpng
    media-libs/libjpeg-turbo
    dev-lang/python
dev-lang/python-exec
    dev-python/numpy
    sci-libs/vtk
    media-libs/jasper
"
DEPEND="
    media-libs/libv4l
    sys-libs/zlib
    media-libs/libpng
    media-libs/libjpeg-turbo
    sci-libs/vtk
    dev-lang/python
dev-lang/python-exec
    dev-python/numpy
    media-libs/tiff
    dev-libs/protobuf
    virtual/ffmpeg
    media-libs/jasper
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
