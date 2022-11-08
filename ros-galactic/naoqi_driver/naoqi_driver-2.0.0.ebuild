# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Driver module between Aldebaran\'s NAOqiOS and ROS2. It publishes all senso[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/${PN}2-release/archive/release/galactic/${PN}/2.0.0-0.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/cv_bridge
	ros-galactic/image_transport
	ros-galactic/kdl_parser
	ros-galactic/naoqi_bridge_msgs
	ros-galactic/naoqi_libqi
	ros-galactic/naoqi_libqicore
	ros-galactic/orocos_kdl
	ros-galactic/rclcpp
	ros-galactic/robot_state_publisher
	ros-galactic/tf2_ros
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/diagnostic_msgs
	ros-galactic/diagnostic_updater
	ros-galactic/geometry_msgs
	ros-galactic/sensor_msgs
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_msgs
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
