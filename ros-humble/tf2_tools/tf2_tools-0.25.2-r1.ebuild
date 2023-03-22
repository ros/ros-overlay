# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="tf2_tools"
HOMEPAGE="http://www.ros.org/wiki/tf2_tools"
SRC_URI="https://github.com/ros2-gbp/geometry2-release/archive/release/humble/${PN}/0.25.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/rclpy
	ros-humble/tf2_msgs
	ros-humble/tf2_py
	ros-humble/tf2_ros_py
	media-gfx/graphviz
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
