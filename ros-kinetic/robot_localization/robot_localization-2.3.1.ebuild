# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/robot_localization"
SRC_URI="https://github.com/cra-ros-pkg/robot_localization-release/archive/release/kinetic/robot_localization/2.3.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/geographic_msgs
    ros-kinetic/eigen
    ros-kinetic/message_filters
    ros-kinetic/tf2_geometry_msgs
    ros-kinetic/std_msgs
    ros-kinetic/message_runtime
    ros-kinetic/sensor_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/cmake_modules
    ros-kinetic/geometry_msgs
    ros-kinetic/tf2_ros
    ros-kinetic/tf2
    ros-kinetic/diagnostic_msgs
    ros-kinetic/roscpp

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/geographic_msgs
    ros-kinetic/tf2_geometry_msgs
    ros-kinetic/eigen
    ros-kinetic/message_filters
    ros-kinetic/diagnostic_updater
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/roslint
    ros-kinetic/python-catkin-pkg
    ros-kinetic/cmake_modules
    ros-kinetic/geometry_msgs
    ros-kinetic/tf2_ros
    ros-kinetic/message_generation
    ros-kinetic/tf2
    ros-kinetic/diagnostic_msgs
    ros-kinetic/roscpp

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
