# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="octomap_server loads a 3D map \(as Octree-based OctoMap\) and distributes i[...]"
HOMEPAGE="http://www.ros.org/wiki/octomap_server"
SRC_URI="https://github.com/ros2-gbp/octomap_mapping-release/archive/release/foxy/${PN}/2.0.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/message_filters
	ros-foxy/nav_msgs
	ros-foxy/octomap
	ros-foxy/octomap_msgs
	ros-foxy/octomap_ros
	ros-foxy/pcl_conversions
	ros-foxy/pcl_ros
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/std_srvs
	ros-foxy/tf2
	ros-foxy/tf2_eigen
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_ros
	ros-foxy/visualization_msgs
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
