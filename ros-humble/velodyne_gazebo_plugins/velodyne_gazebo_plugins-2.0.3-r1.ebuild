# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Gazebo plugin to provide simulated data from Velodyne laser scanners."
HOMEPAGE="http://wiki.ros.org/velodyne_gazebo_plugins"
SRC_URI="https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/humble/${PN}/2.0.3-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/gazebo_dev
	ros-humble/gazebo_msgs
	ros-humble/gazebo_ros
	ros-humble/rclcpp
	ros-humble/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
