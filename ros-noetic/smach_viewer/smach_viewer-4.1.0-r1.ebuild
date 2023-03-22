# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The smach viewer is a GUI that shows the state of hierarchical\
	SMACH s[...]"
HOMEPAGE="http://ros.org/wiki/smach_viewer"
SRC_URI="https://github.com/jbohren/executive_smach_visualization-release/archive/release/noetic/${PN}/4.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/smach_msgs
	ros-noetic/smach_ros
	media-gfx/graphviz
	x11-libs/gtk+:3
	dev-python/pygobject
	dev-python/pygobject
	dev-python/PyQt5
	dev-python/rospkg
	dev-python/wxpython
	media-gfx/xdot
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
