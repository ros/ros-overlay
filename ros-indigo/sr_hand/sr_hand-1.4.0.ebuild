# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This is a ROS interface to the Shadow Robot's robotic hand. It
     contains bot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-ros-interface-release/archive/release/indigo/sr_hand/1.4.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="GPL"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/control_msgs
    ros-indigo/controller_manager_msgs
    ros-indigo/diagnostic_msgs
    ros-indigo/dynamic_reconfigure
    ros-indigo/gazebo_msgs
    ros-indigo/gazebo_ros
    ros-indigo/robot_state_publisher
    ros-indigo/roscpp
    ros-indigo/roslib
    ros-indigo/rospy
    ros-indigo/self_test
    ros-indigo/sensor_msgs
    ros-indigo/sr_robot_msgs
    ros-indigo/sr_utilities
    ros-indigo/std_msgs
    ros-indigo/std_srvs
    ros-indigo/urdf
    sci-electronics/gazebo
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/rostest
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
