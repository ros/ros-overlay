# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="gazebo_ros_control"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/indigo/${PN}/2.4.15-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/angles
	ros-indigo/control_toolbox
	ros-indigo/controller_manager
	ros-indigo/gazebo_ros
	ros-indigo/hardware_interface
	ros-indigo/joint_limits_interface
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/transmission_interface
	ros-indigo/urdf
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
