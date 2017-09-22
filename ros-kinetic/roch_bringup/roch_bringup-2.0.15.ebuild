# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="SawYer roch installation and integration package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_bringup/2.0.15-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
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
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
