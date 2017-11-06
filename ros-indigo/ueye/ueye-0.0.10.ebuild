# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Driver for IDS Imaging uEye cameras."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/kmhallen/ueye-release/archive/release/indigo/ueye/0.0.10-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_calibration_parsers
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_transport
	ros-indigo/nodelet
	ros-indigo/roscpp
	ros-indigo/roslib
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
