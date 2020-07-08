# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="multisense_ros"
HOMEPAGE="https://github.com/carnegierobotics/multisense_ros"
SRC_URI="https://github.com/carnegieroboticsllc/${PN}-release/archive/release/kinetic/${PN}/4.0.4-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/angles
	ros-kinetic/cv_bridge
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/genmsg
	ros-kinetic/geometry_msgs
	ros-kinetic/image_geometry
	ros-kinetic/image_transport
	ros-kinetic/message_generation
	ros-kinetic/message_runtime
	ros-kinetic/multisense_lib
	ros-kinetic/rosbag
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/stereo_msgs
	ros-kinetic/tf
	media-libs/libjpeg-turbo
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-cpp/yaml-cpp
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
