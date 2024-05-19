# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="<p>Shell commands for managing RT-Middleware running on OpenRTM-aist.</p>"
HOMEPAGE="http://ros.org/wiki/openrtm_tools"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/noetic/${PN}/3.0.1-5.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="EPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/rtctree
	ros-noetic/rtsprofile
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	net-misc/omniORB[python]
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
