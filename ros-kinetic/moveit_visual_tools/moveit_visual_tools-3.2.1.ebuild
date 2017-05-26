# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Helper functions for displaying and debugging MoveIt! data in Rviz via published markers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/moveit_visual_tools-release/archive/release/kinetic/moveit_visual_tools/3.2.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/graph_msgs
    ros-kinetic/cmake_modules
    ros-kinetic/roslint
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/tf_conversions
    ros-kinetic/std_msgs
    ros-kinetic/moveit_core
    ros-kinetic/geometry_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/rviz_visual_tools
    ros-kinetic/eigen_conversions
    ros-kinetic/moveit_ros_robot_interaction
"
DEPEND="
    ros-kinetic/graph_msgs
    ros-kinetic/cmake_modules
    ros-kinetic/roslint
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/tf_conversions
    ros-kinetic/std_msgs
    ros-kinetic/moveit_core
    ros-kinetic/geometry_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/rviz_visual_tools
    ros-kinetic/eigen_conversions
    ros-kinetic/moveit_ros_robot_interaction
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
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
