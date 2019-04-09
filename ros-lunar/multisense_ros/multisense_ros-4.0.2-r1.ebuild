# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="multisense_ros"
HOMEPAGE="https://bitbucket.org/crl/multisense_ros"
SRC_URI="https://github.com/carnegieroboticsllc/${PN}-release/archive/release/lunar/${PN}/4.0.2-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/angles
	ros-lunar/cv_bridge
	ros-lunar/dynamic_reconfigure
	ros-lunar/genmsg
	ros-lunar/geometry_msgs
	ros-lunar/image_geometry
	ros-lunar/image_transport
	ros-lunar/message_generation
	ros-lunar/message_runtime
	ros-lunar/multisense_lib
	ros-lunar/rosbag
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/stereo_msgs
	ros-lunar/tf
	media-libs/libjpeg-turbo
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	dev-cpp/yaml-cpp
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
