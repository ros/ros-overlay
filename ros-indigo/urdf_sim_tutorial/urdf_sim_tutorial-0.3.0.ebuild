# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The urdf_sim_tutorial package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/urdf_tutorial-release/archive/release/indigo/urdf_sim_tutorial/0.3.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/controller_manager
    ros-indigo/diff_drive_controller
    ros-indigo/gazebo_ros
    ros-indigo/gazebo_ros_control
    ros-indigo/joint_state_controller
    ros-indigo/position_controllers
    ros-indigo/robot_state_publisher
    ros-indigo/rqt_robot_steering
    ros-indigo/rviz
    ros-indigo/urdf_tutorial
    ros-indigo/xacro
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
"

SLOT="indigo"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="/opt/ros/indigo"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D%/}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=${ROS_PREFIX}
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
