# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_manipulation/0.9.6-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/moveit_core
    ros-kinetic/roscpp
    ros-kinetic/rosconsole
    ros-kinetic/actionlib
    ros-kinetic/pluginlib
    ros-kinetic/moveit_ros_move_group
    ros-kinetic/moveit_ros_planning
    ros-kinetic/tf
    ros-kinetic/moveit_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/moveit_core
    ros-kinetic/roscpp
    ros-kinetic/rosconsole
    ros-kinetic/actionlib
    ros-kinetic/pluginlib
    ros-kinetic/moveit_ros_move_group
    ros-kinetic/moveit_ros_planning
    ros-kinetic/tf
    ros-kinetic/moveit_msgs
    ros-kinetic/eigen

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
