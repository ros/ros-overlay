# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The ros_type_introspection package allows the user to parse and deserialize
  ROS messages which type is unknown at compilation time."
HOMEPAGE="http://www.ros.org/wiki/ros_type_introspection"
SRC_URI="https://github.com/facontidavide/ros_type_introspection-release/archive/release/kinetic/ros_type_introspection/0.5.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rostime
    ros-kinetic/topic_tools
    ros-kinetic/rosbag
    ros-kinetic/rosbag_storage
    ros-kinetic/roscpp_serialization
    ros-kinetic/roscpp
"
DEPEND="
    ros-kinetic/rostime
    ros-kinetic/topic_tools
    ros-kinetic/rosbag
    ros-kinetic/rosbag_storage
    ros-kinetic/roscpp_serialization
    ros-kinetic/roscpp
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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
