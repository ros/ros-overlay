# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Forked dependencies of Rospilot'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rospilot/rospilot_deps-release/archive/release/indigo/rospilot_deps/0.0.7-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_info_manager
	ros-indigo/cv_bridge
	ros-indigo/image_transport
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	virtual/ffmpeg
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

