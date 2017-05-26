# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The laser_ortho_projector package calculates orthogonal projections of LaserScan messages."
HOMEPAGE="http://wiki.ros.org/laser_scan_matcher"
SRC_URI="https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/laser_ortho_projector/0.3.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/pcl_conversions
    ros-kinetic/nodelet
    ros-kinetic/sensor_msgs
    ros-kinetic/message_filters
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    sci-libs/pcl
"
DEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/pcl_conversions
    ros-kinetic/nodelet
    ros-kinetic/sensor_msgs
    ros-kinetic/message_filters
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    sci-libs/pcl
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
