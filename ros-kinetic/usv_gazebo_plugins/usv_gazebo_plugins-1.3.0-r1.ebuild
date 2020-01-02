# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Gazebo plugins for simulating Unmanned Surface Vehicles\
	Originaly copi[...]"
HOMEPAGE="http://wiki.ros.org/usv_gazebo_plugins"
SRC_URI="https://github.com/ros-gbp/vrx-release/archive/release/kinetic/${PN}/1.3.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/gazebo_dev
	ros-kinetic/gazebo_ros
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/wave_gazebo_plugins
	ros-kinetic/xacro
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
