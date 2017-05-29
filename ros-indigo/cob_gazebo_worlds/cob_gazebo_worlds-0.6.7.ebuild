# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package provides some worlds for gazebo simulation."
HOMEPAGE="http://ros.org/wiki/cob_gazebo_worlds"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/indigo/cob_gazebo_worlds/0.6.7-0.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/gazebo_msgs
    ros-indigo/rostest
    ros-indigo/rospy
    ros-indigo/gazebo_ros_control
    ros-indigo/gazebo_ros
    ros-indigo/position_controllers
    ros-indigo/xacro
    ros-indigo/std_msgs
    ros-indigo/velocity_controllers
    ros-indigo/controller_manager
    ros-indigo/joint_state_publisher
    ros-indigo/robot_state_publisher
    ros-indigo/roslaunch
    ros-indigo/tf
    ros-indigo/cob_default_env_config
    ros-indigo/joint_state_controller
"
DEPEND="${RDEPEND}
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
