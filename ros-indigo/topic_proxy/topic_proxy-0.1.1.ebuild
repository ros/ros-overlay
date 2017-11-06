# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="topic_proxy implements a ROS service server and client to pull single messages f"
HOMEPAGE="https://github.com/tu-darmstadt-ros-pkg/topic_proxy"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/topic_proxy-release/archive/release/indigo/topic_proxy/0.1.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/blob
	ros-indigo/message_runtime
	ros-indigo/roscpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

