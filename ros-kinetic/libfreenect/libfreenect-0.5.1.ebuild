# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-drivers-gbp/libfreenect-ros-release/archive/release/kinetic/libfreenect/0.5.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/glut
    ros-kinetic/libusb-1.0-dev
    ros-kinetic/catkin
    ros-kinetic/libxmu-dev
    ros-kinetic/libxi-dev

"
DEPEND="${RDEPEND}
    ros-kinetic/glut
    ros-kinetic/libusb-1.0-dev
    ros-kinetic/libxmu-dev
    ros-kinetic/libxi-dev

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
