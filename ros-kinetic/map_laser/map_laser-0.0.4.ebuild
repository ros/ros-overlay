# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/map_laser"
SRC_URI="https://github.com/wu-robotics/laser_filtering_release/archive/release/kinetic/map_laser/0.0.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/std_msgs
    ros-kinetic/roslib
    ros-kinetic/sensor_msgs
    ros-kinetic/laser_filters
    ros-kinetic/rospy
    ros-kinetic/tf

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/rospy
    ros-kinetic/std_msgs
    ros-kinetic/tf

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
