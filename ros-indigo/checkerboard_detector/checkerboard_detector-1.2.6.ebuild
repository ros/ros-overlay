# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Uses opencv to find checkboards and compute their 6D poses with respect to [...]"
HOMEPAGE="http://jsk-docs.readthedocs.io/en/latest/jsk_recognition/doc/checkerboard_detector"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/indigo/${PN}/1.2.6-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

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
