# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Gazebo simulation ROS package for Pheeno system!"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ACSLaboratory/pheeno_ros_sim-release/archive/release/indigo/pheeno_ros_sim/0.1.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/gazebo_msgs
	ros-indigo/gazebo_plugins
	ros-indigo/gazebo_ros
	ros-indigo/gazebo_ros_control
	ros-indigo/geometry_msgs
	ros-indigo/image_transport
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/rviz
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/urdf
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
