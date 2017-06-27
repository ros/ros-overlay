# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="SawYer roch installation and integration package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch-release/archive/release/indigo/roch_bringup/1.0.13-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/astra_launch
    ros-indigo/depthimage_to_laserscan
    ros-indigo/diagnostic_aggregator
    ros-indigo/freenect_launch
    ros-indigo/imu_filter_madgwick
    ros-indigo/imu_transformer
    ros-indigo/laser_filters
    ros-indigo/microstrain_3dmgx2_imu
    ros-indigo/nmea_comms
    ros-indigo/nodelet
    ros-indigo/openni2_launch
    ros-indigo/realsense_camera
    ros-indigo/rgbd_launch
    ros-indigo/robot_localization
    ros-indigo/robot_state_publisher
    ros-indigo/roch_base
    ros-indigo/roch_capabilities
    ros-indigo/roch_control
    ros-indigo/roch_description
    ros-indigo/roch_safety_controller
    ros-indigo/roch_sensorpc
    ros-indigo/rocon_app_manager
    ros-indigo/rocon_app_manager_msgs
    ros-indigo/rocon_bubble_icons
    ros-indigo/rocon_interaction_msgs
    ros-indigo/rospy
    ros-indigo/rplidar_ros
    ros-indigo/tf
    ros-indigo/tf2_ros
    ros-indigo/zeroconf_avahi
    sci-libs/scipy
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
