# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Soy roch installation and integration package"
HOMEPAGE="http://ros.org/wiki/roch_bringup"
SRC_URI="https://github.com/SawYerRobotics-release/roch-release/archive/release/indigo/${PN}/1.0.17-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/astra_launch
	ros-indigo/depthimage_to_laserscan
	ros-indigo/diagnostic_aggregator
	ros-indigo/freenect_launch
	ros-indigo/imu_filter_madgwick
	ros-indigo/imu_transformer
	ros-indigo/laser_filters
	ros-indigo/lms1xx
	ros-indigo/microstrain_3dmgx2_imu
	ros-indigo/nmea_comms
	ros-indigo/nodelet
	ros-indigo/openni2_launch
	ros-indigo/realsense_camera
	ros-indigo/rgbd_launch
	ros-indigo/robot_localization
	ros-indigo/robot_state_publisher
	ros-indigo/roch_base
	ros-indigo/roch_control
	ros-indigo/roch_description
	ros-indigo/roch_safety_controller
	ros-indigo/roch_sensorpc
	ros-indigo/rocon_bubble_icons
	ros-indigo/rosbridge_server
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
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
