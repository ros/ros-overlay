# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/robot_self_filter"
SRC_URI="https://github.com/pr2-gbp/robot_self_filter-gbp/archive/release/kinetic/robot_self_filter/0.1.30-1.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/bullet
    ros-kinetic/urdf
    ros-kinetic/sensor_msgs
    ros-kinetic/resource_retriever
    ros-kinetic/assimp
    ros-kinetic/filters
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/pcl_ros

"
DEPEND="${RDEPEND}
    ros-kinetic/roscpp
    ros-kinetic/bullet
    ros-kinetic/urdf
    ros-kinetic/sensor_msgs
    ros-kinetic/resource_retriever
    ros-kinetic/assimp-dev
    ros-kinetic/filters
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/pcl_ros

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
