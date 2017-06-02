# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="MAVROS -- MAVLink extendable communication node for ROS
    with proxy for Groun"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/indigo/mavros/0.17.5-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( "GPLv3" "LGPLv3" "BSD" )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/diagnostic_msgs
    ros-indigo/diagnostic_updater
    ros-indigo/eigen_conversions
    ros-indigo/geometry_msgs
    ros-indigo/libmavconn
    ros-indigo/mavlink
    ros-indigo/mavros_msgs
    ros-indigo/message_runtime
    ros-indigo/nav_msgs
    ros-indigo/pluginlib
    ros-indigo/rosconsole_bridge
    ros-indigo/roscpp
    ros-indigo/rospy
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/std_srvs
    ros-indigo/tf2_ros
    dev-libs/boost
    dev-cpp/eigen
"
DEPEND="${RDEPEND}
    ros-indigo/angles
    ros-indigo/catkin
    ros-indigo/cmake_modules
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
