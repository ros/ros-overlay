# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/easy_markers"
SRC_URI="https://github.com/wu-robotics/wu_ros_tools/archive/release/kinetic/easy_markers/0.2.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roslib
    ros-kinetic/interactive_markers
    ros-kinetic/geometry_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/rospy

"
DEPEND="${RDEPEND}
    ros-kinetic/interactive_markers
    ros-kinetic/roslib
    ros-kinetic/geometry_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/rospy

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
