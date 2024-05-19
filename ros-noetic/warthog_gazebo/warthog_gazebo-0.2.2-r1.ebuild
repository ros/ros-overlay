# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Launchfiles to use Warthog in Gazebo."
HOMEPAGE="http://wiki.ros.org/warthog_gazebo"
SRC_URI="https://github.com/clearpath-gbp/warthog_simulator-release/archive/release/noetic/${PN}/0.2.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/gazebo_plugins
	ros-noetic/gazebo_ros
	ros-noetic/gazebo_ros_control
	ros-noetic/hector_gazebo_plugins
	ros-noetic/joint_state_publisher
	ros-noetic/roscpp
	ros-noetic/warthog_control
	ros-noetic/warthog_description
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslaunch
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
