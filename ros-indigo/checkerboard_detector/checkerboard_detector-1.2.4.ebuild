# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="brul#text"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/indigo/${PN}/1.2.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/dynamic_reconfigure
	ros-indigo/dynamic_tf_publisher
	ros-indigo/eigen_conversions
	ros-indigo/image_geometry
	ros-indigo/jsk_recognition_msgs
	ros-indigo/message_filters
	ros-indigo/posedetection_msgs
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/tf2
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
