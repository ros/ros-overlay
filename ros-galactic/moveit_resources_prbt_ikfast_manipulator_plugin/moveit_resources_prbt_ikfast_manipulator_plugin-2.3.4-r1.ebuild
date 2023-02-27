# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The prbt_ikfast_manipulator_plugin package"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/galactic/${PN}/2.3.4-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/moveit_core
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_kdl
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/tf2_eigen
	ros-galactic/tf2_eigen_kdl
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
