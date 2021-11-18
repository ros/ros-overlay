# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ROS driver package for communication with the SBG navigation systems."
HOMEPAGE="http://wiki.ros.org/sbg_driver"
SRC_URI="https://github.com/SBG-Systems/sbg_ros2-release/archive/release/galactic/${PN}/3.1.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/geometry_msgs
	ros-galactic/nav_msgs
	ros-galactic/rclcpp
	ros-galactic/rosidl_default_runtime
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_msgs
	ros-galactic/tf2_ros
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
