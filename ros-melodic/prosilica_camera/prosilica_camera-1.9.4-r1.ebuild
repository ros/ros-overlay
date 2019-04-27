# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS driver node for AVT/Prosilica Gigabit Ethernet \(GigE\) cameras."
HOMEPAGE="http://www.ros.org/wiki/prosilica_camera"
SRC_URI="https://github.com/ros-drivers-gbp/prosilica_driver-release/archive/release/melodic/${PN}/1.9.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/camera_calibration_parsers
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/driver_base
	ros-melodic/dynamic_reconfigure
	ros-melodic/image_transport
	ros-melodic/polled_camera
	ros-melodic/prosilica_gige_sdk
	ros-melodic/roscpp
	ros-melodic/self_test
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rosconsole
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
