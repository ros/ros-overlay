# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python2_7 )

inherit ros-cmake

DESCRIPTION="tf is a package that lets the user keep track of multiple coordinate\
frame[...]"
HOMEPAGE="http://www.ros.org/wiki/tf"
SRC_URI="https://github.com/ros-gbp/geometry-release/archive/release/melodic/${PN}/1.12.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/message_filters
	ros-melodic/message_runtime
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/roswtf
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf2_ros
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	media-gfx/graphviz
"
DEPEND="${RDEPEND}
	ros-melodic/angles
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/rostime
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
