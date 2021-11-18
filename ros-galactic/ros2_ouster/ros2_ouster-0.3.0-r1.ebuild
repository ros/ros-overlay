# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ROS2 Drivers for the Ouster OS-1 Lidar"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}_drivers-release/archive/release/galactic/${PN}/0.3.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/geometry_msgs
	ros-galactic/launch
	ros-galactic/launch_ros
	ros-galactic/ouster_msgs
	ros-galactic/pcl_conversions
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/rclcpp_lifecycle
	ros-galactic/sensor_msgs
	ros-galactic/std_srvs
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_ros
	ros-galactic/visualization_msgs
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
