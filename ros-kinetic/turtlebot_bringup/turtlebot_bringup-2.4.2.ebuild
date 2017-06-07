# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="turtlebot_bringup provides roslaunch scripts for starting the TurtleBot base fun"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot-release/archive/release/kinetic/turtlebot_bringup/2.4.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/astra_launch
    ros-kinetic/create_node
    ros-kinetic/depthimage_to_laserscan
    ros-kinetic/diagnostic_aggregator
    ros-kinetic/freenect_launch
    ros-kinetic/kobuki_bumper2pc
    ros-kinetic/kobuki_capabilities
    ros-kinetic/kobuki_node
    ros-kinetic/kobuki_safety_controller
    ros-kinetic/laptop_battery_monitor
    ros-kinetic/openni2_launch
    ros-kinetic/realsense_camera
    ros-kinetic/robot_pose_ekf
    ros-kinetic/robot_state_publisher
    ros-kinetic/rocon_app_manager
    ros-kinetic/rocon_bubble_icons
    ros-kinetic/turtlebot_capabilities
    ros-kinetic/turtlebot_description
    ros-kinetic/yocs_cmd_vel_mux
    ros-kinetic/zeroconf_avahi
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
        -DPYTHON_INSTALL_DIR=lib64/site-packages/python3.5        -DPYTHON_EXECUTABLE=/usr/bin/ros-python
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
