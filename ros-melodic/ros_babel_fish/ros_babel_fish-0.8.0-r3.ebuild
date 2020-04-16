# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ros_babel_fish package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/StefanFabian/${PN}-release/archive/release/melodic/${PN}/0.8.0-3.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/roscpp
	ros-melodic/roslib
	test? ( ros-melodic/geometry_msgs )
	test? ( ros-melodic/ros_babel_fish_test_msgs )
	test? ( ros-melodic/rosapi )
	test? ( ros-melodic/roscpp_tutorials )
	test? ( ros-melodic/rosgraph_msgs )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/std_msgs )
	test? ( ros-melodic/std_srvs )
	test? ( ros-melodic/visualization_msgs )
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
