# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Graphical frontend for interacting with joint_trajectory_controller instances."
HOMEPAGE="http://wiki.ros.org/rqt_joint_trajectory_controller"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/rqt_joint_trajectory_controller/0.12.3-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-lunar/control_msgs
    ros-lunar/controller_manager_msgs
    ros-lunar/rospy
    ros-lunar/rqt_gui
    ros-lunar/rqt_gui_py
    ros-lunar/trajectory_msgs
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="/opt/ros/lunar"

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
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-lunar
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
