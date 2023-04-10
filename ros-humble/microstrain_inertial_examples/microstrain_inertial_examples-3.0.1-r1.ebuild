# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Example listener for Parker LORD Sensing inertial device driver ros_mscl \([...]"
HOMEPAGE="https://github.com/LORD-MicroStrain/microstrain_inertial"
SRC_URI="https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/humble/${PN}/3.0.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/microstrain_inertial_msgs
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/rclpy
	ros-humble/sensor_msgs
	ros-humble/std_msgs
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
