// General
export @symbol("glClearIndex") fn clear_index(c: f32) void;
export @symbol("glClearColor") fn clear_color(red: f32, green: f32, blue: f32,
    alpha: f32) void;
export @symbol("glClear") fn clear(mask: gl_bitfield) void;
export @symbol("glIndexMask") fn index_mask(mask: uint) void;
export @symbol("glColorMask") fn color_mask(red: bool, green: bool, blue: bool,
    alpha: bool) void;
export @symbol("glAlphaFunc") fn alpha_func(func: gl_enum, ref: f32) void;
export @symbol("glBlendFunc") fn blend_func(sfactor: gl_enum,
    dfactor: gl_enum) void;
export @symbol("glLogicOp") fn logic_op(opcode: gl_enum) void;
export @symbol("glCullFace") fn cull_face(mode: gl_enum) void;
export @symbol("glFrontFace") fn front_face(mode: gl_enum) void;
export @symbol("glPointSize") fn point_size(sz: f32) void;
export @symbol("glLineWidth") fn line_width(width: f32) void;
export @symbol("glLineStipple") fn line_stipple(factor: int, pattern: u16) void;
export @symbol("glPolygonMode") fn polygon_mode(face: gl_enum,
    mode: gl_enum) void;
export @symbol("glPolygonOffset") fn polygon_offset(factor: f32,
    units: f32) void;
export @symbol("glPolygonStipple") fn polygon_stipple(mask: *const u8) void;
export @symbol("glGetPolygonStipple") fn get_polygon_stipple(mask: *u8) void;
export @symbol("glEdgeFlag") fn edge_flag(flag: bool) void;
export @symbol("glEdgeFlagv") fn edge_flagv(flag: *const bool) void;
export @symbol("glScissor") fn scissor(x: int, y: int,
    width: i32, height: i32) void;
export @symbol("glClipPlane") fn clip_plane(plane: gl_enum,
    equation: *const f64) void;
export @symbol("glGetClipPlane") fn get_clip_plane(plane: gl_enum,
    equation: *f64) void;
export @symbol("glDrawBuffer") fn draw_buffer(mode: gl_enum) void;
export @symbol("glReadBuffer") fn read_buffer(mode: gl_enum) void;
export @symbol("glEnable") fn enable(cap: gl_enum) void;
export @symbol("glDisable") fn disable(cap: gl_enum) void;
export @symbol("glIsEnabled") fn is_enabled(cap: gl_enum) bool;
export @symbol("glEnableClientState") fn enable_client_state(
    cap: gl_enum) void; // 1.1
export @symbol("glDisableClientState") fn disable_client_state(
    cap: gl_enum) void; // 1.1
export @symbol("glGetBooleanv") fn get_booleanv(pname: gl_enum,
    params: *bool) void;
export @symbol("glGetDoublev") fn get_doublev(pname: gl_enum,
    params: *f64) void;
export @symbol("glGetFloatv") fn get_floatv(pname: gl_enum, params: *f32) void;
export @symbol("glGetIntegerv") fn get_integerv(pname: gl_enum,
    params: *int) void;
export @symbol("glPushAttrib") fn push_attrib(mask: gl_bitfield) void;
export @symbol("glPopAttrib") fn pop_attrib() void;
export @symbol("glPushClientAttrib") fn push_client_attrib(
    mask: gl_bitfield) void; // 1.1
export @symbol("glPopClientAttrib") fn pop_client_attrib() void; // 1.1
export @symbol("glRenderMode") fn render_mode(mode: gl_enum) int;
export @symbol("glGetError") fn get_error() gl_enum;
export @symbol("glGetString") fn get_string(name: gl_enum) *const u8;
export @symbol("glFinish") fn finish() void;
export @symbol("glFlush") fn flush() void;
export @symbol("glHint") fn hint(target: gl_enum, mode: gl_enum) void;

// Depth buffer
export @symbol("glClearDepth") fn clear_depth(depth: f64) void;
export @symbol("glDepthFunc") fn depth_func(func: gl_enum) void;
export @symbol("glDepthMask") fn depth_mask(flag: bool) void;
export @symbol("glDepthRange") fn depth_range(near_val: f64, far_val: f64) void;

