# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Configuration and launch files for running ROS navigation on Fetch."
HOMEPAGE="http://docs.fetchrobotics.com/navigation.html"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/indigo/${PN}/0.7.15-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/amcl
	ros-indigo/base_local_planner
	ros-indigo/clear_costmap_recovery
	ros-indigo/costmap_2d
	ros-indigo/fetch_depth_layer
	ros-indigo/fetch_maps
	ros-indigo/map_server
	ros-indigo/move_base
	ros-indigo/move_base_msgs
	ros-indigo/navfn
	ros-indigo/rotate_recovery
	ros-indigo/slam_karto
	ros-indigo/voxel_grid
	test? ( ros-indigo/roslaunch )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
