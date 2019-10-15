# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="C++ Demo applications for Quality of Service features"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/demos-release/archive/release/dashing/${PN}/0.7.9-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/example_interfaces
	ros-dashing/launch_ros
	ros-dashing/rclcpp
	ros-dashing/rcutils
	ros-dashing/rmw
	ros-dashing/std_msgs
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	test? ( ros-dashing/launch )
	test? ( ros-dashing/launch_testing )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/rmw_implementation_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
