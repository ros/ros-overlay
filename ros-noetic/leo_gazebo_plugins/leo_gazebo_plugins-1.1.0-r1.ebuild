# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Gazebo Plugins for simulating Leo Rover."
HOMEPAGE="http://wiki.ros.org/leo_gazebo_plugins"
SRC_URI="https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/${PN}/1.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/gazebo_dev
	ros-noetic/gazebo_ros
	ros-noetic/roscpp
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
