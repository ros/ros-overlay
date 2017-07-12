# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Streaming of ROS Image Topics via HTTP"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RobotWebTools-release/ros_web_video-release/archive/release/indigo/ros_web_video/0.1.14-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/image_transport
	ros-indigo/mk
	ros-indigo/roscpp
	ros-indigo/rostime
	ros-indigo/sensor_msgs
	app-arch/bzip2
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-vcs/git
	dev-lang/yasm
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

