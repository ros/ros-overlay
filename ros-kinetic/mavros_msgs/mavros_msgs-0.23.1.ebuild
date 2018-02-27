# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="mavros_msgs defines messages for <a href=\"http://wiki.ros.org/mavros\">MAV[...]"
HOMEPAGE="http://wiki.ros.org/mavros_msgs"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/kinetic/${PN}/0.23.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( GPL-3 LGPL-2 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geographic_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
