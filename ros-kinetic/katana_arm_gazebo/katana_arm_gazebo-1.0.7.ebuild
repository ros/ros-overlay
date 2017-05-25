# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/katana_arm_gazebo"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_arm_gazebo/1.0.7-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/xacro
    ros-kinetic/roscpp
    ros-kinetic/controller_manager
    ros-kinetic/std_msgs
    ros-kinetic/robot_state_publisher
    ros-kinetic/urdf
    ros-kinetic/controller_manager_msgs
    ros-kinetic/actionlib
    ros-kinetic/joint_trajectory_controller
    ros-kinetic/katana_gazebo_plugins
    ros-kinetic/gazebo_ros
    ros-kinetic/katana_description

"
DEPEND="${RDEPEND}
    ros-kinetic/xacro
    ros-kinetic/roscpp
    ros-kinetic/controller_manager
    ros-kinetic/std_msgs
    ros-kinetic/robot_state_publisher
    ros-kinetic/urdf
    ros-kinetic/controller_manager_msgs
    ros-kinetic/actionlib
    ros-kinetic/joint_trajectory_controller
    ros-kinetic/katana_gazebo_plugins
    ros-kinetic/gazebo_ros
    ros-kinetic/katana_description

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
