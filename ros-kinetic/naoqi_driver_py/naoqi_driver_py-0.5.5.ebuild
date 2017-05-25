# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/naoqi_bridge-release/archive/release/kinetic/naoqi_driver_py/0.5.5-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roslaunch
    ros-kinetic/nav_msgs
    ros-kinetic/std_srvs
    ros-kinetic/naoqi_bridge_msgs
    ros-kinetic/humanoid_nav_msgs
    ros-kinetic/actionlib
    ros-kinetic/sensor_msgs
    ros-kinetic/rospy
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/geometry_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure

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
