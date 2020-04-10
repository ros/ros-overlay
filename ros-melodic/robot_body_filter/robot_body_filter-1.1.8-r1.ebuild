# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Filters the robot\'s body out of laser scans or point clouds."
HOMEPAGE="https://github.com/peci1/robot_body_filter"
SRC_URI="https://github.com/peci1/${PN}-release/archive/release/melodic/${PN}/1.1.8-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/filters
	ros-melodic/geometric_shapes
	ros-melodic/geometry_msgs
	ros-melodic/laser_geometry
	ros-melodic/message_runtime
	ros-melodic/moveit_core
	ros-melodic/moveit_ros_perception
	ros-melodic/pcl_conversions
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf2
	ros-melodic/tf2_ros
	ros-melodic/urdf
	ros-melodic/visualization_msgs
	test? ( ros-melodic/rostest )
	sci-libs/fcl
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/tf2_eigen
	ros-melodic/tf2_sensor_msgs
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
