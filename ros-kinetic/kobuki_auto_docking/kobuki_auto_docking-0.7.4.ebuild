# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_auto_docking/0.7.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/kobuki_msgs
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/pluginlib
    ros-kinetic/ecl_threads
    ros-kinetic/actionlib
    ros-kinetic/ecl_linear_algebra
    ros-kinetic/std_msgs
    ros-kinetic/kdl_conversions
    ros-kinetic/yocs_cmd_vel_mux
    ros-kinetic/kobuki_dock_drive
    ros-kinetic/rospy
    ros-kinetic/ecl_geometry
    ros-kinetic/geometry_msgs
    ros-kinetic/nodelet
    ros-kinetic/actionlib_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/kobuki_msgs
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/pluginlib
    ros-kinetic/ecl_threads
    ros-kinetic/actionlib
    ros-kinetic/ecl_linear_algebra
    ros-kinetic/std_msgs
    ros-kinetic/kdl_conversions
    ros-kinetic/kobuki_dock_drive
    ros-kinetic/rospy
    ros-kinetic/ecl_geometry
    ros-kinetic/geometry_msgs
    ros-kinetic/nodelet
    ros-kinetic/actionlib_msgs

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
