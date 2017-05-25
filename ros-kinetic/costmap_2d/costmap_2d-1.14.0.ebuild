# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/costmap_2d"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/costmap_2d/1.14.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/nav_msgs
    ros-kinetic/laser_geometry
    ros-kinetic/pcl_conversions
    ros-kinetic/rosconsole
    ros-kinetic/message_filters
    ros-kinetic/pluginlib
    ros-kinetic/std_msgs
    ros-kinetic/message_runtime
    ros-kinetic/sensor_msgs
    ros-kinetic/voxel_grid
    ros-kinetic/rostest
    ros-kinetic/geometry_msgs
    ros-kinetic/map_msgs
    ros-kinetic/tf
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/pcl_ros

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/nav_msgs
    ros-kinetic/laser_geometry
    ros-kinetic/pcl_conversions
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/pluginlib
    ros-kinetic/std_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/tf
    ros-kinetic/cmake_modules
    ros-kinetic/rostest
    ros-kinetic/geometry_msgs
    ros-kinetic/map_msgs
    ros-kinetic/message_generation
    ros-kinetic/voxel_grid
    ros-kinetic/pcl_ros

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
