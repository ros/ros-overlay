# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="octomap_server loads a 3D map \(as Octree-based OctoMap\) and distributes i[...]"
HOMEPAGE="http://www.ros.org/wiki/octomap_server"
SRC_URI="https://github.com/ros2-gbp/octomap_mapping-release/archive/release/humble/${PN}/2.0.0-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/message_filters
	ros-humble/nav_msgs
	ros-humble/octomap
	ros-humble/octomap_msgs
	ros-humble/octomap_ros
	ros-humble/pcl_conversions
	ros-humble/pcl_ros
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/std_srvs
	ros-humble/tf2
	ros-humble/tf2_eigen
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	ros-humble/visualization_msgs
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
