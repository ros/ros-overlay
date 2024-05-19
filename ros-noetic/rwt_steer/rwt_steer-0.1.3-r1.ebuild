# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The rwt_steer package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/visualization_rwt-release/archive/release/noetic/${PN}/0.1.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/rosbridge_server
	ros-noetic/roswww
	ros-noetic/rwt_utils_3rdparty
	ros-noetic/web_video_server
	test? ( ros-noetic/image_publisher )
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rviz )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
