# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This package retrieves data from url-format files such as http://,
   ftp://, pa'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/resource_retriever-release/archive/release/kinetic/resource_retriever/1.12.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rosconsole
	ros-kinetic/roslib
	net-misc/curl
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

