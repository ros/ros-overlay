# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package which implements capabilities, including code to parse capability i[...]"
HOMEPAGE="http://wiki.ros.org/capabilities"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.2.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/bondpy
	ros-melodic/message_runtime
	ros-melodic/nodelet
	ros-melodic/roslaunch
	ros-melodic/rospy
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	test? ( ros-melodic/geometry_msgs )
	test? ( ros-melodic/rosservice )
	dev-python/pyyaml
	test? ( dev-python/coverage )
	test? ( dev-python/mock )
	test? ( dev-python/pep8 )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
