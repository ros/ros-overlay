# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS wrapper for the youBot driver"
HOMEPAGE="http://www.youbot-store.com"
SRC_URI="https://github.com/youbot-release/youbot_driver_ros_interface-release/archive/release/indigo/youbot_driver_ros_interface/1.1.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL, BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/brics_actuator
    ros-indigo/control_msgs
    ros-indigo/diagnostic_msgs
    ros-indigo/geometry_msgs
    ros-indigo/nav_msgs
    ros-indigo/pr2_msgs
    ros-indigo/rosconsole
    ros-indigo/roscpp
    ros-indigo/std_msgs
    ros-indigo/std_srvs
    ros-indigo/tf
    ros-indigo/trajectory_msgs
    ros-indigo/youbot_driver
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
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
