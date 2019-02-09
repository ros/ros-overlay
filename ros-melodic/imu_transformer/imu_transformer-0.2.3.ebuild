# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Node/nodelet combination to transform sensor_msgs::Imu data from one frame [...]"
HOMEPAGE="http://ros.org/wiki/imu_transformer"
SRC_URI="https://github.com/ros-gbp/imu_pipeline-release/archive/release/melodic/${PN}/0.2.3-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/message_filters
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/roslaunch
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/tf2
	ros-melodic/tf2_ros
	ros-melodic/tf2_sensor_msgs
	ros-melodic/topic_tools
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
