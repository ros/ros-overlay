# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="jsk_pcl_ros"
HOMEPAGE="http://ros.org/wiki/jsk_pcl_ros"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/indigo/jsk_pcl_ros/1.1.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/cv_bridge
    ros-indigo/diagnostic_msgs
    ros-indigo/diagnostic_updater
    ros-indigo/dynamic_reconfigure
    ros-indigo/eigen_conversions
    ros-indigo/geometry_msgs
    ros-indigo/image_geometry
    ros-indigo/image_transport
    ros-indigo/image_view2
    ros-indigo/interactive_markers
    ros-indigo/jsk_data
    ros-indigo/jsk_footstep_msgs
    ros-indigo/jsk_pcl_ros_utils
    ros-indigo/jsk_recognition_msgs
    ros-indigo/jsk_recognition_utils
    ros-indigo/jsk_topic_tools
    ros-indigo/kdl_conversions
    ros-indigo/kdl_parser
    ros-indigo/laser_assembler
    ros-indigo/ml_classifiers
    ros-indigo/moveit_core
    ros-indigo/moveit_ros_perception
    ros-indigo/nav_msgs
    ros-indigo/nodelet
    ros-indigo/octomap
    ros-indigo/octomap_msgs
    ros-indigo/octomap_ros
    ros-indigo/octomap_server
    ros-indigo/openni2_launch
    ros-indigo/openni_launch
    ros-indigo/pcl_conversions
    ros-indigo/pcl_msgs
    ros-indigo/pcl_ros
    ros-indigo/resized_image_transport
    ros-indigo/robot_self_filter
    ros-indigo/rosboost_cfg
    ros-indigo/roscpp_tutorials
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/std_srvs
    ros-indigo/stereo_msgs
    ros-indigo/tf
    ros-indigo/tf2_ros
    ros-indigo/tf_conversions
    ros-indigo/topic_tools
    ros-indigo/visualization_msgs
    dev-libs/boost
    sci-libs/scikits_learn
    dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
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
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
