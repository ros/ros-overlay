# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ros package that includes plugins and nodes to convert occupied costmap2d[...]"
HOMEPAGE="http://wiki.ros.org/costmap_converter"
SRC_URI="https://github.com/rst-tu-dortmund/${PN}-release/archive/release/kinetic/${PN}/0.0.11-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/costmap_2d
	ros-kinetic/cv_bridge
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
