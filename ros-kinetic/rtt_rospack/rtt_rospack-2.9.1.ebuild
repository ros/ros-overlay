# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rtt_rospack provides an RTT plugin to use rospack to find packages in your [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/${PN}/2.9.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/roslib
	ros-kinetic/rtt_ros
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
