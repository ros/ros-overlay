# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Gazebo plugins for IGVC Self-Drive simulator"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/robustify/igvc_self_drive_sim-release/archive/release/melodic/${PN}/0.1.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/gazebo_ros
	ros-melodic/gazebo_ros_pkgs
	ros-melodic/hector_gazebo_plugins
	ros-melodic/hector_models
	ros-melodic/robot_state_publisher
	ros-melodic/roscpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
