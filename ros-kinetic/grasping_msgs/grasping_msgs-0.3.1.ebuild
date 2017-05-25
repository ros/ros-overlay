# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/grasping_msgs"
SRC_URI="https://github.com/mikeferguson/grasping_msgs-gbp/archive/release/kinetic/grasping_msgs/0.3.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/shape_msgs
    ros-kinetic/actionlib
    ros-kinetic/message_runtime
    ros-kinetic/sensor_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/moveit_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/shape_msgs
    ros-kinetic/actionlib
    ros-kinetic/sensor_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/message_generation
    ros-kinetic/moveit_msgs

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
