# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Example listener for Parker LORD Sensing inertial device driver ros_mscl \([...]"
HOMEPAGE="https://github.com/LORD-MicroStrain/microstrain_inertial"
SRC_URI="https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/galactic/${PN}/2.7.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/microstrain_inertial_msgs
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/rclpy
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
