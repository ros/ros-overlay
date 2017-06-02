# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Oculus Prime"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/xaxxontech/oculusprime_ros-release/archive/release/indigo/oculusprime/0.1.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/amcl
    ros-indigo/depthimage_to_laserscan
    ros-indigo/dwa_local_planner
    ros-indigo/dynamic_reconfigure
    ros-indigo/gmapping
    ros-indigo/map_server
    ros-indigo/move_base
    ros-indigo/nodelet
    ros-indigo/openni2_camera
    ros-indigo/openni2_launch
    ros-indigo/pcl_ros
    ros-indigo/roscpp
    ros-indigo/rospy
    ros-indigo/std_msgs
    ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
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
