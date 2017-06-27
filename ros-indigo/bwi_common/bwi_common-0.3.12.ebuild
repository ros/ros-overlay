# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Common packages and data for the Building-Wide Intelligence
    project of the U"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/utexas-bwi-gbp/bwi_common-release/archive/release/indigo/bwi_common/0.3.12-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/bwi_gazebo_entities
    ros-indigo/bwi_interruptable_action_server
    ros-indigo/bwi_joystick_teleop
    ros-indigo/bwi_kr_execution
    ros-indigo/bwi_logging
    ros-indigo/bwi_mapper
    ros-indigo/bwi_msgs
    ros-indigo/bwi_planning_common
    ros-indigo/bwi_rqt_plugins
    ros-indigo/bwi_scavenger
    ros-indigo/bwi_services
    ros-indigo/bwi_tasks
    ros-indigo/bwi_tools
    ros-indigo/bwi_virtour
    ros-indigo/multi_level_map_msgs
    ros-indigo/multi_level_map_server
    ros-indigo/multi_level_map_utils
    ros-indigo/stop_base
    ros-indigo/utexas_gdc
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
