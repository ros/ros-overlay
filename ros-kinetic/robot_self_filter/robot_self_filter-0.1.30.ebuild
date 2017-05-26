# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Filters the robot's body out of point clouds."
HOMEPAGE="http://ros.org/wiki/robot_self_filter"
SRC_URI="https://github.com/pr2-gbp/robot_self_filter-gbp/archive/release/kinetic/robot_self_filter/0.1.30-1.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/filters
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/urdf
    ros-kinetic/resource_retriever
    media-libs/assimp
    sci-physics/bullet
"
DEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/filters
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/urdf
    ros-kinetic/resource_retriever
    media-libs/assimp
    sci-physics/bullet
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
