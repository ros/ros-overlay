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
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/melodic/${PN}/1.7.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_tutorials
	ros-melodic/euslisp
	ros-melodic/message_runtime
	ros-melodic/roseus
	ros-melodic/rostest
	ros-melodic/smach
	ros-melodic/smach_msgs
	ros-melodic/smach_ros
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
