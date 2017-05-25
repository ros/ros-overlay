# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/lagadic/visp-release/archive/release/kinetic/visp/3.0.1-3.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/libois-dev
    ros-kinetic/libv4l-dev
    ros-kinetic/bzip2
    ros-kinetic/libfreenect-dev
    ros-kinetic/libusb-dev
    ros-kinetic/libdmtx-dev
    ros-kinetic/libjpeg
    ros-kinetic/libxml2
    ros-kinetic/libcoin80-dev
    ros-kinetic/libx11-dev
    ros-kinetic/opencv3
    ros-kinetic/libdc1394-dev
    ros-kinetic/libogre-dev
    ros-kinetic/zbar
    ros-kinetic/liblapack-dev
    ros-kinetic/libpng12-dev

"
DEPEND="${RDEPEND}
    ros-kinetic/libxml2
    ros-kinetic/libv4l-dev
    ros-kinetic/bzip2
    ros-kinetic/doxygen
    ros-kinetic/libfreenect-dev
    ros-kinetic/libusb-dev
    ros-kinetic/libdmtx-dev
    ros-kinetic/libjpeg
    ros-kinetic/libogre-dev
    ros-kinetic/libx11-dev
    ros-kinetic/opencv3
    ros-kinetic/libdc1394-dev
    ros-kinetic/libcoin80-dev
    ros-kinetic/libois-dev
    ros-kinetic/zbar
    ros-kinetic/liblapack-dev
    ros-kinetic/libpng12-dev

"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    default
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
