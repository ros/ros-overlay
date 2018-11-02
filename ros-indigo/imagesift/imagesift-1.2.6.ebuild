# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="For every image, computes its sift features and send a new message with the[...]"
HOMEPAGE="http://jsk-docs.readthedocs.io/en/latest/jsk_recognition/doc/imagesift"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/indigo/${PN}/1.2.6-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/image_transport
	ros-indigo/jsk_recognition_utils
	ros-indigo/jsk_topic_tools
	ros-indigo/libsiftfast
	ros-indigo/nodelet
	ros-indigo/posedetection_msgs
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	test? ( ros-indigo/rostest )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
