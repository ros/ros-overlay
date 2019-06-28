# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The uuv_sensor_ros_plugins package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/${PN}/0.6.12-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/gazebo_dev
	ros-melodic/gazebo_plugins
	ros-melodic/geometry_msgs
	ros-melodic/image_transport
	ros-melodic/laser_geometry
	ros-melodic/message_filters
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/tf2
	ros-melodic/tf2_ros
	ros-melodic/uuv_gazebo_plugins
	ros-melodic/uuv_sensor_ros_plugins_msgs
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	test? ( ros-melodic/xacro )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
