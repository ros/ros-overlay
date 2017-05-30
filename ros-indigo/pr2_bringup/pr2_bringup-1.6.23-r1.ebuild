# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Launch files and scripts needed to bring a PR2 up into a running state."
HOMEPAGE="http://ros.org/wiki/pr2_bringup"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/indigo/pr2_bringup/1.6.23-1.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/pr2_dashboard_aggregator
    ros-indigo/pr2_ethercat
    ros-indigo/ocean_battery_driver
    ros-indigo/pr2_machine
    ros-indigo/diagnostic_aggregator
    ros-indigo/tf2_ros
    ros-indigo/robot_state_publisher
    ros-indigo/pr2_controller_manager
    ros-indigo/pr2_gripper_action
    ros-indigo/wge100_camera
    ros-indigo/pr2_computer_monitor
    ros-indigo/pr2_run_stop_auto_restart
    ros-indigo/pr2_power_board
    ros-indigo/prosilica_camera
    ros-indigo/joy
    ros-indigo/pr2_controller_configuration
    ros-indigo/wifi_ddwrt
    ros-indigo/pr2_calibration_controllers
    ros-indigo/joint_trajectory_action
    ros-indigo/sound_play
    ros-indigo/rosbag
    ros-indigo/stereo_image_proc
    ros-indigo/pr2_camera_synchronizer
    ros-indigo/ethercat_trigger_controllers
    ros-indigo/std_srvs
    ros-indigo/robot_pose_ekf
    ros-indigo/power_monitor
    ros-indigo/hokuyo_node
    ros-indigo/single_joint_position_action
    ros-indigo/microstrain_3dmgx2_imu
    ros-indigo/pr2_head_action
    ros-indigo/pr2_description
    ros-indigo/robot_mechanism_controllers
"
DEPEND="${RDEPEND}
    ros-indigo/rostest
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
