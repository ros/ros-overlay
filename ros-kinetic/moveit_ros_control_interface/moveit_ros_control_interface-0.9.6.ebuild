# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_control_interface/0.9.6-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/moveit_core
    ros-kinetic/pluginlib
    ros-kinetic/actionlib
    ros-kinetic/trajectory_msgs
    ros-kinetic/moveit_simple_controller_manager
    ros-kinetic/controller_manager_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/moveit_core
    ros-kinetic/pluginlib
    ros-kinetic/actionlib
    ros-kinetic/trajectory_msgs
    ros-kinetic/moveit_simple_controller_manager
    ros-kinetic/controller_manager_msgs

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
