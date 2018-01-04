# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigur[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/lunar/${PN}/2.7.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="( BSD Apache-2.0) "
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/angles
	ros-lunar/camera_info_manager
	ros-lunar/cv_bridge
	ros-lunar/diagnostic_updater
	ros-lunar/dynamic_reconfigure
	ros-lunar/gazebo_dev
	ros-lunar/gazebo_msgs
	ros-lunar/geometry_msgs
	ros-lunar/image_transport
	ros-lunar/message_runtime
	ros-lunar/nav_msgs
	ros-lunar/nodelet
	ros-lunar/polled_camera
	ros-lunar/rosconsole
	ros-lunar/roscpp
	ros-lunar/rosgraph_msgs
	ros-lunar/rospy
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/tf
	ros-lunar/tf2_ros
	ros-lunar/trajectory_msgs
	ros-lunar/urdf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
