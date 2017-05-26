# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/katana_arm_gazebo"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_arm_gazebo/1.0.7-0.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/controller_manager_msgs
    ros-kinetic/xacro
    ros-kinetic/katana_description
    ros-kinetic/joint_trajectory_controller
    ros-kinetic/controller_manager
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/katana_gazebo_plugins
    ros-kinetic/urdf
    ros-kinetic/robot_state_publisher
    ros-kinetic/gazebo_ros
    ros-kinetic/actionlib
"
DEPEND="
    ros-kinetic/controller_manager_msgs
    ros-kinetic/xacro
    ros-kinetic/katana_description
    ros-kinetic/joint_trajectory_controller
    ros-kinetic/controller_manager
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/katana_gazebo_plugins
    ros-kinetic/urdf
    ros-kinetic/robot_state_publisher
    ros-kinetic/gazebo_ros
    ros-kinetic/actionlib
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
