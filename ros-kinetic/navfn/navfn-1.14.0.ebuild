# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/navfn"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/navfn/1.14.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/costmap_2d
    ros-kinetic/pcl_conversions
    ros-kinetic/rosconsole
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/nav_core
    ros-kinetic/pluginlib
"
DEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/costmap_2d
    ros-kinetic/pcl_conversions
    ros-kinetic/cmake_modules
    ros-kinetic/rosconsole
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/nav_core
    ros-kinetic/pluginlib
    media-libs/netpbm
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
