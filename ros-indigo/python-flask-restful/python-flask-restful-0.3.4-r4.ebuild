# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Simple framework for creating REST APIs http://flask-restful.readthedocs.io"
HOMEPAGE="https://github.com/flask-restful/flask-restful.git"
SRC_URI="https://github.com/pyros-dev/flask-restful-rosrelease/archive/release/indigo/${PN}/0.3.4-4.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/python-aniso8601
	dev-python/flask
	dev-python/six
	dev-python/pytz
	test? ( dev-python/blinker )
	test? ( dev-python/pycrypto )
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/catkin_pip
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
