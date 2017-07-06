# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'RViz Plugins for Collecting Grasps and Generating Models'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/rail_pick_and_place-release/archive/release/indigo/rail_pick_and_place_tools/1.1.9-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/graspdb
	ros-indigo/rail_grasp_collection
	ros-indigo/rail_pick_and_place_msgs
	ros-indigo/rail_recognition
	ros-indigo/roscpp
	ros-indigo/rviz
	ros-indigo/std_srvs
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

