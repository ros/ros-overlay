# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/jsk_interactive_test"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_interactive_test/2.1.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/jsk_interactive_marker
    ros-kinetic/jsk_interactive
    ros-kinetic/rospy
    ros-kinetic/rviz
    ros-kinetic/visualization_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/jsk_interactive_marker
    ros-kinetic/mk
    ros-kinetic/rosbuild
    ros-kinetic/rospy
    ros-kinetic/visualization_msgs
    ros-kinetic/jsk_interactive

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
