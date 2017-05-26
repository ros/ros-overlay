# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package pulls in the Karto mapping library, and provides a ROS
     wrapper for using it."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/slam_karto-release/archive/release/kinetic/slam_karto/0.7.3-0.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rosconsole
    ros-kinetic/message_filters
    ros-kinetic/nav_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/open_karto
    ros-kinetic/sparse_bundle_adjustment
    dev-cpp/eigen
"
DEPEND="
    ros-kinetic/cmake_modules
    ros-kinetic/rosconsole
    ros-kinetic/message_filters
    ros-kinetic/nav_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/open_karto
    ros-kinetic/sparse_bundle_adjustment
    dev-cpp/eigen
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
