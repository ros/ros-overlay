# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/rosbag"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosbag/1.12.7-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rosconsole
    ros-kinetic/genpy
    ros-kinetic/genmsg
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/xmlrpcpp
    ros-kinetic/roslib
    ros-kinetic/python-rospkg
    ros-kinetic/topic_tools
    ros-kinetic/rospy
    ros-kinetic/boost
    ros-kinetic/rosbag_storage

"
DEPEND="${RDEPEND}
    ros-kinetic/rosconsole
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/xmlrpcpp
    ros-kinetic/roscpp_serialization
    ros-kinetic/python-imaging
    ros-kinetic/topic_tools
    ros-kinetic/cpp_common
    ros-kinetic/boost
    ros-kinetic/rosbag_storage

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
