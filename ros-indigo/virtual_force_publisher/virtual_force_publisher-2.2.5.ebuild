# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'publish end effector'"'"'s force, which is estmated from joint torque value'"
HOMEPAGE="http://ros.org/wiki/virtual_force_publisher"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/indigo/virtual_force_publisher/2.2.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/kdl_parser
	ros-indigo/sensor_msgs
	ros-indigo/tf_conversions
	ros-indigo/urdf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

