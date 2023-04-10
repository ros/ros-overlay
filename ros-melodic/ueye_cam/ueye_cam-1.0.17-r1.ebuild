# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS nodelet and node that wraps the driver API for UEye cameras\
	by I[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/anqixu/${PN}-release/archive/release/melodic/${PN}/1.0.17-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/camera_calibration_parsers
	ros-melodic/camera_info_manager
	ros-melodic/dynamic_reconfigure
	ros-melodic/image_transport
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
