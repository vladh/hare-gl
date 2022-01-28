export @symbol("glBegin") fn begin(mode: gl_enum) void;
export @symbol("glEnd") fn end() void;

export @symbol("glVertex3f") fn vertex3f(x: f32, y: f32, z: f32) void;
export @symbol("glColor3f") fn color3f(red: f32, green: f32, blue: f32) void;

export @symbol("glEnable") fn enable(cap: gl_enum) void;
export @symbol("glDisable") fn disable(cap: gl_enum) void;

export @symbol("glFrontFace") fn front_face(mode: gl_enum) void;
export @symbol("glDepthFunc") fn depth_func(func: gl_enum) void;
export @symbol("glClear") fn clear(mask: gl_bitfield) void;
export @symbol("glClearDepth") fn clear_depth(depth: f64) void;
export @symbol("glClearColor") fn clear_color(red: f32, green: f32,
    blue: f32, alpha: f32) void;

export @symbol("glViewport") fn viewport(x: int, y: int,
    width: size, height: size) void;
export @symbol("glLoadMatrixf") fn load_matrix_f32(m: *f32) void;
export @symbol("glMatrixMode") fn matrix_mode(mode: gl_enum) void;
export @symbol("glLoadIdentity") fn load_identity() void;
export @symbol("glPushMatrix") fn push_matrix() void;
export @symbol("glPopMatrix") fn pop_matrix() void;
export @symbol("glTranslatef") fn translatef(x: f32, y: f32, z: f32) void;
export @symbol("glRotatef") fn rotatef(angle: f32, x: f32, y: f32, z: f32) void;
