# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Filter which fuses angular velocities, accelerations, and \(optionally\) ma[...]"
HOMEPAGE="http://www.mdpi.com/1424-8220/15/8/19302"
SRC_URI="https://github.com/ros2-gbp/imu_tools-release/archive/release/humble/${PN}/2.1.3-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/geometry_msgs
	ros-humble/message_filters
	ros-humble/rclcpp
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/tf2
	ros-humble/tf2_ros
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
