# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/teb_local_planner"
SRC_URI="https://github.com/rst-tu-dortmund/teb_local_planner-release/archive/release/kinetic/teb_local_planner/0.6.6-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/nav_msgs
    ros-kinetic/interactive_markers
    ros-kinetic/roscpp
    ros-kinetic/costmap_2d
    ros-kinetic/costmap_converter
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/nav_core
    ros-kinetic/geometry_msgs
    ros-kinetic/tf_conversions
    ros-kinetic/libg2o
    ros-kinetic/tf
    ros-kinetic/base_local_planner
    ros-kinetic/visualization_msgs
    ros-kinetic/pluginlib

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/costmap_2d
    ros-kinetic/costmap_converter
    ros-kinetic/interactive_markers
    ros-kinetic/std_msgs
    ros-kinetic/tf
    ros-kinetic/cmake_modules
    ros-kinetic/nav_core
    ros-kinetic/geometry_msgs
    ros-kinetic/tf_conversions
    ros-kinetic/libg2o
    ros-kinetic/message_generation
    ros-kinetic/base_local_planner
    ros-kinetic/visualization_msgs
    ros-kinetic/pluginlib

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
