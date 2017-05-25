# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_utils/0.1.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rosgraph_msgs
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/gazebo_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/rosflight_msgs
    ros-kinetic/rospy

"
DEPEND="${RDEPEND}
    ros-kinetic/rosgraph_msgs
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/gazebo_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/rosflight_msgs
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
