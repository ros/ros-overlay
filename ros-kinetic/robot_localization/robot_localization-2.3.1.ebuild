# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The robot_localization package provides nonlinear state estimation through senso"
HOMEPAGE="http://ros.org/wiki/robot_localization"
SRC_URI="https://github.com/cra-ros-pkg/robot_localization-release/archive/release/kinetic/robot_localization/2.3.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/diagnostic_updater
    ros-kinetic/diagnostic_msgs
    ros-kinetic/cmake_modules
    ros-kinetic/geometry_msgs
    ros-kinetic/std_msgs
    ros-kinetic/message_runtime
    ros-kinetic/tf2
    ros-kinetic/tf2_geometry_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/tf2_ros
    ros-kinetic/geographic_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/message_filters
    dev-cpp/eigen
"
DEPEND="${RDEPEND}
    ros-kinetic/message_generation
    ros-kinetic/roslint
    dev-python/catkin_pkg
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
    if [[ -e ${D}/${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
