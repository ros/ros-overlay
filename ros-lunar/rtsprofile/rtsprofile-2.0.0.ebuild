# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>Library to read, manipulate and write RT system profiles using the RTSPr[...]"
HOMEPAGE="http://ros.org/wiki/openrtm_tools"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/lunar/${PN}/2.0.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="EPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	net-misc/omniORB[python]
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
