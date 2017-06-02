# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="SawYer roch installation and integration package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_bringup/2.0.13-2.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/astra_launch
    ros-kinetic/depthimage_to_laserscan
    ros-kinetic/diagnostic_aggregator
    ros-kinetic/freenect_launch
    ros-kinetic/imu_filter_madgwick
    ros-kinetic/imu_transformer
    ros-kinetic/laser_filters
    ros-kinetic/microstrain_3dmgx2_imu
    ros-kinetic/nmea_comms
    ros-kinetic/nmea_navsat_driver
    ros-kinetic/nodelet
    ros-kinetic/openni2_launch
    ros-kinetic/realsense_camera
    ros-kinetic/rgbd_launch
    ros-kinetic/robot_localization
    ros-kinetic/robot_state_publisher
    ros-kinetic/robot_upstart
    ros-kinetic/roch_base
    ros-kinetic/roch_capabilities
    ros-kinetic/roch_control
    ros-kinetic/roch_description
    ros-kinetic/roch_safety_controller
    ros-kinetic/roch_sensorpc
    ros-kinetic/rocon_app_manager
    ros-kinetic/rocon_app_manager_msgs
    ros-kinetic/rocon_bubble_icons
    ros-kinetic/rocon_interaction_msgs
    ros-kinetic/rospy
    ros-kinetic/rplidar_ros
    ros-kinetic/tf
    ros-kinetic/tf2_ros
    ros-kinetic/zeroconf_avahi
    dev-libs/scipy
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/roslaunch
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

src_unpack() {
    default
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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
