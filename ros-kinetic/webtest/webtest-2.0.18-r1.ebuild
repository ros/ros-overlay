# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Wraps any WSGI application and makes it easy to send test requests to that appli'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/asmodehn/webtest-rosrelease/archive/release/kinetic/webtest/2.0.18-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	=dev-python/beautifulsoup-4*
	dev-python/six
	dev-python/waitress
	dev-python/webob
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/catkin_pip
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

