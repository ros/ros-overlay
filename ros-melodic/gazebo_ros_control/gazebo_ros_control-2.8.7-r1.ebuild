# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="gazebo_ros_control"
HOMEPAGE="http://ros.org/wiki/gazebo_ros_control"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/${PN}/2.8.7-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/angles
	ros-melodic/control_toolbox
	ros-melodic/controller_manager
	ros-melodic/gazebo_ros
	ros-melodic/hardware_interface
	ros-melodic/joint_limits_interface
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/transmission_interface
	ros-melodic/urdf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/gazebo_dev
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
