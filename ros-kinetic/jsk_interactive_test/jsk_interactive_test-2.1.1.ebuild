# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="jsk_interactive_test"
HOMEPAGE="http://ros.org/wiki/jsk_interactive_test"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_interactive_test/2.1.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/visualization_msgs
    ros-kinetic/rospy
    ros-kinetic/jsk_interactive_marker
    ros-kinetic/jsk_interactive
    ros-kinetic/rviz
"
DEPEND="
    ros-kinetic/rospy
    ros-kinetic/jsk_interactive
    ros-kinetic/visualization_msgs
    ros-kinetic/mk
    ros-kinetic/jsk_interactive_marker
    ros-kinetic/rosbuild
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
