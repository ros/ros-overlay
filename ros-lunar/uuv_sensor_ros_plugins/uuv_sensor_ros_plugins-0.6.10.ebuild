# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The uuv_sensor_ros_plugins package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/${PN}/0.6.10-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/gazebo_dev
	ros-lunar/gazebo_plugins
	ros-lunar/geometry_msgs
	ros-lunar/message_filters
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/tf
	ros-lunar/tf2
	ros-lunar/tf2_ros
	ros-lunar/uuv_gazebo_plugins
	ros-lunar/uuv_sensor_ros_plugins_msgs
	test? ( ros-lunar/rostest )
	test? ( ros-lunar/rosunit )
	test? ( ros-lunar/xacro )
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
