# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'ROS tools and scripts related to bagfiles'"
HOMEPAGE="http://ros.org/wiki/bag_tools"
SRC_URI="https://github.com/srv/srv_tools-release/archive/release/kinetic/bag_tools/0.0.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/camera_calibration_parsers
	ros-kinetic/cv_bridge
	ros-kinetic/image_geometry
	ros-kinetic/image_proc
	ros-kinetic/message_filters
	ros-kinetic/rosbag
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/stereo_image_proc
	dev-libs/console_bridge
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

