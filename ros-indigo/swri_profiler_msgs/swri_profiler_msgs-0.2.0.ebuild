# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Messages for the swri_profiler tool."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/swri_profiler-release/archive/release/indigo/${PN}/0.2.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Copyright SwRI"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/message_runtime
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/std_msgs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
