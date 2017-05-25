# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/moveit_visual_tools-release/archive/release/kinetic/moveit_visual_tools/3.2.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/moveit_core
    ros-kinetic/roscpp
    ros-kinetic/trajectory_msgs
    ros-kinetic/std_msgs
    ros-kinetic/moveit_ros_robot_interaction
    ros-kinetic/eigen_conversions
    ros-kinetic/roslint
    ros-kinetic/cmake_modules
    ros-kinetic/geometry_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/graph_msgs
    ros-kinetic/tf_conversions
    ros-kinetic/rviz_visual_tools

"
DEPEND="${RDEPEND}
    ros-kinetic/moveit_core
    ros-kinetic/roscpp
    ros-kinetic/trajectory_msgs
    ros-kinetic/std_msgs
    ros-kinetic/moveit_ros_robot_interaction
    ros-kinetic/eigen_conversions
    ros-kinetic/roslint
    ros-kinetic/cmake_modules
    ros-kinetic/geometry_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/graph_msgs
    ros-kinetic/tf_conversions
    ros-kinetic/rviz_visual_tools

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
