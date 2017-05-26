# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This is a set of tools for recording from and playing back to ROS
    topics.  It is intended to be high performance and avoids
    deserialization and reserialization of the messages."
HOMEPAGE="http://ros.org/wiki/rosbag"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rosbag/1.13.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/roscpp
    ros-lunar/genpy
    ros-lunar/rospy
    ros-lunar/rosbag_storage
    ros-lunar/genmsg
    ros-lunar/rosconsole
    ros-lunar/xmlrpcpp
    ros-lunar/std_srvs
    ros-lunar/topic_tools
    ros-lunar/roslib
    dev-libs/boost
    dev-python/rospkg
"
DEPEND="${RDEPEND}
    ros-lunar/roscpp_serialization
    ros-lunar/cpp_common
    dev-python/pillow
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="${D}" || die
}

pkg_postinst() {
    cd ${D}
    cp -R lib* /opt/ros/lunar
    cp -R share /opt/ros/lunar
    cp -R bin /opt/ros/lunar
    cp -R include /opt/ros/lunar
}
