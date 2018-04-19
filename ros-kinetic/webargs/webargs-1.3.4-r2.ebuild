# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A friendly library for parsing HTTP request arguments, with built-in suppor[...]"
HOMEPAGE="https://github.com/sloria/webargs"
SRC_URI="https://github.com/asmodehn/${PN}-rosrelease/archive/release/kinetic/${PN}/1.3.4-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/marshmallow
	test? ( dev-python/flask )
	test? ( dev-python/mock )
	test? ( dev-python/pytest )
	test? ( www-servers/tornado )
	test? ( dev-python/webtest )
	test? ( dev-python/werkzeug )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/catkin_pip
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
