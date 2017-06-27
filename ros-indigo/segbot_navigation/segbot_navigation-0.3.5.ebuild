# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Contains launch files for running the ROS navigation stack on the segbot
    usi"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/utexas-bwi-gbp/segbot-release/archive/release/indigo/segbot_navigation/0.3.5-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/amcl
    ros-indigo/bwi_interruptable_action_server
    ros-indigo/eband_local_planner
    ros-indigo/geometry_msgs
    ros-indigo/global_planner
    ros-indigo/gmapping
    ros-indigo/map_server
    ros-indigo/move_base
    ros-indigo/move_base_msgs
    ros-indigo/nav_msgs
    ros-indigo/rviz
    ros-indigo/segbot_bringup
    ros-indigo/std_srvs
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/roslaunch
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
