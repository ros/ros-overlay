# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The teb_local_planner package implements a plugin
    to the base_local_planner "
HOMEPAGE="http://wiki.ros.org/teb_local_planner"
SRC_URI="https://github.com/rst-tu-dortmund/teb_local_planner-release/archive/release/kinetic/teb_local_planner/0.6.6-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/base_local_planner
    ros-kinetic/costmap_2d
    ros-kinetic/costmap_converter
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/geometry_msgs
    ros-kinetic/interactive_markers
    ros-kinetic/libg2o
    ros-kinetic/message_runtime
    ros-kinetic/nav_core
    ros-kinetic/nav_msgs
    ros-kinetic/pluginlib
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/tf
    ros-kinetic/tf_conversions
    ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/cmake_modules
    ros-kinetic/message_generation
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
