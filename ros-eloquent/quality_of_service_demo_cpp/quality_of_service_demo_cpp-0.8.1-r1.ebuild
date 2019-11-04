# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="C++ Demo applications for Quality of Service features"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/demos-release/archive/release/eloquent/${PN}/0.8.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/example_interfaces
	ros-eloquent/launch_ros
	ros-eloquent/rclcpp
	ros-eloquent/rcutils
	ros-eloquent/rmw
	ros-eloquent/std_msgs
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/launch )
	test? ( ros-eloquent/launch_testing )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/rmw_implementation_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
