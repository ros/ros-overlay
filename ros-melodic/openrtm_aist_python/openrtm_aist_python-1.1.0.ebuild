# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>Python binding of OpenRTM-AIST \(see <a href=\"http://www.ros.org/wiki/o[...]"
HOMEPAGE="http://ros.org/wiki/openrtm_aist"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/melodic/${PN}/1.1.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

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
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
