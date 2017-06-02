# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.uni-koblenz.de/robbie/homer_gui/archive/release/indigo/homer_gui/1.0.6-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-v2"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/geometry_msgs
    ros-indigo/homer_mapnav_msgs
    ros-indigo/homer_nav_libs
    ros-indigo/message_runtime
    ros-indigo/or_libs
    ros-indigo/or_msgs
    ros-indigo/or_nodes
    ros-indigo/robbie_architecture
    ros-indigo/roscpp
    ros-indigo/roslib
    ros-indigo/rviz
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/tf
    dev-libs/boost
    dev-cpp/eigen
    media-libs/opencv
    sci-libs/pcl
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/cv_bridge
    ros-indigo/genmsg
    ros-indigo/message_generation
    dev-qt/qtcore
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
