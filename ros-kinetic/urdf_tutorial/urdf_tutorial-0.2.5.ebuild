# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains a number of URDF tutorials."
HOMEPAGE="http://ros.org/wiki/urdf_tutorial"
SRC_URI="https://github.com/ros-gbp/urdf_tutorial-release/archive/release/kinetic/urdf_tutorial/0.2.5-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rqt_robot_steering
    ros-kinetic/urdf
    ros-kinetic/diff_drive_controller
    ros-kinetic/gazebo_ros_control
    ros-kinetic/gazebo_ros
    ros-kinetic/position_controllers
    ros-kinetic/xacro
    ros-kinetic/controller_manager
    ros-kinetic/joint_state_publisher
    ros-kinetic/robot_state_publisher
    ros-kinetic/rviz
    ros-kinetic/joint_state_controller
"
DEPEND="${RDEPEND}
    ros-kinetic/roslaunch
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
