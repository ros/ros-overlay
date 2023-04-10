# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="For every image, computes its sift features and send a new message with the[...]"
HOMEPAGE="https://jsk-docs.readthedocs.io/projects/jsk_recognition/en/latest/imagesift"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/${PN}/1.2.15-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/image_transport
	ros-melodic/jsk_recognition_utils
	ros-melodic/jsk_topic_tools
	ros-melodic/libsiftfast
	ros-melodic/nodelet
	ros-melodic/posedetection_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
