# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Launch files and scripts needed to bring a PR2 up into a running state."
HOMEPAGE="http://ros.org/wiki/pr2_bringup"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/indigo/pr2_bringup/1.6.23-1.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/diagnostic_aggregator
    ros-indigo/ethercat_trigger_controllers
    ros-indigo/hokuyo_node
    ros-indigo/joint_trajectory_action
    ros-indigo/joy
    ros-indigo/microstrain_3dmgx2_imu
    ros-indigo/ocean_battery_driver
    ros-indigo/power_monitor
    ros-indigo/pr2_calibration_controllers
    ros-indigo/pr2_camera_synchronizer
    ros-indigo/pr2_computer_monitor
    ros-indigo/pr2_controller_configuration
    ros-indigo/pr2_controller_manager
    ros-indigo/pr2_dashboard_aggregator
    ros-indigo/pr2_description
    ros-indigo/pr2_ethercat
    ros-indigo/pr2_gripper_action
    ros-indigo/pr2_head_action
    ros-indigo/pr2_machine
    ros-indigo/pr2_power_board
    ros-indigo/pr2_run_stop_auto_restart
    ros-indigo/prosilica_camera
    ros-indigo/robot_mechanism_controllers
    ros-indigo/robot_pose_ekf
    ros-indigo/robot_state_publisher
    ros-indigo/rosbag
    ros-indigo/single_joint_position_action
    ros-indigo/sound_play
    ros-indigo/std_srvs
    ros-indigo/stereo_image_proc
    ros-indigo/tf2_ros
    ros-indigo/wge100_camera
    ros-indigo/wifi_ddwrt
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/rostest
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
