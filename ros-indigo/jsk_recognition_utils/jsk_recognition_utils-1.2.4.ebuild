# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="C++ library about sensor model, geometrical modeling and perception."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/indigo/${PN}/1.2.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/eigen_conversions
	ros-indigo/geometry_msgs
	ros-indigo/image_geometry
	ros-indigo/jsk_recognition_msgs
	ros-indigo/jsk_topic_tools
	ros-indigo/message_runtime
	ros-indigo/pcl_msgs
	ros-indigo/pcl_ros
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/tf2_ros
	ros-indigo/tf_conversions
	ros-indigo/visualization_msgs
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/dynamic_reconfigure
	ros-indigo/message_generation
	dev-python/cython
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
