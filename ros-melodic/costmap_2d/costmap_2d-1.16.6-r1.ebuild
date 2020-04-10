# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides an implementation of a 2D costmap that takes in senso[...]"
HOMEPAGE="http://wiki.ros.org/costmap_2d"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/melodic/${PN}/1.16.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/laser_geometry
	ros-melodic/map_msgs
	ros-melodic/message_filters
	ros-melodic/message_runtime
	ros-melodic/nav_msgs
	ros-melodic/pluginlib
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/rostest
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf2
	ros-melodic/tf2_ros
	ros-melodic/visualization_msgs
	ros-melodic/voxel_grid
	test? ( ros-melodic/map_server )
	test? ( ros-melodic/rosbag )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/message_generation
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_sensor_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
