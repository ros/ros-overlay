# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_plugins/2.5.12-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( BSD Apache-2.0 )"
KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/angles
    ros-kinetic/camera_info_manager
    ros-kinetic/cv_bridge
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/gazebo_msgs
    ros-kinetic/gazebo_ros
    ros-kinetic/geometry_msgs
    ros-kinetic/image_transport
    ros-kinetic/message_generation
    ros-kinetic/nav_msgs
    ros-kinetic/nodelet
    ros-kinetic/polled_camera
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/rosgraph_msgs
    ros-kinetic/rospy
    ros-kinetic/rostest
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/std_srvs
    ros-kinetic/tf
    ros-kinetic/tf2_ros
    ros-kinetic/trajectory_msgs
    ros-kinetic/urdf
    =sci-electronics/gazebo-7*
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/diagnostic_updater
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

src_unpack() {
    default
    mv *${P}* ${P}
    cd ${P}
    EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
                 EPATCH_FORCE="yes" epatch
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
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
