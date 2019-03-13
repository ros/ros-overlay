# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="More efficient version of tf/tf_remap able to handle TFs at kHz with tens o[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/peci1/${PN}-release/archive/release/indigo/${PN}/1.1.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/roscpp
	ros-indigo/tf2_msgs
	ros-indigo/xmlrpcpp
	test? ( ros-indigo/rostest )
	test? ( ros-indigo/tf )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
