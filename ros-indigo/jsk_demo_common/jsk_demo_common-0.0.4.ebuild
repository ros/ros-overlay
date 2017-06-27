# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The jsk_demo_common package"
HOMEPAGE="http://wiki.ros.org/jsk_demo_common"
SRC_URI="https://github.com/tork-a/jsk_demos-release/archive/release/indigo/jsk_demo_common/0.0.4-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/control_msgs
    ros-indigo/joint_state_publisher
    ros-indigo/jsk_hark_msgs
    ros-indigo/jsk_maps
    ros-indigo/jsk_perception
    ros-indigo/message_runtime
    ros-indigo/pddl_planner
    ros-indigo/pr2_gripper_sensor_msgs
    ros-indigo/pr2_navigation_self_filter
    ros-indigo/pr2eus
    ros-indigo/robot_state_publisher
    ros-indigo/roseus
    ros-indigo/roseus_mongo
    ros-indigo/roseus_smach
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/message_generation
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
