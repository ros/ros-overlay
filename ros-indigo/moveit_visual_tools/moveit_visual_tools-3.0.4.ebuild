# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Helper functions for displaying and debugging MoveIt! data in Rviz via published"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/moveit_visual_tools-release/archive/release/indigo/moveit_visual_tools/3.0.4-1.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/graph_msgs
    ros-indigo/visualization_msgs
    ros-indigo/trajectory_msgs
    ros-indigo/geometry_msgs
    ros-indigo/std_msgs
    ros-indigo/moveit_ros_robot_interaction
    ros-indigo/rviz_visual_tools
    ros-indigo/moveit_core
    ros-indigo/moveit_msgs
"
DEPEND="${RDEPEND}
    ros-indigo/tf_conversions
    ros-indigo/cmake_modules
    ros-indigo/roscpp
    ros-indigo/eigen_conversions
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
