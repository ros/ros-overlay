# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Node/nodelet combination to transform sensor_msgs::Imu data from one frame into '"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/imu_pipeline-release/archive/release/kinetic/imu_transformer/0.2.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/message_filters
	ros-kinetic/nodelet
	ros-kinetic/roscpp
	ros-kinetic/roslaunch
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/tf2
	ros-kinetic/tf2_ros
	ros-kinetic/tf2_sensor_msgs
	ros-kinetic/topic_tools
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

