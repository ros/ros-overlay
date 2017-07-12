# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A Flask extension for applications in a reverse proxy not at the root A compl"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/asmodehn/flask-reverse-proxy-rosrelease/archive/release/indigo/flask_reverse_proxy/0.2.0-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/catkin_pip
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

