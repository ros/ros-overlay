# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="common_msgs contains messages that are widely used by other ROS packages.\
[...]"
HOMEPAGE="http://wiki.ros.org/common_msgs"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/1.12.7-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib_msgs
	ros-melodic/diagnostic_msgs
	ros-melodic/geometry_msgs
	ros-melodic/nav_msgs
	ros-melodic/sensor_msgs
	ros-melodic/shape_msgs
	ros-melodic/stereo_msgs
	ros-melodic/trajectory_msgs
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
