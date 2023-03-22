# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Code to benchmark rosbag2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/${PN}/0.15.4-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rclcpp
	ros-humble/rmw
	ros-humble/rosbag2_compression
	ros-humble/rosbag2_cpp
	ros-humble/rosbag2_storage
	ros-humble/std_msgs
	ros-humble/yaml_cpp_vendor
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
