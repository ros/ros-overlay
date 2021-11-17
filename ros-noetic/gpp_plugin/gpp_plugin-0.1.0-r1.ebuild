# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The gpp_plugin package offers a pipeline for running global \
  planners to[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/dorezyuk/gpp-release/archive/release/noetic/${PN}/0.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/costmap_2d
	ros-noetic/gpp_interface
	ros-noetic/mbf_costmap_core
	ros-noetic/mbf_msgs
	ros-noetic/nav_core
	ros-noetic/pluginlib
	ros-noetic/xmlrpcpp
	test? ( ros-noetic/global_planner )
	test? ( ros-noetic/mbf_costmap_nav )
	test? ( ros-noetic/move_base )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
