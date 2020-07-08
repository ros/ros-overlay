# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A main ROS interface for developers and users of <a href=\"http://nextage.k[...]"
HOMEPAGE="http://ros.org/wiki/nextage_ros_bridge"
SRC_URI="https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/${PN}/0.8.6-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD MIT )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/ar_track_alvar
	ros-melodic/hironx_ros_bridge
	ros-melodic/nextage_description
	ros-melodic/stereo_image_proc
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
