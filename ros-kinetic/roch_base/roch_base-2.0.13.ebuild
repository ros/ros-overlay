# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Sawyer Roch robot driver"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_base/2.0.13-2.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roch_msgs
    ros-kinetic/hardware_interface
    ros-kinetic/diagnostic_aggregator
    ros-kinetic/diff_drive_controller
    ros-kinetic/std_msgs
    ros-kinetic/roch_description
    ros-kinetic/sensor_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/topic_tools
    ros-kinetic/geometry_msgs
    ros-kinetic/angles
    ros-kinetic/controller_manager
    ros-kinetic/tf
    ros-kinetic/nodelet
    ros-kinetic/diagnostic_msgs
    ros-kinetic/roch_control
    ros-kinetic/roscpp
"
DEPEND="${RDEPEND}
    ros-kinetic/roslaunch
    ros-kinetic/roslint
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
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}"
    rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
    rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}