// Accumulation buffer
export @symbol("glClearAccum") fn clear_accum(red: f32, green: f32, blue: f32,
    alpha: f32) void;
export @symbol("glAccum") fn accum(op: gl_enum, value: f32) void;

// Transformation
export @symbol("glMatrixMode") fn matrix_mode(mode: gl_enum) void;
export @symbol("glOrtho") fn ortho(left: f64, right: f64, bottom: f64,
    top: f64, near_val: f64, far_val: f64) void;
export @symbol("glFrustum") fn frustum(left: f64, right: f64, bottom: f64,
    top: f64, near_val: f64, far_val: f64) void;
export @symbol("glViewport") fn viewport(x: int, y: int,
    width: i32, height: i32) void;
export @symbol("glPushMatrix") fn push_matrix() void;
export @symbol("glPopMatrix") fn pop_matrix() void;
export @symbol("glLoadIdentity") fn load_identity() void;
export @symbol("glLoadMatrixd") fn load_matrix_d(m: *const f64) void;
export @symbol("glLoadMatrixf") fn load_matrix_f(m: *const f32) void;
export @symbol("glMultMatrixd") fn mult_matrix_d(m: *const f64) void;
export @symbol("glMultMatrixf") fn mult_matrix_f(m: *const f32) void;
export @symbol("glRotated") fn rotate_d(angle: f64, x: f64, y: f64, z: f64) void;
export @symbol("glRotatef") fn rotate_f(angle: f32, x: f32, y: f32, z: f32) void;
export @symbol("glScaled") fn scale_d(x: f64, y: f64, z: f64) void;
export @symbol("glScalef") fn scale_f(x: f32, y: f32, z: f32) void;
export @symbol("glTranslated") fn translate_d(x: f64, y: f64, z: f64) void;
export @symbol("glTranslatef") fn translate_f(x: f32, y: f32, z: f32) void;

// Display lists
export @symbol("glIsList") fn is_list(list: uint) bool;
export @symbol("glDeleteLists") fn delete_lists(list: uint, range: i32) void;
export @symbol("glGenLists") fn gen_lists(range: i32) i32;
export @symbol("glNewList") fn new_list(list: uint, mode: gl_enum) void;
export @symbol("glEndList") fn end_list() void;
export @symbol("glCallList") fn call_list(list: uint) void;
export @symbol("glCallLists") fn call_lists(n: i32, t: gl_enum,
    lists: *const void) void;
export @symbol("glListBase") fn list_base(base: uint) void;

