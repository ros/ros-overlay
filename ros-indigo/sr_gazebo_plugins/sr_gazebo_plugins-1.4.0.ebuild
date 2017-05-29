# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Gazebo Plugins for various Shadow Robot-specific sensors and actuators on the ro"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-ros-interface-release/archive/release/indigo/sr_gazebo_plugins/1.4.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/ros_ethercat_model
    ros-indigo/angles
    ros-indigo/rospy
    ros-indigo/urdf
    ros-indigo/sr_hardware_interface
    ros-indigo/nav_msgs
    ros-indigo/geometry_msgs
    ros-indigo/std_msgs
    ros-indigo/sensor_msgs
    ros-indigo/controller_manager
    ros-indigo/roscpp
    ros-indigo/diagnostic_updater
    ros-indigo/dynamic_reconfigure
    ros-indigo/sr_self_test
    ros-indigo/diagnostic_msgs
    dev-libs/tinyxml
    sci-electronics/gazebo
"
DEPEND="${RDEPEND}
    ros-indigo/cmake_modules
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
