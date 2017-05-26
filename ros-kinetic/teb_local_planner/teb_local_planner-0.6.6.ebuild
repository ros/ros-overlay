# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The teb_local_planner package implements a plugin
    to the base_local_planner of the 2D navigation stack.
    The underlying method called Timed Elastic Band locally optimizes
    the robot's trajectory with respect to trajectory execution time,
    separation from obstacles and compliance with kinodynamic constraints at runtime."
HOMEPAGE="http://wiki.ros.org/teb_local_planner"
SRC_URI="https://github.com/rst-tu-dortmund/teb_local_planner-release/archive/release/kinetic/teb_local_planner/0.6.6-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/costmap_converter
    ros-kinetic/costmap_2d
    ros-kinetic/base_local_planner
    ros-kinetic/nav_msgs
    ros-kinetic/pluginlib
    ros-kinetic/libg2o
    ros-kinetic/roscpp
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/tf_conversions
    ros-kinetic/visualization_msgs
    ros-kinetic/nav_core
    ros-kinetic/interactive_markers
"
DEPEND="
    ros-kinetic/costmap_converter
    ros-kinetic/costmap_2d
    ros-kinetic/cmake_modules
    ros-kinetic/base_local_planner
    ros-kinetic/nav_msgs
    ros-kinetic/pluginlib
    ros-kinetic/libg2o
    ros-kinetic/roscpp
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/tf
    ros-kinetic/message_generation
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/tf_conversions
    ros-kinetic/visualization_msgs
    ros-kinetic/nav_core
    ros-kinetic/interactive_markers
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
