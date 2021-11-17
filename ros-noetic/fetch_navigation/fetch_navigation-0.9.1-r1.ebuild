# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Configuration and launch files for running ROS navigation on Fetch."
HOMEPAGE="http://docs.fetchrobotics.com/navigation.html"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/noetic/${PN}/0.9.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/amcl
	ros-noetic/base_local_planner
	ros-noetic/clear_costmap_recovery
	ros-noetic/costmap_2d
	ros-noetic/fetch_depth_layer
	ros-noetic/fetch_maps
	ros-noetic/map_server
	ros-noetic/move_base
	ros-noetic/move_base_msgs
	ros-noetic/navfn
	ros-noetic/rotate_recovery
	ros-noetic/slam_karto
	ros-noetic/voxel_grid
	test? ( ros-noetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
