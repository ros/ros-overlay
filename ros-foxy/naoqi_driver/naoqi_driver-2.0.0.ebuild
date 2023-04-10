# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Driver module between Aldebaran\'s NAOqiOS and ROS2. It publishes all senso[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/${PN}2-release/archive/release/foxy/${PN}/2.0.0-0.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/cv_bridge
	ros-foxy/image_transport
	ros-foxy/kdl_parser
	ros-foxy/naoqi_bridge_msgs
	ros-foxy/naoqi_libqi
	ros-foxy/naoqi_libqicore
	ros-foxy/orocos_kdl
	ros-foxy/rclcpp
	ros-foxy/robot_state_publisher
	ros-foxy/tf2_ros
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/diagnostic_msgs
	ros-foxy/diagnostic_updater
	ros-foxy/geometry_msgs
	ros-foxy/sensor_msgs
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_msgs
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
