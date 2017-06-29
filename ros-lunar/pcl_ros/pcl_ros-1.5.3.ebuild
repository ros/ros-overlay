# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/perception_pcl-release/archive/release/lunar/pcl_ros/1.5.3-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-lunar/dynamic_reconfigure
    ros-lunar/message_filters
    ros-lunar/nodelet
    ros-lunar/nodelet_topic_tools
    ros-lunar/pcl_conversions
    ros-lunar/pcl_msgs
    ros-lunar/pluginlib
    ros-lunar/rosbag
    ros-lunar/roscpp
    ros-lunar/sensor_msgs
    ros-lunar/std_msgs
    ros-lunar/tf
    ros-lunar/tf2_eigen
    dev-cpp/eigen
    sci-libs/pcl
    sci-libs/vtk
    sci-libs/proj
    dev-qt/qtcore:5
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
    ros-lunar/cmake_modules
    ros-lunar/genmsg
    ros-lunar/rosconsole
    ros-lunar/roslib
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="/opt/ros/lunar"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_prepare() {
    cd ${P}
    EPATCH_SOURCE="${FILESDIR}"EPATCH_SUFFIX="patch" \
                 EPATCH_FORCE="yes" epatch
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D%/}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-lunar
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
