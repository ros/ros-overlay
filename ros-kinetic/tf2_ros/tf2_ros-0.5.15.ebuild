# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://www.ros.org/wiki/tf2_ros"
SRC_URI="https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/tf2_ros/0.5.15-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/xmlrpcpp
    ros-kinetic/std_msgs
    ros-kinetic/actionlib
    ros-kinetic/tf2_py
    ros-kinetic/rosgraph
    ros-kinetic/tf2_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/rospy
    ros-kinetic/actionlib_msgs
    ros-kinetic/tf2

"
DEPEND="${RDEPEND}
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/xmlrpcpp
    ros-kinetic/std_msgs
    ros-kinetic/actionlib
    ros-kinetic/tf2_py
    ros-kinetic/rosgraph
    ros-kinetic/tf2_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/rospy
    ros-kinetic/actionlib_msgs
    ros-kinetic/tf2

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
