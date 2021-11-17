# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The smach viewer is a GUI that shows the state of hierarchical\
	SMACH s[...]"
HOMEPAGE="http://ros.org/wiki/smach_viewer"
SRC_URI="https://github.com/jbohren/executive_smach_visualization-release/archive/release/noetic/${PN}/3.0.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/smach_msgs
	ros-noetic/smach_ros
	media-gfx/graphviz
	x11-libs/gtk+:3
	dev-python/pygobject
	dev-python/pygobject
	dev-python/wxpython
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
