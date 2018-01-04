# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigur[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/${PN}/2.5.14-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( BSD Apache-2.0) "
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/angles
	ros-kinetic/camera_info_manager
	ros-kinetic/cv_bridge
	ros-kinetic/diagnostic_updater
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/gazebo_dev
	ros-kinetic/gazebo_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/image_transport
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/nodelet
	ros-kinetic/polled_camera
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/rosgraph_msgs
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
	ros-kinetic/tf2_ros
	ros-kinetic/trajectory_msgs
	ros-kinetic/urdf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
