# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="jsk_interactive"
HOMEPAGE="http://ros.org/wiki/jsk_interactive"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/${PN}/2.1.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/dynamic_tf_publisher
	ros-melodic/geometry_msgs
	ros-melodic/jsk_interactive_marker
	ros-melodic/rospy
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/mk
	ros-melodic/rosbuild
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
