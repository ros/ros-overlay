# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="RealSense Camera package allowing access to Intel T265 Tracking module and [...]"
HOMEPAGE="http://www.ros.org/wiki/RealSense"
SRC_URI="https://github.com/IntelRealSense/realsense-ros-release/archive/release/melodic/${PN}/2.2.14-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/ddynamic_reconfigure
	ros-melodic/diagnostic_updater
	ros-melodic/genmsg
	ros-melodic/image_transport
	ros-melodic/librealsense2
	ros-melodic/message_runtime
	ros-melodic/nav_msgs
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
