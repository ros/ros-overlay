# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Messages for rclcpp_cascade_lifecycle package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fmrico/cascade_lifecycle-release/archive/release/humble/${PN}/1.0.1-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/builtin_interfaces
	ros-humble/lifecycle_msgs
	ros-humble/rclcpp
	ros-humble/rosidl_default_generators
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
