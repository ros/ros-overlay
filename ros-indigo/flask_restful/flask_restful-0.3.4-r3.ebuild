# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Simple framework for creating REST APIs http://flaskrestfulreadthedocsio"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/asmodehn/flask-restful-rosrelease/archive/release/indigo/flask_restful/0.3.4-3.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/aniso8601
	dev-python/flask
	dev-python/six
	dev-python/pytz
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/catkin_pip
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

