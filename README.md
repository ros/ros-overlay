ros-overlay
===========

This overlay contains ebuilds for the Robot Operating System (ROS).

For instructions, please look to the [ROS wiki](http://wiki.ros.org/ROS/Installation).

Contributing
=============

There's a lot of ways to help out.

My Build Failed:
-----------------
In managing some 6000 ebuilds, one runs into a few hickups. Please don't hesitate
to file an issue!

Superflore:
------------
[Superflore](https://github.com/ros-infrastructure/superflore) is the tool used to
generate almost every ebuild in this repository. Since, frequently, the issue is that
an ebuild simply needs to be regenerated, I'll document how to use Superflore to do so.

1. Ensure you have _docker_ installed. This is needed to generate manifests.
2. [optional] Clone the overlay somewhere on your system, and verify it is on the master branch.
3. Set up your `~/.netrc` file with your GitHub login.
4. Clone & install superflore.
```
$ git clone https://github.com/ros-infrastructure/superflore
$ cd superflore
$ sudo python3 ./setup.py install
```
5. Run superflore to regenerate your package(s).
```
$ superflore-gen-ebuilds --ros-distro [distro] --only [pkg1] [pkg2] ... [pkgn]
```

If you cloned the overlay and want to use the stashed version, add `--output-repository-path [location of your repo]` to the end of the command above.
6. The above command will file a PR under your name to this overlay.
