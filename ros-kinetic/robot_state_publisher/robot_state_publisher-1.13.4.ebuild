# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/robot_state_publisher"
SRC_URI="https://github.com/ros-gbp/robot_state_publisher-release/archive/release/kinetic/robot_state_publisher/1.13.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rosconsole
    ros-kinetic/catkin
    ros-kinetic/eigen
    ros-kinetic/sensor_msgs
    ros-kinetic/rostime
    ros-kinetic/kdl_parser
    ros-kinetic/tf2_kdl
    ros-kinetic/tf2_ros
    ros-kinetic/tf
    ros-kinetic/orocos_kdl
    ros-kinetic/roscpp

"
DEPEND="${RDEPEND}
    ros-kinetic/rosconsole
    ros-kinetic/eigen
    ros-kinetic/sensor_msgs
    ros-kinetic/liburdfdom-headers-dev
    ros-kinetic/rostime
    ros-kinetic/kdl_parser
    ros-kinetic/tf2_kdl
    ros-kinetic/rostest
    ros-kinetic/tf2_ros
    ros-kinetic/tf
    ros-kinetic/orocos_kdl
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