// Drawing functions
export @symbol("glBegin") fn begin(mode: gl_enum) void;
export @symbol("glEnd") fn end() void;
export @symbol("glVertex2d") fn vertex_2d(x: f64, y: f64) void;
export @symbol("glVertex2f") fn vertex_2f(x: f32, y: f32) void;
export @symbol("glVertex2i") fn vertex_2i(x: int, y: int) void;
export @symbol("glVertex2s") fn vertex_2s(x: i16, y: i16) void;
export @symbol("glVertex3d") fn vertex_3d(x: f64, y: f64, z: f64) void;
export @symbol("glVertex3f") fn vertex_3f(x: f32, y: f32, z: f32) void;
export @symbol("glVertex3i") fn vertex_3i(x: int, y: int, z: int) void;
export @symbol("glVertex3s") fn vertex_3s(x: i16, y: i16, z: i16) void;
export @symbol("glVertex4d") fn vertex_4d(x: f64, y: f64, z: f64, w: f64) void;
export @symbol("glVertex4f") fn vertex_4f(x: f32, y: f32, z: f32, w: f32) void;
export @symbol("glVertex4i") fn vertex_4i(x: int, y: int, z: int, w: int) void;
export @symbol("glVertex4s") fn vertex_4s(x: i16, y: i16, z: i16, w: i16) void;
export @symbol("glVertex2dv") fn vertex_2dv(v: *const f64) void;
export @symbol("glVertex2fv") fn vertex_2fv(v: *const f32) void;
export @symbol("glVertex2iv") fn vertex_2iv(v: *const int) void;
export @symbol("glVertex2sv") fn vertex_2sv(v: *const i16) void;
export @symbol("glVertex3dv") fn vertex_3dv(v: *const f64) void;
export @symbol("glVertex3fv") fn vertex_3fv(v: *const f32) void;
export @symbol("glVertex3iv") fn vertex_3iv(v: *const int) void;
export @symbol("glVertex3sv") fn vertex_3sv(v: *const i16) void;
export @symbol("glVertex4dv") fn vertex_4dv(v: *const f64) void;
export @symbol("glVertex4fv") fn vertex_4fv(v: *const f32) void;
export @symbol("glVertex4iv") fn vertex_4iv(v: *const int) void;
export @symbol("glVertex4sv") fn vertex_4sv(v: *const i16) void;
export @symbol("glNormal3b") fn normal_3b(nx: i8, ny: i8, nz: i8) void;
export @symbol("glNormal3d") fn normal_3d(nx: f64, ny: f64, nz: f64) void;
export @symbol("glNormal3f") fn normal_3f(nx: f32, ny: f32, nz: f32) void;
export @symbol("glNormal3i") fn normal_3i(nx: int, ny: int, nz: int) void;
export @symbol("glNormal3s") fn normal_3s(nx: i16, ny: i16, nz: i16) void;
export @symbol("glNormal3bv") fn normal_3bv(v: *const i8) void;
export @symbol("glNormal3dv") fn normal_3dv(v: *const f64) void;
export @symbol("glNormal3fv") fn normal_3fv(v: *const f32) void;
export @symbol("glNormal3iv") fn normal_3iv(v: *const int) void;
export @symbol("glNormal3sv") fn normal_3sv(v: *const i16) void;
export @symbol("glIndexd") fn index_d(c: f64) void;
export @symbol("glIndexf") fn index_f(c: f32) void;
export @symbol("glIndexi") fn index_i(c: int) void;
export @symbol("glIndexs") fn index_s(c: i16) void;
export @symbol("glIndexub") fn index_ub(c: u8) void; // 1.1
export @symbol("glIndexdv") fn index_dv(c: *const f64) void;
export @symbol("glIndexfv") fn index_fv(c: *const f32) void;
export @symbol("glIndexiv") fn index_iv(c: *const int) void;
export @symbol("glIndexsv") fn index_sv(c: *const i16) void;
export @symbol("glIndexubv") fn index_ubv(c: *const u8) void; // 1.1
export @symbol("glColor3b") fn color_3b(red: i8, green: i8, blue: i8) void;
export @symbol("glColor3d") fn color_3d(red: f64, green: f64, blue: f64) void;
export @symbol("glColor3f") fn color_3f(red: f32, green: f32, blue: f32) void;
export @symbol("glColor3i") fn color_3i(red: int, green: int, blue: int) void;
export @symbol("glColor3s") fn color_3s(red: i16, green: i16, blue: i16) void;
export @symbol("glColor3ub") fn color_3ub(red: u8, green: u8, blue: u8) void;
export @symbol("glColor3ui") fn color_3ui(red: uint, green: uint,
    blue: uint) void;
export @symbol("glColor3us") fn color_3us(red: u16, green: u16, blue: u16) void;
export @symbol("glColor4b") fn color_4b(red: i8, green: i8, blue: i8,
    alpha: i8) void;
export @symbol("glColor4d") fn color_4d(red: f64, green: f64, blue: f64,
    alpha: f64) void;
export @symbol("glColor4f") fn color_4f(red: f32, green: f32, blue: f32,
    alpha: f32) void;
export @symbol("glColor4i") fn color_4i(red: int, green: int, blue: int,
    alpha: int) void;
export @symbol("glColor4s") fn color_4s(red: i16, green: i16, blue: i16,
    alpha: i16) void;
