# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="3D interactive marker communication library for RViz and similar tools."
HOMEPAGE="http://ros.org/wiki/interactive_markers"
SRC_URI="https://github.com/ros-gbp/interactive_markers-release/archive/release/kinetic/interactive_markers/1.11.3-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospy
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/rostest
"
DEPEND="
    ros-kinetic/rospy
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/rostest
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
