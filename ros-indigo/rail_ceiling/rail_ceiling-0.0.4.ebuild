# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Overhead Camera System for Tracking AR Tags"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/rail_ceiling-release/archive/release/indigo/rail_ceiling/0.0.4-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/ar_track_alvar
    ros-indigo/usb_cam
    ros-indigo/xacro
    ros-indigo/geometry_msgs
    ros-indigo/tf
    ros-indigo/robot_state_publisher
    ros-indigo/ar_track_alvar_msgs
    ros-indigo/roscpp
    ros-indigo/image_view
    ros-indigo/roslib
    dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
    virtual/pkgconfig
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
