# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This contains CvBridge, which converts between ROS\
	Image messages and [...]"
HOMEPAGE="http://www.ros.org/wiki/cv_bridge"
SRC_URI="https://github.com/tork-a/vision_opencv_python3-release/archive/release/melodic/${PN}/1.13.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/rosconsole
	ros-melodic/sensor_msgs
	test? ( ros-melodic/rostest )
	dev-libs/boost[python]
	media-libs/opencv
	dev-lang/python
	media-libs/opencv[python]
	test? ( dev-python/numpy )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
