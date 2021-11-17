# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Package which implements capabilities, including code to parse capability i[...]"
HOMEPAGE="http://wiki.ros.org/capabilities"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.3.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/bondpy
	ros-noetic/message_runtime
	ros-noetic/nodelet
	ros-noetic/roslaunch
	ros-noetic/rospy
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	test? ( ros-noetic/geometry_msgs )
	test? ( ros-noetic/rosservice )
	dev-python/pyyaml
	dev-python/pyyaml
	test? ( dev-python/coverage )
	test? ( dev-python/mock )
	test? ( dev-python/pep8 )
	test? ( dev-python/coverage )
	test? ( dev-python/mock )
	test? ( dev-python/pep8 )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
