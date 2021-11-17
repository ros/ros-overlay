# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigur[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/noetic/${PN}/2.9.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/angles
	ros-noetic/camera_info_manager
	ros-noetic/cv_bridge
	ros-noetic/diagnostic_updater
	ros-noetic/dynamic_reconfigure
	ros-noetic/gazebo_dev
	ros-noetic/gazebo_msgs
	ros-noetic/gazebo_ros
	ros-noetic/geometry_msgs
	ros-noetic/image_transport
	ros-noetic/message_runtime
	ros-noetic/nav_msgs
	ros-noetic/nodelet
	ros-noetic/polled_camera
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/rosgraph_msgs
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf
	ros-noetic/tf2_ros
	ros-noetic/trajectory_msgs
	ros-noetic/urdf
	ros-noetic/visualization_msgs
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
