# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/cartographer-project/cartographer_ros"
SRC_URI="https://github.com/ros2-gbp/cartographer_ros-release/archive/release/humble/${PN}/2.0.9000-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/cartographer
	ros-humble/cartographer_ros
	ros-humble/cartographer_ros_msgs
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rviz_common
	ros-humble/rviz_ogre_vendor
	ros-humble/rviz_rendering
	dev-cpp/eigen
	dev-cpp/abseil-cpp
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
