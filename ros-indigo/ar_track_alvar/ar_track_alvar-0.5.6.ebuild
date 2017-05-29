# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package is a ROS wrapper for Alvar, an open source AR tag tracking library."
HOMEPAGE="http://ros.org/wiki/ar_track_alvar"
SRC_URI="https://github.com/ros-gbp/ar_track_alvar-release/archive/release/indigo/ar_track_alvar/0.5.6-0.tar.gz"

LICENSE="LGPL-2.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/cv_bridge
    ros-indigo/visualization_msgs
    ros-indigo/rospy
    ros-indigo/dynamic_reconfigure
    ros-indigo/resource_retriever
    ros-indigo/tf2
    ros-indigo/geometry_msgs
    ros-indigo/pcl_ros
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/ar_track_alvar_msgs
    ros-indigo/roscpp
    ros-indigo/image_transport
    ros-indigo/pcl_conversions
    ros-indigo/message_runtime
    ros-indigo/tf
    dev-libs/tinyxml
"
DEPEND="${RDEPEND}
    ros-indigo/cmake_modules
    ros-indigo/message_generation
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
