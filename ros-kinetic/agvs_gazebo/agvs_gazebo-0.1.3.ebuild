# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RobotnikAutomation/agvs_sim-release/archive/release/kinetic/agvs_gazebo/0.1.3-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/velocity_controllers
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/agvs_pad
    ros-kinetic/std_msgs
    ros-kinetic/agvs_robot_control
    ros-kinetic/agvs_description
    ros-kinetic/joint_state_controller
    ros-kinetic/tf
    ros-kinetic/gazebo_ros
    ros-kinetic/effort_controllers

"
DEPEND="${RDEPEND}
    ros-kinetic/velocity_controllers
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/agvs_pad
    ros-kinetic/std_msgs
    ros-kinetic/agvs_robot_control
    ros-kinetic/agvs_description
    ros-kinetic/joint_state_controller
    ros-kinetic/tf
    ros-kinetic/gazebo_ros
    ros-kinetic/effort_controllers

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
