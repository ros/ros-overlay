# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="multisense_ros"
HOMEPAGE="https://github.com/carnegierobotics/multisense_ros"
SRC_URI="https://github.com/carnegieroboticsllc/${PN}-release/archive/release/melodic/${PN}/4.0.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/angles
	ros-melodic/cv_bridge
	ros-melodic/dynamic_reconfigure
	ros-melodic/genmsg
	ros-melodic/geometry_msgs
	ros-melodic/image_geometry
	ros-melodic/image_transport
	ros-melodic/message_generation
	ros-melodic/message_runtime
	ros-melodic/multisense_lib
	ros-melodic/rosbag
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/stereo_msgs
	ros-melodic/tf
	media-libs/libjpeg-turbo
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-cpp/yaml-cpp
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
