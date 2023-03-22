# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launchfiles to use Jackal in Gazebo."
HOMEPAGE="http://wiki.ros.org/jackal_gazebo"
SRC_URI="https://github.com/clearpath-gbp/jackal_simulator-release/archive/release/noetic/${PN}/0.4.0-4.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/gazebo_plugins
	ros-noetic/gazebo_ros
	ros-noetic/gazebo_ros_control
	ros-noetic/hector_gazebo_plugins
	ros-noetic/jackal_control
	ros-noetic/jackal_description
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslaunch
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