export @symbol("glColor4ub") fn color_4ub(red: u8, green: u8, blue: u8,
    alpha: u8) void;
export @symbol("glColor4ui") fn color_4ui(red: uint, green: uint, blue: uint,
    alpha: uint) void;
export @symbol("glColor4us") fn color_4us(red: u16, green: u16, blue: u16,
    alpha: u16) void;
export @symbol("glColor3bv") fn color_3bv(v: *const i8) void;
export @symbol("glColor3dv") fn color_3dv(v: *const f64) void;
export @symbol("glColor3fv") fn color_3fv(v: *const f32) void;
export @symbol("glColor3iv") fn color_3iv(v: *const int) void;
export @symbol("glColor3sv") fn color_3sv(v: *const i16) void;
export @symbol("glColor3ubv") fn color_3ubv(v: *const u8) void;
export @symbol("glColor3uiv") fn color_3uiv(v: *const uint) void;
export @symbol("glColor3usv") fn color_3usv(v: *const u16) void;
export @symbol("glColor4bv") fn color_4bv(v: *const i8) void;
export @symbol("glColor4dv") fn color_4dv(v: *const f64) void;
export @symbol("glColor4fv") fn color_4fv(v: *const f32) void;
export @symbol("glColor4iv") fn color_4iv(v: *const int) void;
export @symbol("glColor4sv") fn color_4sv(v: *const i16) void;
export @symbol("glColor4ubv") fn color_4ubv(v: *const u8) void;
export @symbol("glColor4uiv") fn color_4uiv(v: *const uint) void;
export @symbol("glColor4usv") fn color_4usv(v: *const u16) void;
export @symbol("glTexCoord1d") fn tex_coord_1d(s: f64) void;
export @symbol("glTexCoord1f") fn tex_coord_1f(s: f32) void;
export @symbol("glTexCoord1i") fn tex_coord_1i(s: int) void;
export @symbol("glTexCoord1s") fn tex_coord_1s(s: i16) void;
export @symbol("glTexCoord2d") fn tex_coord_2d(s: f64, t: f64) void;
export @symbol("glTexCoord2f") fn tex_coord_2f(s: f32, t: f32) void;
export @symbol("glTexCoord2i") fn tex_coord_2i(s: int, t: int) void;
export @symbol("glTexCoord2s") fn tex_coord_2s(s: i16, t: i16) void;
export @symbol("glTexCoord3d") fn tex_coord_3d(s: f64, t: f64, r: f64) void;
export @symbol("glTexCoord3f") fn tex_coord_3f(s: f32, t: f32, r: f32) void;
export @symbol("glTexCoord3i") fn tex_coord_3i(s: int, t: int, r: int) void;
export @symbol("glTexCoord3s") fn tex_coord_3s(s: i16, t: i16, r: i16) void;
export @symbol("glTexCoord4d") fn tex_coord_4d(s: f64, t: f64, r: f64,
    q: f64) void;
export @symbol("glTexCoord4f") fn tex_coord_4f(s: f32, t: f32, r: f32,
    q: f32) void;
export @symbol("glTexCoord4i") fn tex_coord_4i(s: int, t: int, r: int,
    q: int) void;
export @symbol("glTexCoord4s") fn tex_coord_4s(s: i16, t: i16, r: i16,
    q: i16) void;
