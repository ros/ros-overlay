# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Filters the robot\'s body out of laser scans or point clouds."
HOMEPAGE="https://github.com/peci1/robot_body_filter"
SRC_URI="https://github.com/peci1/${PN}-release/archive/release/noetic/${PN}/1.2.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/dynamic_reconfigure
	ros-noetic/fcl
	ros-noetic/filters
	ros-noetic/geometric_shapes
	ros-noetic/geometry_msgs
	ros-noetic/laser_geometry
	ros-noetic/message_runtime
	ros-noetic/moveit_core
	ros-noetic/moveit_ros_perception
	ros-noetic/pcl_conversions
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf2
	ros-noetic/tf2_ros
	ros-noetic/urdf
	ros-noetic/visualization_msgs
	test? ( ros-noetic/rostest )
	sci-libs/fcl
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/tf2_eigen
	ros-noetic/tf2_sensor_msgs
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
