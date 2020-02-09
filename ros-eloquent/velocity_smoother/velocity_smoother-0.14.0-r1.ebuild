# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Bound incoming velocity messages according to robot velocity and accelerati[...]"
HOMEPAGE="https://index.ros.org/p/velocity_smoother/github-kobuki-base-velocity_smoother/"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/eloquent/${PN}/0.14.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/geometry_msgs
	ros-eloquent/nav_msgs
	ros-eloquent/rcl_interfaces
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_components
	test? ( ros-eloquent/launch_testing )
	test? ( ros-eloquent/launch_testing_ament_cmake )
	test? ( ros-eloquent/launch_testing_ros )
	test? ( ros-eloquent/ros2test )
	test? ( dev-python/matplotlib )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_ros
	ros-eloquent/ecl_build
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
