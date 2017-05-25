# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/industrial_robot_simulator"
SRC_URI="https://github.com/ros-industrial-release/industrial_core-release/archive/release/kinetic/industrial_robot_simulator/0.6.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/industrial_robot_client
    ros-kinetic/trajectory_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/python-rospkg
    ros-kinetic/rospy
    ros-kinetic/control_msgs
    ros-kinetic/std_msgs
    ros-kinetic/industrial_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/sensor_msgs
    ros-kinetic/industrial_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/control_msgs
    ros-kinetic/std_msgs

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
