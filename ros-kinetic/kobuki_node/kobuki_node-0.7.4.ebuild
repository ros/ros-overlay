# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_node/0.7.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/diagnostic_updater
    ros-kinetic/kobuki_ftdi
    ros-kinetic/ecl_sigslots
    ros-kinetic/ecl_exceptions
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/kobuki_rapps
    ros-kinetic/kobuki_safety_controller
    ros-kinetic/capabilities
    ros-kinetic/ecl_threads
    ros-kinetic/tf
    ros-kinetic/kobuki_keyop
    ros-kinetic/nodelet
    ros-kinetic/kobuki_driver
    ros-kinetic/kobuki_msgs
    ros-kinetic/diagnostic_aggregator
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/ecl_streams
    ros-kinetic/rospy
    ros-kinetic/angles
    ros-kinetic/diagnostic_msgs
    ros-kinetic/pluginlib
    ros-kinetic/geometry_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/kobuki_msgs
    ros-kinetic/rospy
    ros-kinetic/roscpp
    ros-kinetic/pluginlib
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/kobuki_safety_controller
    ros-kinetic/ecl_streams
    ros-kinetic/diagnostic_updater
    ros-kinetic/kobuki_ftdi
    ros-kinetic/geometry_msgs
    ros-kinetic/angles
    ros-kinetic/ecl_sigslots
    ros-kinetic/tf
    ros-kinetic/kobuki_keyop
    ros-kinetic/ecl_threads
    ros-kinetic/ecl_exceptions
    ros-kinetic/nodelet
    ros-kinetic/diagnostic_msgs
    ros-kinetic/kobuki_driver

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
