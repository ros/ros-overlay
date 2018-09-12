# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="REST API for ROS"
HOMEPAGE="https://github.com/asmodehn/rostful"
SRC_URI="https://github.com/pyros-dev/${PN}-rosrelease/archive/release/kinetic/${PN}/0.2.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/click
	ros-kinetic/flask_cors
	ros-kinetic/flask_reverse_proxy
	ros-kinetic/pyros
	ros-kinetic/pyros_interfaces_ros
	ros-kinetic/rospy
	ros-kinetic/tblib
	ros-kinetic/webargs
	test? ( ros-kinetic/rosunit )
	dev-python/flask
	dev-python/flask-restful
	dev-python/simplejson
	www-servers/tornado
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/catkin_pip
	ros-kinetic/roslint
	ros-kinetic/rostest
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
