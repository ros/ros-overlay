# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/mrpt_icp_slam_2d"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/kinetic/mrpt_icp_slam_2d/0.1.5-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/roscpp
    ros-kinetic/mrpt_bridge
    ros-kinetic/sensor_msgs
    ros-kinetic/roslib
    ros-kinetic/std_msgs
    ros-kinetic/rospy
    ros-kinetic/tf
    ros-kinetic/mrpt

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/roscpp
    ros-kinetic/mrpt_bridge
    ros-kinetic/sensor_msgs
    ros-kinetic/roslib
    ros-kinetic/std_msgs
    ros-kinetic/rospy
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/mrpt

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
