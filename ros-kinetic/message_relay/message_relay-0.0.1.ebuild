# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/kinetic/message_relay/0.0.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/rosgraph_msgs
    ros-kinetic/shape_msgs
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/stereo_msgs
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/actionlib_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/gazebo_msgs
    ros-kinetic/diagnostic_msgs
    ros-kinetic/tf2_msgs
    ros-kinetic/robot_localization
    ros-kinetic/geometry_msgs
    ros-kinetic/map_msgs
    ros-kinetic/move_base_msgs
    ros-kinetic/controller_manager_msgs
    ros-kinetic/multimaster_msgs
    ros-kinetic/visualization_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/rosgraph_msgs
    ros-kinetic/shape_msgs
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/stereo_msgs
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/actionlib_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/gazebo_msgs
    ros-kinetic/python-cheetah
    ros-kinetic/diagnostic_msgs
    ros-kinetic/tf2_msgs
    ros-kinetic/robot_localization
    ros-kinetic/geometry_msgs
    ros-kinetic/map_msgs
    ros-kinetic/move_base_msgs
    ros-kinetic/controller_manager_msgs
    ros-kinetic/multimaster_msgs
    ros-kinetic/visualization_msgs

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
