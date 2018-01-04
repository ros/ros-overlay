# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="a#text"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/kinetic/${PN}/1.4.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/hrpsys_ros_bridge
	ros-kinetic/hrpsys_tools
	ros-kinetic/openrtm_ros_bridge
	ros-kinetic/openrtm_tools
	ros-kinetic/rosnode_rtc
	ros-kinetic/rtmbuild
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
