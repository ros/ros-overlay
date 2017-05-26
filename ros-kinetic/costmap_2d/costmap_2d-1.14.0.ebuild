# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package provides an implementation of a 2D costmap that takes in sensor
        data from the world, builds a 2D or 3D occupancy grid of the data (depending
        on whether a voxel based implementation is used), and inflates costs in a
        2D costmap based on the occupancy grid and a user specified inflation radius.
        This package also provides support for map_server based initialization of a
        costmap, rolling window based costmaps, and parameter based subscription to
        and configuration of sensor topics."
HOMEPAGE="http://wiki.ros.org/costmap_2d"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/costmap_2d/1.14.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/voxel_grid
    ros-kinetic/pcl_conversions
    ros-kinetic/rosconsole
    ros-kinetic/laser_geometry
    ros-kinetic/message_filters
    ros-kinetic/nav_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/message_runtime
    ros-kinetic/map_msgs
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/rostest
    ros-kinetic/tf
    ros-kinetic/pluginlib
"
DEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/voxel_grid
    ros-kinetic/pcl_conversions
    ros-kinetic/cmake_modules
    ros-kinetic/laser_geometry
    ros-kinetic/message_filters
    ros-kinetic/nav_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/map_msgs
    ros-kinetic/message_generation
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/rostest
    ros-kinetic/tf
    ros-kinetic/pluginlib
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
