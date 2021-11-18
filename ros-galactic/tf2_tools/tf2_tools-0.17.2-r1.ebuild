# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="tf2_tools"
HOMEPAGE="http://www.ros.org/wiki/tf2_tools"
SRC_URI="https://github.com/ros2-gbp/geometry2-release/archive/release/galactic/${PN}/0.17.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/rclpy
	ros-galactic/tf2_msgs
	ros-galactic/tf2_py
	ros-galactic/tf2_ros_py
	media-gfx/graphviz
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
