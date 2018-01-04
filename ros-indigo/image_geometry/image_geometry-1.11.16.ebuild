# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="image_geometry contains C++ and Python libraries for interpreting images\
 [...]"
HOMEPAGE="http://www.ros.org/wiki/image_geometry"
SRC_URI="https://github.com/ros-gbp/vision_opencv-release/archive/release/indigo/${PN}/1.11.16-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/sensor_msgs
	media-libs/opencv
	media-libs/opencv[python]
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
