# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS tools and scripts related to bagfiles"
HOMEPAGE="http://ros.org/wiki/bag_tools"
SRC_URI="https://github.com/srv/srv_tools-release/archive/release/indigo/bag_tools/0.0.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_calibration_parsers
	ros-indigo/cv_bridge
	ros-indigo/image_geometry
	ros-indigo/image_proc
	ros-indigo/message_filters
	ros-indigo/rosbag
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/stereo_image_proc
	dev-libs/console_bridge
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

