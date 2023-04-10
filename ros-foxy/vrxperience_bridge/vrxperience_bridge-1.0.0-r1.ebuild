# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Bridge between the simulator and ROS 2"
HOMEPAGE="https://github.com/autowarefoundation/ansys-vrxperience-ros2"
SRC_URI="https://github.com/autowarefoundation/ansys-vrxperience-ros2-release/archive/release/foxy/${PN}/1.0.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/cyclonedds
	ros-foxy/launch_xml
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/tf2
	ros-foxy/vrxperience_msgs
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_auto
	virtual/jdk
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
