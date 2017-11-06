# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Rviz 3-D visualizer for planning algorithms implemented with the Open Motio[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/ompl_visual_tools-release/archive/release/indigo/ompl_visual_tools/2.3.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/graph_msgs
	ros-indigo/moveit_core
	ros-indigo/moveit_planners_ompl
	ros-indigo/moveit_visual_tools
	ros-indigo/ompl
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
