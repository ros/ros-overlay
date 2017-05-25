# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/dwa_local_planner"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/dwa_local_planner/1.14.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/nav_msgs
    ros-kinetic/eigen
    ros-kinetic/costmap_2d
    ros-kinetic/pluginlib
    ros-kinetic/nav_core
    ros-kinetic/tf
    ros-kinetic/base_local_planner
    ros-kinetic/roscpp

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/nav_msgs
    ros-kinetic/pcl_conversions
    ros-kinetic/eigen
    ros-kinetic/costmap_2d
    ros-kinetic/pluginlib
    ros-kinetic/cmake_modules
    ros-kinetic/nav_core
    ros-kinetic/tf
    ros-kinetic/base_local_planner
    ros-kinetic/roscpp

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
