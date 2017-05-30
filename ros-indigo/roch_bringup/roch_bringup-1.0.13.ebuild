# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="SawYer roch installation and integration package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch-release/archive/release/indigo/roch_bringup/1.0.13-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/rocon_app_manager_msgs
    ros-indigo/laser_filters
    ros-indigo/rplidar_ros
    ros-indigo/diagnostic_aggregator
    ros-indigo/rocon_bubble_icons
    ros-indigo/tf2_ros
    ros-indigo/robot_state_publisher
    ros-indigo/roch_description
    ros-indigo/nmea_comms
    ros-indigo/roch_control
    ros-indigo/imu_transformer
    ros-indigo/nodelet
    ros-indigo/rocon_interaction_msgs
    ros-indigo/rospy
    ros-indigo/depthimage_to_laserscan
    ros-indigo/openni2_launch
    ros-indigo/roch_capabilities
    ros-indigo/realsense_camera
    ros-indigo/robot_localization
    ros-indigo/roch_safety_controller
    ros-indigo/rocon_app_manager
    ros-indigo/tf
    ros-indigo/rgbd_launch
    ros-indigo/imu_filter_madgwick
    ros-indigo/roch_sensorpc
    ros-indigo/roch_base
    ros-indigo/freenect_launch
    ros-indigo/microstrain_3dmgx2_imu
    ros-indigo/astra_launch
    ros-indigo/zeroconf_avahi
    dev-libs/scipy
"
DEPEND="${RDEPEND}
    ros-indigo/roslaunch
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
