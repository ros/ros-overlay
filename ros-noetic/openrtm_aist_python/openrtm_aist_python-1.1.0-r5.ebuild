# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="<p>Python binding of OpenRTM-AIST \(see <a href=\"http://www.ros.org/wiki/o[...]"
HOMEPAGE="http://ros.org/wiki/openrtm_aist"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/noetic/${PN}/1.1.0-5.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="EPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	net-misc/omniORB[python]
"
DEPEND="${RDEPEND}
	dev-util/cmake
	app-doc/doxygen
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
