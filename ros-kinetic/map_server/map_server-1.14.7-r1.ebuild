# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="map_server provides the <tt>map_server</tt> ROS <a href=\"http://www.ros.or[...]"
HOMEPAGE="http://wiki.ros.org/map_server"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/${PN}/1.14.7-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/tf2
	test? ( ros-kinetic/rospy )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rosunit )
	sci-physics/bullet
	media-libs/libsdl
	media-libs/sdl-image
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
