# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="a#text"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/${PN}/0.8.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( BSD MIT )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/hironx_ros_bridge
	ros-kinetic/nextage_description
	ros-kinetic/stereo_image_proc
	ros-kinetic/ueye_cam
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
