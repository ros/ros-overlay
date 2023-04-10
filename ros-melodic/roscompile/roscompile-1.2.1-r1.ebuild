# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The roscompile package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/wu-robotics/${PN}-release/archive/release/melodic/${PN}/1.2.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/catkin
	ros-melodic/ros_introspection
	test? ( ros-melodic/geometry_msgs )
	test? ( ros-melodic/pluginlib )
	test? ( ros-melodic/pluginlib_tutorials )
	test? ( ros-melodic/roslint )
	test? ( ros-melodic/stereo_msgs )
	test? ( ros-melodic/tf )
	dev-lang/python
	dev-python/click
	dev-python/rospkg
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
