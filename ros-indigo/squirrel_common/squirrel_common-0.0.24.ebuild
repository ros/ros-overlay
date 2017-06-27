# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Definitions for mesages, services and actions. Startup packages for the robots"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/squirrel-project/squirrel_common-release/archive/release/indigo/squirrel_common/0.0.24-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/robotino_description
    ros-indigo/robotino_msgs
    ros-indigo/softhand_description
    ros-indigo/squirrel_3d_localizer_msgs
    ros-indigo/squirrel_3d_mapping_msgs
    ros-indigo/squirrel_dynamic_filter_msgs
    ros-indigo/squirrel_hri_msgs
    ros-indigo/squirrel_kclhand_msgs
    ros-indigo/squirrel_localizer_msgs
    ros-indigo/squirrel_manipulation_msgs
    ros-indigo/squirrel_mhand_msgs
    ros-indigo/squirrel_navigation_msgs
    ros-indigo/squirrel_object_perception_msgs
    ros-indigo/squirrel_person_tracker_msgs
    ros-indigo/squirrel_planning_knowledge_msgs
    ros-indigo/squirrel_prediction_msgs
    ros-indigo/squirrel_rgbd_mapping_msgs
    ros-indigo/squirrel_sketch_interface_msgs
    ros-indigo/squirrel_speech_msgs
    ros-indigo/squirrel_vad_msgs
    ros-indigo/squirrel_view_controller_msgs
    ros-indigo/squirrel_waypoint_msgs
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
