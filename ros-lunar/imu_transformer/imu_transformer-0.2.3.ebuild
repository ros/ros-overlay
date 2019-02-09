# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Node/nodelet combination to transform sensor_msgs::Imu data from one frame [...]"
HOMEPAGE="http://ros.org/wiki/imu_transformer"
SRC_URI="https://github.com/ros-gbp/imu_pipeline-release/archive/release/lunar/${PN}/0.2.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/message_filters
	ros-lunar/nodelet
	ros-lunar/roscpp
	ros-lunar/roslaunch
	ros-lunar/sensor_msgs
	ros-lunar/tf
	ros-lunar/tf2
	ros-lunar/tf2_ros
	ros-lunar/tf2_sensor_msgs
	ros-lunar/topic_tools
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
