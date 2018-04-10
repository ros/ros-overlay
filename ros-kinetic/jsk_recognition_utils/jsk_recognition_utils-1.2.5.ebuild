# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="C++ library about sensor model, geometrical modeling and perception."
HOMEPAGE="http://jsk-docs.readthedocs.io/en/latest/jsk_recognition/jsk_recognition_utils"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/${PN}/1.2.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/eigen_conversions
	ros-kinetic/geometry_msgs
	ros-kinetic/image_geometry
	ros-kinetic/jsk_recognition_msgs
	ros-kinetic/jsk_topic_tools
	ros-kinetic/message_runtime
	ros-kinetic/pcl_msgs
	ros-kinetic/pcl_ros
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/tf2_ros
	ros-kinetic/tf_conversions
	ros-kinetic/visualization_msgs
	test? ( ros-kinetic/jsk_tools )
	sci-libs/scikits_image
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/message_generation
	dev-python/cython
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
