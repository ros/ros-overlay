# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Demonstrations of intra process communication."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/demos-release/archive/release/ardent/${PN}/0.4.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/rclcpp
	ros-ardent/sensor_msgs
	test? ( ros-ardent/ament_cmake_pytest )
	test? ( ros-ardent/ament_lint_auto )
	test? ( ros-ardent/ament_lint_common )
	test? ( ros-ardent/launch )
	test? ( ros-ardent/launch_testing )
	test? ( ros-ardent/rmw_implementation_cmake )
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
	ros-ardent/std_msgs
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
