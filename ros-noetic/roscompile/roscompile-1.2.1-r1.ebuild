# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The roscompile package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/wu-robotics/${PN}-release/archive/release/noetic/${PN}/1.2.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/catkin
	ros-noetic/ros_introspection
	test? ( ros-noetic/geometry_msgs )
	test? ( ros-noetic/pluginlib )
	test? ( ros-noetic/pluginlib_tutorials )
	test? ( ros-noetic/roslint )
	test? ( ros-noetic/stereo_msgs )
	test? ( ros-noetic/tf )
	dev-lang/python
	dev-python/click
	dev-python/rospkg
	dev-python/pyyaml
	dev-python/click
	dev-python/rospkg
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
