# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>\
	 ROS-Industrial nodes for interfacing with ABB robot controllers.\[...]"
HOMEPAGE="http://wiki.ros.org/abb_driver"
SRC_URI="https://github.com/ros-industrial-release/${PN}-release/archive/release/melodic/${PN}/1.4.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/industrial_robot_client
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/simple_message
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
