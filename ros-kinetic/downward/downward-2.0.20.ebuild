# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/downward"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/downward/2.0.20-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/gawk
    ros-kinetic/time

"
DEPEND="${RDEPEND}
    ros-kinetic/flex
    ros-kinetic/g++-static
    ros-kinetic/python
    ros-kinetic/gawk
    ros-kinetic/ca-certificates
    ros-kinetic/rostest
    ros-kinetic/bison
    ros-kinetic/time

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
