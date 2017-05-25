# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://plasmodic.github.io/ecto_openni"
SRC_URI="https://github.com/ros-gbp/ecto_openni-release/archive/release/kinetic/ecto_openni/0.4.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/cv_bridge
    ros-kinetic/ecto
    ros-kinetic/boost
    ros-kinetic/libusb-1.0-dev
    ros-kinetic/libopenni-dev

"
DEPEND="${RDEPEND}
    ros-kinetic/cv_bridge
    ros-kinetic/ecto
    ros-kinetic/boost
    ros-kinetic/libusb-1.0-dev
    ros-kinetic/libopenni-dev

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