export @symbol("glTexCoord1dv") fn tex_coord_1dv(v: *const f64) void;
export @symbol("glTexCoord1fv") fn tex_coord_1fv(v: *const f32) void;
export @symbol("glTexCoord1iv") fn tex_coord_1iv(v: *const int) void;
export @symbol("glTexCoord1sv") fn tex_coord_1sv(v: *const i16) void;
export @symbol("glTexCoord2dv") fn tex_coord_2dv(v: *const f64) void;
export @symbol("glTexCoord2fv") fn tex_coord_2fv(v: *const f32) void;
export @symbol("glTexCoord2iv") fn tex_coord_2iv(v: *const int) void;
export @symbol("glTexCoord2sv") fn tex_coord_2sv(v: *const i16) void;
export @symbol("glTexCoord3dv") fn tex_coord_3dv(v: *const f64) void;
export @symbol("glTexCoord3fv") fn tex_coord_3fv(v: *const f32) void;
export @symbol("glTexCoord3iv") fn tex_coord_3iv(v: *const int) void;
export @symbol("glTexCoord3sv") fn tex_coord_3sv(v: *const i16) void;
export @symbol("glTexCoord4dv") fn tex_coord_4dv(v: *const f64) void;
export @symbol("glTexCoord4fv") fn tex_coord_4fv(v: *const f32) void;
export @symbol("glTexCoord4iv") fn tex_coord_4iv(v: *const int) void;
export @symbol("glTexCoord4sv") fn tex_coord_4sv(v: *const i16) void;
export @symbol("glRasterPos2d") fn raster_pos_2d(x: f64, y: f64) void;
export @symbol("glRasterPos2f") fn raster_pos_2f(x: f32, y: f32) void;
export @symbol("glRasterPos2i") fn raster_pos_2i(x: int, y: int) void;
export @symbol("glRasterPos2s") fn raster_pos_2s(x: i16, y: i16) void;
export @symbol("glRasterPos3d") fn raster_pos_3d(x: f64, y: f64, z: f64) void;
export @symbol("glRasterPos3f") fn raster_pos_3f(x: f32, y: f32, z: f32) void;
export @symbol("glRasterPos3i") fn raster_pos_3i(x: int, y: int, z: int) void;
export @symbol("glRasterPos3s") fn raster_pos_3s(x: i16, y: i16, z: i16) void;
export @symbol("glRasterPos4d") fn raster_pos_4d(x: f64, y: f64, z: f64,
    w: f64) void;
export @symbol("glRasterPos4f") fn raster_pos_4f(x: f32, y: f32, z: f32,
    w: f32) void;
export @symbol("glRasterPos4i") fn raster_pos_4i(x: int, y: int, z: int,
    w: int) void;
export @symbol("glRasterPos4s") fn raster_pos_4s(x: i16, y: i16, z: i16,
    w: i16) void;
export @symbol("glRasterPos2dv") fn raster_pos_2dv(v: *const f64) void;
export @symbol("glRasterPos2fv") fn raster_pos_2fv(v: *const f32) void;
export @symbol("glRasterPos2iv") fn raster_pos_2iv(v: *const int) void;
export @symbol("glRasterPos2sv") fn raster_pos_2sv(v: *const i16) void;
export @symbol("glRasterPos3dv") fn raster_pos_3dv(v: *const f64) void;
export @symbol("glRasterPos3fv") fn raster_pos_3fv(v: *const f32) void;
export @symbol("glRasterPos3iv") fn raster_pos_3iv(v: *const int) void;
export @symbol("glRasterPos3sv") fn raster_pos_3sv(v: *const i16) void;
export @symbol("glRasterPos4dv") fn raster_pos_4dv(v: *const f64) void;
export @symbol("glRasterPos4fv") fn raster_pos_4fv(v: *const f32) void;
export @symbol("glRasterPos4iv") fn raster_pos_4iv(v: *const int) void;
export @symbol("glRasterPos4sv") fn raster_pos_4sv(v: *const i16) void;
export @symbol("glRectd") fn rect_d(x1: f64, y1: f64, x2: f64, y2: f64) void;
export @symbol("glRectf") fn rect_f(x1: f32, y1: f32, x2: f32, y2: f32) void;
export @symbol("glRecti") fn rect_i(x1: int, y1: int, x2: int, y2: int) void;
export @symbol("glRects") fn rect_s(x1: i16, y1: i16, x2: i16, y2: i16) void;
export @symbol("glRectdv") fn rect_dv(v1: *const f64, v2: *const f64) void;
export @symbol("glRectfv") fn rect_fv(v1: *const f32, v2: *const f32) void;
export @symbol("glRectiv") fn rect_iv(v1: *const int, v2: *const int) void;
export @symbol("glRectsv") fn rect_sv(v1: *const i16, v2: *const i16) void;
