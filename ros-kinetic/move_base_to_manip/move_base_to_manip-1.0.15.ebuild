# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Move the robot base until a desired end-effector pose can be reached."
HOMEPAGE="http://wiki.ros.org/move_base_to_manip"
SRC_URI="https://github.com/UTNuclearRoboticsPublic/move_base_to_manip-release/archive/release/kinetic/move_base_to_manip/1.0.15-0.tar.gz"

LICENSE="See license.txt"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/interactive_markers
    ros-kinetic/move_base_msgs
    ros-kinetic/moveit_core
    ros-kinetic/visualization_msgs
    ros-kinetic/message_runtime
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/moveit_ros_planning_interface
    ros-kinetic/roscpp
    ros-kinetic/message_generation
    dev-cpp/eigen
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
