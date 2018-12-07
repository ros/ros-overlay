# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="publish end effector\'s force, which is estmated from joint torque value"
HOMEPAGE="http://ros.org/wiki/virtual_force_publisher"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/melodic/${PN}/2.2.10-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/kdl_parser
	ros-melodic/sensor_msgs
	ros-melodic/tf_conversions
	ros-melodic/urdf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
