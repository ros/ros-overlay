# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains a class for converting from a 2D laser scan as defined by
    sensor_msgs/LaserScan into a point cloud as defined by sensor_msgs/PointCloud
    or sensor_msgs/PointCloud2. In particular, it contains functionality to account
    for the skew resulting from moving robots or tilting laser scanners."
HOMEPAGE="http://ros.org/wiki/laser_geometry"
SRC_URI="https://github.com/ros-gbp/laser_geometry-release/archive/release/kinetic/laser_geometry/1.6.4-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/angles
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/tf
    dev-cpp/eigen
    dev-libs/boost
    dev-python/numpy
"
DEPEND="
    ros-kinetic/cmake_modules
    ros-kinetic/angles
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/tf
    dev-cpp/eigen
    dev-libs/boost
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
