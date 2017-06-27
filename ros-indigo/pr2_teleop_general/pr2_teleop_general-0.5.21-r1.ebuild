# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="pr2_teleop_general"
HOMEPAGE="http://ros.org/wiki/pr2_teleop_general"
SRC_URI="https://github.com/pr2-gbp/pr2_apps-release/archive/release/indigo/pr2_teleop_general/0.5.21-1.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/actionlib_msgs
    ros-indigo/angles
    ros-indigo/geometry_msgs
    ros-indigo/moveit_msgs
    ros-indigo/polled_camera
    ros-indigo/pr2_common_action_msgs
    ros-indigo/pr2_controller_manager
    ros-indigo/pr2_controllers_msgs
    ros-indigo/pr2_mechanism_msgs
    ros-indigo/pr2_msgs
    ros-indigo/ps3joy
    ros-indigo/roscpp
    ros-indigo/sensor_msgs
    ros-indigo/tf
    ros-indigo/urdf
    sci-physics/bullet
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
