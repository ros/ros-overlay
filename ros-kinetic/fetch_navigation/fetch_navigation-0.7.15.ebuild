# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Configuration and launch files for running ROS navigation on Fetch."
HOMEPAGE="http://docs.fetchrobotics.com/navigation.html"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/kinetic/${PN}/0.7.15-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/amcl
	ros-kinetic/base_local_planner
	ros-kinetic/clear_costmap_recovery
	ros-kinetic/costmap_2d
	ros-kinetic/fetch_depth_layer
	ros-kinetic/fetch_maps
	ros-kinetic/map_server
	ros-kinetic/move_base
	ros-kinetic/move_base_msgs
	ros-kinetic/navfn
	ros-kinetic/rotate_recovery
	ros-kinetic/slam_karto
	ros-kinetic/voxel_grid
	test? ( ros-kinetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
