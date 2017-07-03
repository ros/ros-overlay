# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="cv_camera uses OpenCV capture object to capture camera image.
  This supports ca"
HOMEPAGE="http://wiki.ros.org/cv_camera"
SRC_URI="https://github.com/OTL/cv_camera-release/archive/release/lunar/cv_camera/0.2.1-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/camera_info_manager
	ros-lunar/cv_bridge
	ros-lunar/image_transport
	ros-lunar/nodelet
	ros-lunar/opencv3
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/roslint
	ros-lunar/rostest
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

