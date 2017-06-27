# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Contains sensor specific launch files and all the relevant filters that are
    "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/utexas-bwi-gbp/segbot-release/archive/release/indigo/segbot_sensors/0.3.5-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/camera1394
    ros-indigo/depthimage_to_laserscan
    ros-indigo/diagnostic_aggregator
    ros-indigo/diagnostic_msgs
    ros-indigo/dynamic_reconfigure
    ros-indigo/filters
    ros-indigo/freenect_launch
    ros-indigo/geometry_msgs
    ros-indigo/hokuyo_node
    ros-indigo/laser_filters
    ros-indigo/message_runtime
    ros-indigo/nodelet
    ros-indigo/openni_launch
    ros-indigo/pcl_ros
    ros-indigo/pluginlib
    ros-indigo/roscpp
    ros-indigo/rospy
    ros-indigo/rqt_robot_monitor
    ros-indigo/rviz
    ros-indigo/sensor_msgs
    ros-indigo/smart_battery_msgs
    ros-indigo/std_msgs
    ros-indigo/tf
    ros-indigo/tf2_ros
    ros-indigo/urg_node
    ros-indigo/velodyne_driver
    ros-indigo/velodyne_pointcloud
    dev-python/numpy
    sci-libs/scipy
    dev-python/pyserial
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/message_generation
    ros-indigo/roslint
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-indigo
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
