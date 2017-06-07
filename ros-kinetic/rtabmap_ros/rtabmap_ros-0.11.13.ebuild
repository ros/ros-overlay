# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="RTAB-Map's ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time constraints"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/introlab/rtabmap_ros-release/archive/release/kinetic/rtabmap_ros/0.11.13-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/class_loader
    ros-kinetic/costmap_2d
    ros-kinetic/cv_bridge
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/eigen_conversions
    ros-kinetic/geometry_msgs
    ros-kinetic/image_geometry
    ros-kinetic/image_transport
    ros-kinetic/image_transport_plugins
    ros-kinetic/laser_geometry
    ros-kinetic/message_filters
    ros-kinetic/move_base_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/nodelet
    ros-kinetic/octomap_ros
    ros-kinetic/pcl_conversions
    ros-kinetic/pcl_ros
    ros-kinetic/roscpp
    ros-kinetic/rospy
    ros-kinetic/rtabmap
    ros-kinetic/rviz
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/std_srvs
    ros-kinetic/stereo_msgs
    ros-kinetic/tf
    ros-kinetic/tf2_ros
    ros-kinetic/tf_conversions
    ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/genmsg
    sci-libs/pcl
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/site-packages/python3.5        -DPYTHON_EXECUTABLE=/usr/bin/ros-python
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
