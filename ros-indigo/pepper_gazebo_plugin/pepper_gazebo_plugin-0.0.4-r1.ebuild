# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Gazebo plugin for Pepper robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/pepper_virtual-release/archive/release/indigo/${PN}/0.0.4-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_plugins
	ros-indigo/gazebo_ros
	ros-indigo/gazebo_ros_control
	ros-indigo/pepper_control
	ros-indigo/pepper_description
	ros-indigo/ros_control
	ros-indigo/ros_controllers
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
