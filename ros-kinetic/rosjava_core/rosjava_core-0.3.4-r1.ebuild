# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="An implementation of ROS in pure-Java with Android support."
HOMEPAGE="http://ros.org/wiki/rosjava_core"
SRC_URI="https://github.com/rosjava-release/rosjava_core-release/archive/release/kinetic/rosjava_core/0.3.4-1.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="Apache 2.0"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/geometry_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/rosgraph_msgs
    ros-kinetic/rosjava_bootstrap
    ros-kinetic/rosjava_build_tools
    ros-kinetic/rosjava_messages
    ros-kinetic/rosjava_test_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/tf2_msgs
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
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
