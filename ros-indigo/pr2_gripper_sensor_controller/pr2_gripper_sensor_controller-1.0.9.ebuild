# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The pr2_gripper_sensor_controller package is a real-time controller that integra"
HOMEPAGE="http://ros.org/wiki/pr2_gripper_sensor_controller"
SRC_URI="https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/indigo/pr2_gripper_sensor_controller/1.0.9-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/actionlib_msgs
    ros-indigo/pluginlib
    ros-indigo/pr2_controller_interface
    ros-indigo/pr2_controller_manager
    ros-indigo/pr2_controllers_msgs
    ros-indigo/pr2_gripper_sensor_msgs
    ros-indigo/pr2_mechanism_model
    ros-indigo/realtime_tools
    ros-indigo/roscpp
    ros-indigo/roslib
    ros-indigo/rosrt
    ros-indigo/std_msgs
    ros-indigo/std_srvs
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
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
