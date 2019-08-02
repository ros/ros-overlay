# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launchfiles to use Warthog in Gazebo."
HOMEPAGE="http://wiki.ros.org/warthog_gazebo"
SRC_URI="https://github.com/clearpath-gbp/warthog_simulator-release/archive/release/kinetic/${PN}/0.1.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/gazebo_plugins
	ros-kinetic/gazebo_ros
	ros-kinetic/gazebo_ros_control
	ros-kinetic/hector_gazebo_plugins
	ros-kinetic/joint_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/warthog_control
	ros-kinetic/warthog_description
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
