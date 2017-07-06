# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A libfreenect-based ROS driver for the Microsoft Kinect.  This is
	a port of '"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-drivers-gbp/freenect_stack-release/archive/release/indigo/freenect_camera/0.4.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_info_manager
	ros-indigo/diagnostic_updater
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_transport
	ros-indigo/libfreenect
	ros-indigo/nodelet
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

