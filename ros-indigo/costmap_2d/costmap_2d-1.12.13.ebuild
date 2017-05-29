# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package provides an implementation of a 2D costmap that takes in sensor
   "
HOMEPAGE="http://wiki.ros.org/costmap_2d"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/indigo/costmap_2d/1.12.13-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/rosconsole
    ros-indigo/rostest
    ros-indigo/map_msgs
    ros-indigo/visualization_msgs
    ros-indigo/pluginlib
    ros-indigo/nav_msgs
    ros-indigo/voxel_grid
    ros-indigo/laser_geometry
    ros-indigo/geometry_msgs
    ros-indigo/pcl_ros
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/roscpp
    ros-indigo/tf
    ros-indigo/message_filters
    ros-indigo/pcl_conversions
    ros-indigo/message_runtime
    ros-indigo/dynamic_reconfigure
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
