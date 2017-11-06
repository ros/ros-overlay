# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Genty, pronounced \"gen-tee\", stands for \"generate tests\". It promotes g[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/asmodehn/genty-rosrelease/archive/release/indigo/genty/1.3.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-1.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-python/mock
	dev-python/six
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/catkin_pip
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
