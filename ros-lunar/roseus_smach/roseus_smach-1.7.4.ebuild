# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="roseus_smach\
\
	 * Euslisp state machine class. it will be moved.\
	[...]"
HOMEPAGE="http://ros.org/wiki/roseus_smach"
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/lunar/${PN}/1.7.4-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/actionlib_tutorials
	ros-lunar/euslisp
	ros-lunar/message_runtime
	ros-lunar/roseus
	ros-lunar/rostest
	ros-lunar/smach
	ros-lunar/smach_msgs
	ros-lunar/smach_ros
	ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
