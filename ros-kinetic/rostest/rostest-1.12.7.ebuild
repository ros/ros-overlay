# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/rostest"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rostest/1.12.7-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roslaunch
    ros-kinetic/rosgraph
    ros-kinetic/rosmaster
    ros-kinetic/rospy
    ros-kinetic/rosunit
    ros-kinetic/boost

"
DEPEND="${RDEPEND}
    ros-kinetic/boost
    ros-kinetic/rosunit

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
