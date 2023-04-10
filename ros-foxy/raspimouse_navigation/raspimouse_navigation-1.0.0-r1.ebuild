# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Navigation package for Raspberry Pi Mouse"
HOMEPAGE="https://github.com/rt-net/raspimouse_slam_navigation_ros2"
SRC_URI="https://github.com/ros2-gbp/raspimouse_slam_navigation_ros2-release/archive/release/foxy/${PN}/1.0.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/hls_lfcd_lds_driver
	ros-foxy/nav2_bringup
	ros-foxy/raspimouse
	ros-foxy/raspimouse_slam
	ros-foxy/rplidar_ros
	ros-foxy/rviz2
	ros-foxy/urg_node
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
