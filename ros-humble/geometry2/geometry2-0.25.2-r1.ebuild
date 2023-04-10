# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="A metapackage to bring in the default packages second generation Transform [...]"
HOMEPAGE="http://www.ros.org/wiki/geometry2"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/0.25.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/tf2
	ros-humble/tf2_bullet
	ros-humble/tf2_eigen
	ros-humble/tf2_eigen_kdl
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_kdl
	ros-humble/tf2_msgs
	ros-humble/tf2_py
	ros-humble/tf2_ros
	ros-humble/tf2_sensor_msgs
	ros-humble/tf2_tools
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
