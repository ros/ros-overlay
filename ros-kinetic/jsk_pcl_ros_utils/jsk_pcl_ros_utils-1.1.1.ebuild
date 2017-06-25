# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="jsk_pcl_ros"
HOMEPAGE="http://ros.org/wiki/jsk_pcl_ros"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_pcl_ros_utils/1.1.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/cv_bridge
    ros-kinetic/diagnostic_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/eigen_conversions
    ros-kinetic/geometry_msgs
    ros-kinetic/image_geometry
    ros-kinetic/image_transport
    ros-kinetic/image_view
    ros-kinetic/image_view2
    ros-kinetic/interactive_markers
    ros-kinetic/jsk_data
    ros-kinetic/jsk_footstep_msgs
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/jsk_recognition_utils
    ros-kinetic/jsk_topic_tools
    ros-kinetic/kdl_conversions
    ros-kinetic/kdl_parser
    ros-kinetic/laser_assembler
    ros-kinetic/message_runtime
    ros-kinetic/moveit_core
    ros-kinetic/moveit_ros_perception
    ros-kinetic/nav_msgs
    ros-kinetic/nodelet
    ros-kinetic/octomap
    ros-kinetic/octomap_msgs
    ros-kinetic/octomap_ros
    ros-kinetic/octomap_server
    ros-kinetic/openni2_launch
    ros-kinetic/pcl_conversions
    ros-kinetic/pcl_msgs
    ros-kinetic/pcl_ros
    ros-kinetic/robot_self_filter
    ros-kinetic/rosbag
    ros-kinetic/rosboost_cfg
    ros-kinetic/roscpp_tutorials
    ros-kinetic/rviz
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/std_srvs
    ros-kinetic/stereo_msgs
    ros-kinetic/tf
    ros-kinetic/tf2_ros
    ros-kinetic/tf_conversions
    ros-kinetic/visualization_msgs
    dev-libs/boost
    sci-libs/scikits_learn
    dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/message_generation
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
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-kinetic
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
