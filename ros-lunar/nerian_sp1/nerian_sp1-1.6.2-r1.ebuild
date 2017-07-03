# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="Node for the SP1 Stereo Vision System by Nerian Vision Technologies"
HOMEPAGE="http://wiki.ros.org/nerian_sp1"
SRC_URI="https://github.com/nerian-vision/nerian_sp1-release/archive/release/lunar/nerian_sp1/1.6.2-1.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/message_runtime
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	dev-libs/boost
	media-libs/libsdl
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

