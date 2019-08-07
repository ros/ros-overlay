# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Configuration and launch files for running ROS navigation on Fetch."
HOMEPAGE="http://docs.fetchrobotics.com/navigation.html"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/${PN}/0.8.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/amcl
	ros-melodic/base_local_planner
	ros-melodic/clear_costmap_recovery
	ros-melodic/costmap_2d
	ros-melodic/fetch_depth_layer
	ros-melodic/fetch_maps
	ros-melodic/map_server
	ros-melodic/move_base
	ros-melodic/move_base_msgs
	ros-melodic/navfn
	ros-melodic/rotate_recovery
	ros-melodic/slam_karto
	ros-melodic/voxel_grid
	test? ( ros-melodic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
