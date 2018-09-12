# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="To find AR marker, it depends ar_track_alvar packages"
HOMEPAGE="http://wiki.ros.org/open_manipulator_ar_markers"
SRC_URI="https://github.com/ROBOTIS-GIT-release/open_manipulator_perceptions-release/archive/release/kinetic/${PN}/1.0.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ar_track_alvar
	ros-kinetic/ar_track_alvar_msgs
	ros-kinetic/image_proc
	ros-kinetic/image_transport
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
