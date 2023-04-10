# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Filter which fuses angular velocities, accelerations, and \(optionally\) ma[...]"
HOMEPAGE="http://www.mdpi.com/1424-8220/15/8/19302"
SRC_URI="https://github.com/ros2-gbp/imu_tools-release/archive/release/foxy/${PN}/2.0.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/geometry_msgs
	ros-foxy/message_filters
	ros-foxy/rclcpp
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/tf2
	ros-foxy/tf2_ros
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
