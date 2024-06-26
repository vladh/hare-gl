# hare-gl

These are OpenGL bindings for [Hare](https://harelang.org).
They are generated with the
[glad2-hare branch of ~vladh/glad](https://git.sr.ht/~vladh/glad), which is
a fork of the original [glad by Dav1dde](https://github.com/Dav1dde/glad).
When Hare is released, a request to merge our version of glad upstream will
be submitted.

This repository contains a pregenerated set of useful OpenGL bindings, as well
as documentation regarding the state of OpenGL bindings in general in Hare,
including instructions on using glad2 with Hare.

## Status

Hare bindings can be generated using glad2 for any combination of versions and
extensions of OpenGL. If you spot any problems with the pregenerated bindings,
please send an email, or preferably a patch, as described below.

EGL, GLX, khrplatform and Vulkan are currently not supported. Support can be
added quite trivially to glad2 by adding a `types/*.ha` file.

There are currently a few limitations described below.

## Usage

To use the bindings, copy the appropriate subdirectory from this repository
into your project and adjust the `use` path accordingly. Alternatively,
follow the instructions below about how to generate your own bindings, for
example if you're using specific OpenGL extensions.

The functions and constants are named the same as their original OpenGL
counterparts, so you can use the `glFunctions()` and `GL_COSTANTS` you're used
to by prefixing them with `gl::`, i.e. `gl::glBindVertexBuffer()` and
`GL_FALSE`.

There are two options for loading the OpenGL bindings. Firstly, you can use the
built-in loader that comes with hare-gl. You can use this loader together with
another library, such as [hare-sdl2](https://git.sr.ht/~sircmpwn/hare-sdl2). To
do this, you simply need to call `gl::load()` before doing any OpenGL-related
stuff.

```
use gl;

export fn main() void = {
    # ...
    gl::load();
    # Perhaps you're using hare-sdl2?
    # sdl2::init(sdl2::init_flags::VIDEO)!;
    # ...
    gl::glBindVertexBuffer(...);
};
```

Alternatively, a library you're using may already provide a `GetProcAddress()`
function, which you're free to use by passing it to `gl::load_with_fn()`. Here's
an example.

**WARNING:** There is currently a bug which prevents this method from working.
Please use the built-in loader. This warning will be removed once the bug is
fixed.

```
use gl;

export fn main() void = {
    # ...
    gl::load_with_fn(&sdl2::gl_get_proc_address: *gl::fp_get_proc_address);
    # Perhaps you're using hare-sdl2?
    sdl2::init(sdl2::init_flags::VIDEO)!;
    # ...
    gl::glBindVertexBuffer(...);
};
```

## Generating your own bindings

If you'd like to generate your own bindings, for example if you're using
specific OpenGL extensions, you're free to do this by cloning the
[glad-sdl2 repository](https://git.sr.ht/~vladh/glad) and running glad yourself.
It might look something like this.

```
python -m glad --out-path=../my-project --api gl:core=4.3 --extensions GL_ARB_texture_cube_map_array hare
```

Then, simply include the generated bindings by adjusting your `use` path
appropriately.

## Contributing

Send patches to `~vladh/general@lists.sr.ht` using subject prefix `[PATCH hare-gl]`. For example:

```
git config sendemail.to '~vladh/general@lists.sr.ht'
git config format.subjectPrefix 'PATCH hare-gl'
git send-email HEAD^
```

For more information, see [git-send-email.io](https://git-send-email.io/).
