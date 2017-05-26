# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="OpenCV 3.x"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/opencv3-release/archive/release/lunar/opencv3/3.2.0-6.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/catkin
    dev-python/numpy
    dev-libs/protobuf
    sci-libs/vtk
    virtual/ffmpeg
    media-libs/libwebp
    dev-lang/python
dev-lang/python-exec
    media-libs/libjpeg-turbo
    sys-libs/zlib
    media-libs/libpng
"
DEPEND="
    dev-libs/protobuf
    dev-python/numpy
    media-libs/libv4l
    sci-libs/vtk
    virtual/ffmpeg
    media-libs/tiff
    media-libs/libwebp
    dev-lang/python
dev-lang/python-exec
    media-libs/libjpeg-turbo
    sys-libs/zlib
    media-libs/libpng
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}
