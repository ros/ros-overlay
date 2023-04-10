# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Scripts and launch files for Leo Rover teleoperation"
HOMEPAGE="http://wiki.ros.org/leo"
SRC_URI="https://github.com/fictionlab-gbp/leo_common-release/archive/release/melodic/${PN}/1.2.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/joy
	ros-melodic/teleop_twist_joy
	ros-melodic/teleop_twist_keyboard
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
