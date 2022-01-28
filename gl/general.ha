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
export @symbol("glEdgeFlagv") fn edge_flag_v(flag: *const bool) void;
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
export @symbol("glGetBooleanv") fn get_boolean_v(pname: gl_enum,
    params: *bool) void;
export @symbol("glGetDoublev") fn get_double_v(pname: gl_enum,
    params: *f64) void;
export @symbol("glGetFloatv") fn get_float_v(pname: gl_enum, params: *f32) void;
export @symbol("glGetIntegerv") fn get_integer_v(pname: gl_enum,
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

// Vertex arrays (1.1)
export @symbol("glVertexPointer") fn vertex_pointer(sz: int, t: gl_enum,
    stride: i32, ptr: *const void) void;
export @symbol("glNormalPointer") fn normal_pointer(t: gl_enum, stride: i32,
    ptr: *const void) void;
export @symbol("glColorPointer") fn color_pointer(sz: int, t: gl_enum,
    stride: i32, ptr: *const void) void;
export @symbol("glIndexPointer") fn index_pointer(t: gl_enum, stride: i32,
    ptr: *const void) void;
export @symbol("glTexCoordPointer") fn tex_coord_pointer(sz: int, t: gl_enum,
    stride: i32, ptr: *const void) void;
export @symbol("glEdgeFlagPointer") fn edge_flag_pointer(stride: i32,
    ptr: *const void) void;
export @symbol("glGetPointerv") fn get_pointer_v(pname: gl_enum,
    params: **void) void;
export @symbol("glArrayElement") fn array_element(i: int) void;
export @symbol("glDrawArrays") fn draw_arrays(mode: gl_enum, first: int,
    count: i32) void;
export @symbol("glDrawElements") fn draw_elements(mode: gl_enum, count: i32,
    t: gl_enum, indices: *const void) void;
export @symbol("glInterleavedArrays") fn interleaved_arrays(format: gl_enum,
    stride: i32, pointer: *const void) void;

// Lighting
export @symbol("glShadeModel") fn shade_model(mode: gl_enum) void;
export @symbol("glLightf") fn light_f(light: gl_enum, pname: gl_enum,
    param: f32) void;
export @symbol("glLighti") fn light_i(light: gl_enum, pname: gl_enum,
    param: int) void;
export @symbol("glLightfv") fn light_fv(light: gl_enum, pname: gl_enum,
    params: *const f32) void;
export @symbol("glLightiv") fn light_iv(light: gl_enum, pname: gl_enum,
    params: *const int) void;
export @symbol("glGetLightfv") fn get_light_fv(light: gl_enum, pname: gl_enum,
    params: *f32) void;
export @symbol("glGetLightiv") fn get_light_iv(light: gl_enum, pname: gl_enum,
    params: *int) void;
export @symbol("glLightModelf") fn light_model_f(pname: gl_enum,
    param: f32) void;
export @symbol("glLightModeli") fn light_model_i(pname: gl_enum,
    param: int) void;
export @symbol("glLightModelfv") fn light_model_fv(pname: gl_enum,
    params: *const f32) void;
export @symbol("glLightModeliv") fn light_model_iv(pname: gl_enum,
    params: *const int) void;
export @symbol("glMaterialf") fn material_f(face: gl_enum, pname: gl_enum,
    param: f32) void;
export @symbol("glMateriali") fn material_i(face: gl_enum, pname: gl_enum,
    param: int) void;
export @symbol("glMaterialfv") fn material_fv(face: gl_enum, pname: gl_enum,
    params: *const f32) void;
export @symbol("glMaterialiv") fn material_iv(face: gl_enum, pname: gl_enum,
    params: *const int) void;
export @symbol("glGetMaterialfv") fn get_material_fv(face: gl_enum,
    pname: gl_enum, params: *f32) void;
export @symbol("glGetMaterialiv") fn get_material_iv(face: gl_enum,
    pname: gl_enum, params: *int) void;
export @symbol("glColorMaterial") fn color_material(face: gl_enum,
    mode: gl_enum) void;

// Raster functions
export @symbol("glPixelZoom") fn pixel_zoom(xfactor: f32, yfactor: f32) void;
export @symbol("glPixelStoref") fn pixel_store_f(pname: gl_enum,
    param: f32) void;
export @symbol("glPixelStorei") fn pixel_store_i(pname: gl_enum,
    param: int) void;
export @symbol("glPixelTransferf") fn pixel_transfer_f(pname: gl_enum,
    param: f32) void;
export @symbol("glPixelTransferi") fn pixel_transfer_i(pname: gl_enum,
    param: int) void;
export @symbol("glPixelMapfv") fn pixel_map_fv(map: gl_enum, mapsize: i32,
    values: *const f32) void;
export @symbol("glPixelMapuiv") fn pixel_map_uiv(map: gl_enum, mapsize: i32,
    values: *const uint) void;
export @symbol("glPixelMapusv") fn pixel_map_usv(map: gl_enum, mapsize: i32,
    values: *const u16) void;
export @symbol("glGetPixelMapfv") fn get_pixel_map_fv(map: gl_enum,
    values: *f32) void;
export @symbol("glGetPixelMapuiv") fn get_pixel_map_uiv(map: gl_enum,
    values: *uint) void;
export @symbol("glGetPixelMapusv") fn get_pixel_map_usv(map: gl_enum,
    values: *u16) void;
export @symbol("glBitmap") fn bitmap(width: i32, height: i32,
    xorig: f32, yorig: f32, xmove: f32, ymove: f32, bitmap: *const u8) void;
export @symbol("glReadPixels") fn read_pixels(x: int, y: int,
    width: i32, height: i32, format: gl_enum, t: gl_enum, pixels: *void) void;
export @symbol("glDrawPixels") fn draw_pixels(width: i32, height: i32,
    format: gl_enum, t: gl_enum, pixels: *const void) void;
export @symbol("glCopyPixels") fn copy_pixels(x: int, y: int,
    width: i32, height: i32, t: gl_enum) void;

// Stenciling
export @symbol("glStencilFunc") fn stencil_func(func: gl_enum, ref: int,
    mask: uint) void;
export @symbol("glStencilMask") fn stencil_mask(mask: uint) void;
export @symbol("glStencilOp") fn stencil_op(fail: gl_enum, zfail: gl_enum,
    zpass: gl_enum) void;
export @symbol("glClearStencil") fn clear_stencil(s: int) void;

// Texture mapping
export @symbol("glTexGend") fn tex_gen_d(coord: gl_enum, pname: gl_enum,
    param: f64) void;
export @symbol("glTexGenf") fn tex_gen_f(coord: gl_enum, pname: gl_enum,
    param: f32) void;
export @symbol("glTexGeni") fn tex_gen_i(coord: gl_enum, pname: gl_enum,
    param: int) void;
export @symbol("glTexGendv") fn tex_gen_dv(coord: gl_enum, pname: gl_enum,
    params: *const f64) void;
export @symbol("glTexGenfv") fn tex_gen_fv(coord: gl_enum, pname: gl_enum,
    params: *const f32) void;
export @symbol("glTexGeniv") fn tex_gen_iv(coord: gl_enum, pname: gl_enum,
    params: *const int) void;
export @symbol("glGetTexGendv") fn get_tex_gen_dv(coord: gl_enum,
    pname: gl_enum, params: *f64) void;
export @symbol("glGetTexGenfv") fn get_tex_gen_fv(coord: gl_enum,
    pname: gl_enum, params: *f32) void;
export @symbol("glGetTexGeniv") fn get_tex_gen_iv(coord: gl_enum,
    pname: gl_enum, params: *int) void;
export @symbol("glTexEnvf") fn tex_env_f(target: gl_enum, pname: gl_enum,
    param: f32) void;
export @symbol("glTexEnvi") fn tex_env_i(target: gl_enum, pname: gl_enum,
    param: int) void;
export @symbol("glTexEnvfv") fn tex_env_fv(target: gl_enum, pname: gl_enum,
    params: *const f32) void;
export @symbol("glTexEnviv") fn tex_env_iv(target: gl_enum, pname: gl_enum,
    params: *const int) void;
export @symbol("glGetTexEnvfv") fn get_tex_env_fv(target: gl_enum,
    pname: gl_enum, params: *f32) void;
export @symbol("glGetTexEnviv") fn get_tex_env_iv(target: gl_enum,
    pname: gl_enum, params: *int) void;
export @symbol("glTexParameterf") fn tex_parameter_f(target: gl_enum,
    pname: gl_enum, param: f32) void;
export @symbol("glTexParameteri") fn tex_parameter_i(target: gl_enum,
    pname: gl_enum, param: int) void;
export @symbol("glTexParameterfv") fn tex_parameter_fv(target: gl_enum,
    pname: gl_enum, params: *const f32) void;
export @symbol("glTexParameteriv") fn tex_parameter_iv(target: gl_enum,
    pname: gl_enum, params: *const int) void;
export @symbol("glGetTexParameterfv") fn get_tex_parameter_fv(target: gl_enum,
    pname: gl_enum, params: *f32) void;
export @symbol("glGetTexParameteriv") fn get_tex_parameter_iv(target: gl_enum,
    pname: gl_enum, params: *int) void;
export @symbol("glGetTexLevelParameterfv") fn get_tex_level_parameter_fv(
    target: gl_enum, level: int, pname: gl_enum, params: *f32) void;
export @symbol("glGetTexLevelParameteriv") fn get_tex_level_parameter_iv(
    target: gl_enum, level: int, pname: gl_enum, params: *int) void;
export @symbol("glTexImage1D") fn tex_image_1d(target: gl_enum, level: int,
    internal_format: int, width: i32, border: int, format: gl_enum,
    t: gl_enum, pixels: nullable *const void) void;
export @symbol("glTexImage2D") fn tex_image_2d(target: gl_enum, level: int,
    internal_format: int, width: i32, height: i32, border: int, format: gl_enum,
    t: gl_enum, pixels: nullable *const void) void;
export @symbol("glGetTexImage") fn get_tex_image(target: gl_enum, level: int,
    format: gl_enum, t: gl_enum, pixels: *void) void;

// 1.1 functions
export @symbol("glGenTextures") fn gen_textures(n: i32, textures: *uint) void;
export @symbol("glDeleteTextures") fn delete_textures(n: i32,
    textures: *const uint) void;
export @symbol("glBindTexture") fn bind_texture(target: gl_enum,
    texture: uint) void;
export @symbol("glPrioritizeTextures") fn prioritize_textures(n: i32,
    textures: *const uint, priorities: *const f32) void;
export @symbol("glAreTexturesResident") fn are_textures_resident(n: i32,
    textures: *const uint, residences: *bool) bool;
export @symbol("glIsTexture") fn is_texture(texture: uint) bool;
export @symbol("glTexSubImage1D") fn tex_sub_image_1d(target: gl_enum,
    level: int, xoffset: int, width: i32, format: gl_enum, t: gl_enum,
    pixels: *const void) void;
export @symbol("glTexSubImage2D") fn tex_sub_image_2d(target: gl_enum,
    level: int, xoffset: int, yoffset: int, width: i32, height: i32,
    format: gl_enum, t: gl_enum, pixels: *const void) void;
export @symbol("glCopyTexImage1D") fn copy_tex_image_1d(target: gl_enum,
    level: int, internal_format: gl_enum, x: int, y: int, width: i32,
    border: int) void;
export @symbol("glCopyTexImage2D") fn copy_tex_image_2d(target: gl_enum,
    level: int, internal_format: gl_enum, x: int, y: int,
    width: i32, height: i32, border: int) void;
export @symbol("glCopyTexSubImage1D") fn copy_tex_sub_image_1d(target: gl_enum,
    level: int, xoffset: int, x: int, y: int, width: i32) void;
export @symbol("glCopyTexSubImage2D") fn copy_tex_sub_image_2d(target: gl_enum,
    level: int, xoffset: int, yoffset: int, x: int, y: int,
    width: i32, height: i32) void;

// Evaluators
export @symbol("glMap1d") fn map_1d(target: gl_enum, u1: f64, u2: f64,
    stride: int, order: int, points: *const f64) void;
export @symbol("glMap1f") fn map_1f(target: gl_enum, u1: f32, u2: f32,
    stride: int, order: int, points: *const f32) void;
export @symbol("glMap2d") fn map_2d(target: gl_enum, u1: f64, u2: f64,
    ustride: int, uorder: int, v1: f64, v2: f64, vstride: int, vorder: int,
    points: *const f64) void;
export @symbol("glMap2f") fn map_2f(target: gl_enum, u1: f32, u2: f32,
    ustride: int, uorder: int, v1: f32, v2: f32, vstride: int, vorder: int,
    points: *const f32) void;
export @symbol("glGetMapdv") fn get_map_dv(target: gl_enum, query: gl_enum,
    v: *f64) void;
export @symbol("glGetMapfv") fn get_map_fv(target: gl_enum, query: gl_enum,
    v: *f32) void;
export @symbol("glGetMapiv") fn get_map_iv(target: gl_enum, query: gl_enum,
    v: *int) void;
export @symbol("glEvalCoord1d") fn eval_coord_1d(u: f64) void;
export @symbol("glEvalCoord1f") fn eval_coord_1f(u: f32) void;
export @symbol("glEvalCoord1dv") fn eval_coord_1dv(u: *const f64) void;
export @symbol("glEvalCoord1fv") fn eval_coord_1fv(u: *const f32) void;
export @symbol("glEvalCoord2d") fn eval_coord_2d(u: f64, v: f64) void;
export @symbol("glEvalCoord2f") fn eval_coord_2f(u: f32, v: f32) void;
export @symbol("glEvalCoord2dv") fn eval_coord_2dv(u: *const f64) void;
export @symbol("glEvalCoord2fv") fn eval_coord_2fv(u: *const f32) void;
export @symbol("glMapGrid1d") fn map_grid_1d(un: int, u1: f64, u2: f64) void;
export @symbol("glMapGrid1f") fn map_grid_1f(un: int, u1: f32, u2: f32) void;
export @symbol("glMapGrid2d") fn map_grid_2d(un: int, u1: f64, u2: f64,
    vn: int, v1: f64, v2: f64) void;
export @symbol("glMapGrid2f") fn map_grid_2f(un: int, u1: f32, u2: f32,
    vn: int, v1: f32, v2: f32) void;
export @symbol("glEvalPoint1") fn eval_point_1(i: int) void;
export @symbol("glEvalPoint2") fn eval_point_2(i: int, j: int) void;
export @symbol("glEvalMesh1") fn eval_mesh_1(mode: gl_enum, i1: int, i2: int) void;
export @symbol("glEvalMesh2") fn eval_mesh_2(mode: gl_enum, i1: int, i2: int,
    j1: int, j2: int) void;

// Fog
export @symbol("glFogf") fn fog_f(pname: gl_enum, param: f32) void;
export @symbol("glFogi") fn fog_i(pname: gl_enum, param: int) void;
export @symbol("glFogfv") fn fog_fv(pname: gl_enum, params: *const f32) void;
export @symbol("glFogiv") fn fog_iv(pname: gl_enum, params: *const int) void;

// Selection and feedback
export @symbol("glFeedbackBuffer") fn feedback_buffer(sz: i32, t: gl_enum,
    buffer: *f32) void;
export @symbol("glPassThrough") fn pass_through(token: f32) void;
export @symbol("glSelectBuffer") fn select_buffer(sz: i32, buffer: *uint) void;
export @symbol("glInitNames") fn init_names() void;
export @symbol("glLoadName") fn load_name(name: uint) void;
export @symbol("glPushName") fn push_name(name: uint) void;
export @symbol("glPopName") fn pop_name() void;

// OpenGL 1.2
export @symbol("glDrawRangeElements") fn draw_range_elements(mode: gl_enum,
    start: uint, end: uint, count: i32, t: gl_enum,
    indices: *const void) void;
export @symbol("glTexImage3D") fn tex_image_3d(target: gl_enum, level: int,
    internal_format: int, width: i32, height: i32, depth: i32, border: int,
    format: gl_enum, t: gl_enum, pixels: nullable *const void) void;
export @symbol("glTexSubImage3D") fn tex_sub_image_3d(target: gl_enum,
    level: int, xoffset: int, yoffset: int, zoffset: int,
    width: i32, height: i32, depth: i32, format: gl_enum, t: gl_enum,
    pixels: *const void) void;
export @symbol("glCopyTexSubImage3D") fn copy_tex_sub_image_3d(target: gl_enum,
    level: int, xoffset: int, yoffset: int, zoffset: int, x: int, y: int,
    width: i32, height: i32) void;

type PFNGLDRAWRANGEELEMENTSPROC = fn(mode: gl_enum, start: uint, end: uint,
    count: i32, t: gl_enum, indices: *const void) void;
type PFNGLTEXIMAGE3DPROC = fn(target: gl_enum, level: int, internal_format: int,
    width: i32, height: i32, depth: i32, border: int, format: gl_enum,
    t: gl_enum, pixels: *const void) void;
type PFNGLTEXSUBIMAGE3DPROC = fn(target: gl_enum, level: int, xoffset: int,
    yoffset: int, zoffset: int, width: i32, height: i32, depth: i32,
    format: gl_enum, t: gl_enum, pixels: *const void) void;
type PFNGLCOPYTEXSUBIMAGE3DPROC = fn(target: gl_enum, level: int, xoffset: int,
    yoffset: int, zoffset: int, x: int, y: int, width: i32, height: i32) void;

// GL_ARB_imaging
export @symbol("glColorTable") fn color_table(target: gl_enum,
    internal_format: gl_enum, width: i32, format: gl_enum, t: gl_enum,
    table: *const void) void;
export @symbol("glColorSubTable") fn color_sub_table(target: gl_enum,
    start: i32, count: i32, format: gl_enum, t: gl_enum,
    data: *const void) void;
export @symbol("glColorTableParameteriv") fn color_table_parameter_iv(
    target: gl_enum, pname: gl_enum, params: *const int) void;
export @symbol("glColorTableParameterfv") fn color_table_parameter_fv(
    target: gl_enum, pname: gl_enum, params: *const f32) void;
export @symbol("glCopyColorSubTable") fn copy_color_sub_table(target: gl_enum,
    start: i32, x: int, y: int, width: i32) void;
export @symbol("glCopyColorTable") fn copy_color_table(target: gl_enum,
    internal_format: gl_enum, x: int, y: int, width: i32) void;
export @symbol("glGetColorTable") fn get_color_table(target: gl_enum,
    format: gl_enum, t: gl_enum, table: *void) void;
export @symbol("glGetColorTableParameterfv") fn get_color_table_parameter_fv(
    target: gl_enum, pname: gl_enum, params: *f32) void;
export @symbol("glGetColorTableParameteriv") fn get_color_table_parameter_iv(
    target: gl_enum, pname: gl_enum, params: *int) void;
export @symbol("glBlendEquation") fn blend_equation(mode: gl_enum) void;
export @symbol("glBlendColor") fn blend_color(red: f32, green: f32, blue: f32,
    alpha: f32) void;
export @symbol("glHistogram") fn histogram(target: gl_enum, width: i32,
    internal_format: gl_enum, sink: bool) void;
export @symbol("glResetHistogram") fn reset_histogram(target: gl_enum) void;
export @symbol("glGetHistogram") fn get_histogram(target: gl_enum, reset: bool,
    format: gl_enum, t: gl_enum, values: *void) void;
export @symbol("glGetHistogramParameterfv") fn get_histogram_parameter_fv(
    target: gl_enum, pname: gl_enum, params: *f32) void;
export @symbol("glGetHistogramParameteriv") fn get_histogram_parameter_iv(
    target: gl_enum, pname: gl_enum, params: *int) void;
export @symbol("glMinmax") fn minmax(target: gl_enum, internal_format: gl_enum,
    sink: bool) void;
export @symbol("glResetMinmax") fn reset_minmax(target: gl_enum) void;
export @symbol("glGetMinmax") fn get_minmax(target: gl_enum, reset: bool,
    format: gl_enum, types: gl_enum, values: *void) void;
export @symbol("glGetMinmaxParameterfv") fn get_minmax_parameter_fv(
    target: gl_enum, pname: gl_enum, params: *f32) void;
export @symbol("glGetMinmaxParameteriv") fn get_minmax_parameter_iv(
    target: gl_enum, pname: gl_enum, params: *int) void;
export @symbol("glConvolutionFilter1D") fn convolution_filter_1d(
    target: gl_enum, internal_format: gl_enum, width: i32, format: gl_enum,
    t: gl_enum, image: *const void) void;
export @symbol("glConvolutionFilter2D") fn convolution_filter_2d(
    target: gl_enum, internal_format: gl_enum, width: i32, height: i32,
    format: gl_enum, t: gl_enum, image: *const void) void;
export @symbol("glConvolutionParameterf") fn convolution_parameter_f(
    target: gl_enum, pname: gl_enum, params: f32) void;
export @symbol("glConvolutionParameterfv") fn convolution_parameter_fv(
    target: gl_enum, pname: gl_enum, params: *const f32) void;
export @symbol("glConvolutionParameteri") fn convolution_parameter_i(
    target: gl_enum, pname: gl_enum, params: int) void;
export @symbol("glConvolutionParameteriv") fn convolution_parameter_iv(
    target: gl_enum, pname: gl_enum, params: *const int) void;
export @symbol("glCopyConvolutionFilter1D") fn copy_convolution_filter_1d(
    target: gl_enum, internal_format: gl_enum, x: int, y: int, width: i32) void;
export @symbol("glCopyConvolutionFilter2D") fn copy_convolution_filter_2d(
    target: gl_enum, internal_format: gl_enum, x: int, y: int,
    width: i32, height: i32) void;
export @symbol("glGetConvolutionFilter") fn get_convolution_filter(
    target: gl_enum, format: gl_enum, t: gl_enum, image: *void) void;
export @symbol("glGetConvolutionParameterfv") fn get_convolution_paramter_fv(
    target: gl_enum, pname: gl_enum, params: *f32) void;
export @symbol("glGetConvolutionParameteriv") fn get_convolution_parameter_iv(
    target: gl_enum, pname: gl_enum, params: *int) void;
export @symbol("glSeparableFilter2D") fn separable_filter_2d(target: gl_enum,
    internal_format: gl_enum, width: i32, height: i32, format: gl_enum,
    t: gl_enum, row: *const void, column: *const void) void;
export @symbol("glGetSeparableFilter") fn get_separable_filter(target: gl_enum,
    format: gl_enum, t: gl_enum, row: *void, column: *void, span: *void) void;

// OpenGL 1.3
export @symbol("glActiveTexture") fn active_texture(texture: gl_enum) void;
export @symbol("glClientActiveTexture") fn client_active_texture(
    texture: gl_enum) void;
export @symbol("glCompressedTexImage1D") fn compressed_tex_image_1d(
    target: gl_enum, level: int, internal_format: gl_enum, width: i32,
    border: int, imageSize: i32, data: *const void) void;
export @symbol("glCompressedTexImage2D") fn compressed_tex_image_2d(
    target: gl_enum, level: int, internal_format: gl_enum,
    width: i32, height: i32, border: int, imageSize: i32,
    data: *const void) void;
export @symbol("glCompressedTexImage3D") fn compressed_tex_image_3d(
    target: gl_enum, level: int, internal_format: gl_enum,
    width: i32, height: i32, depth: i32, border: int, imageSize: i32,
    data: *const void) void;
export @symbol("glCompressedTexSubImage1D") fn compressed_tex_sub_image_1d(
    target: gl_enum, level: int, xoffset: int, width: i32, format: gl_enum,
    imageSize: i32, data: *const void) void;
export @symbol("glCompressedTexSubImage2D") fn compressed_tex_sub_image_2d(
    target: gl_enum, level: int, xoffset: int, yoffset: int,
    width: i32, height: i32, format: gl_enum, imageSize: i32,
    data: *const void) void;
export @symbol("glCompressedTexSubImage3D") fn compressed_tex_sub_image_3d(
    target: gl_enum, level: int, xoffset: int, yoffset: int, zoffset: int,
    width: i32, height: i32, depth: i32, format: gl_enum, imageSize: i32,
    data: *const void) void;
export @symbol("glGetCompressedTexImage") fn get_compressed_tex_image(
    target: gl_enum, lod: int, img: *void) void;
export @symbol("glMultiTexCoord1d") fn multi_tex_coord_1d(target: gl_enum,
    s: f64) void;
export @symbol("glMultiTexCoord1dv") fn multi_tex_coord_1dv(target: gl_enum,
    v: *const f64) void;
export @symbol("glMultiTexCoord1f") fn multi_tex_coord_1f(target: gl_enum,
    s: f32) void;
export @symbol("glMultiTexCoord1fv") fn multi_tex_coord_1fv(target: gl_enum,
    v: *const f32) void;
export @symbol("glMultiTexCoord1i") fn multi_tex_coord_1i(target: gl_enum,
    s: int) void;
export @symbol("glMultiTexCoord1iv") fn multi_tex_coord_1iv(target: gl_enum,
    v: *const int) void;
export @symbol("glMultiTexCoord1s") fn multi_tex_coord_1s(target: gl_enum,
    s: i16) void;
export @symbol("glMultiTexCoord1sv") fn multi_tex_coord_1sv(target: gl_enum,
    v: *const i16) void;
export @symbol("glMultiTexCoord2d") fn multi_tex_coord_2d(target: gl_enum,
    s: f64, t: f64) void;
export @symbol("glMultiTexCoord2dv") fn multi_tex_coord_2dv(target: gl_enum,
    v: *const f64) void;
export @symbol("glMultiTexCoord2f") fn multi_tex_coord_2f(target: gl_enum,
    s: f32, t: f32) void;
export @symbol("glMultiTexCoord2fv") fn multi_tex_coord_2fv(target: gl_enum,
    v: *const f32) void;
export @symbol("glMultiTexCoord2i") fn multi_tex_coord_2i(target: gl_enum,
    s: int, t: int) void;
export @symbol("glMultiTexCoord2iv") fn multi_tex_coord_2iv(target: gl_enum,
    v: *const int) void;
export @symbol("glMultiTexCoord2s") fn multi_tex_coord_2s(target: gl_enum,
    s: i16, t: i16) void;
export @symbol("glMultiTexCoord2sv") fn multi_tex_coord_2sv(target: gl_enum,
    v: *const i16) void;
export @symbol("glMultiTexCoord3d") fn multi_tex_coord_3d(target: gl_enum,
    s: f64, t: f64, r: f64) void;
export @symbol("glMultiTexCoord3dv") fn multi_tex_coord_3dv(target: gl_enum,
    v: *const f64) void;
export @symbol("glMultiTexCoord3f") fn multi_tex_coord_3f(target: gl_enum,
    s: f32, t: f32, r: f32) void;
export @symbol("glMultiTexCoord3fv") fn multi_tex_coord_3fv(target: gl_enum,
    v: *const f32) void;
export @symbol("glMultiTexCoord3i") fn multi_tex_coord_3i(target: gl_enum,
    s: int, t: int, r: int) void;
export @symbol("glMultiTexCoord3iv") fn multi_tex_coord_3iv(target: gl_enum,
    v: *const int) void;
export @symbol("glMultiTexCoord3s") fn multi_tex_coord_3s(target: gl_enum,
    s: i16, t: i16, r: i16) void;
export @symbol("glMultiTexCoord3sv") fn multi_tex_coord_3sv(target: gl_enum,
    v: *const i16) void;
export @symbol("glMultiTexCoord4d") fn multi_tex_coord_4d(target: gl_enum,
    s: f64, t: f64, r: f64, q: f64) void;
export @symbol("glMultiTexCoord4dv") fn multi_tex_coord_4dv(target: gl_enum,
    v: *const f64) void;
export @symbol("glMultiTexCoord4f") fn multi_tex_coord_4f(target: gl_enum,
    s: f32, t: f32, r: f32, q: f32) void;
export @symbol("glMultiTexCoord4fv") fn multi_tex_coord_4fv(target: gl_enum,
    v: *const f32) void;
export @symbol("glMultiTexCoord4i") fn multi_tex_coord_4i(target: gl_enum,
    s: int, t: int, r: int, q: int) void;
export @symbol("glMultiTexCoord4iv") fn multi_tex_coord_4iv(target: gl_enum,
    v: *const int) void;
export @symbol("glMultiTexCoord4s") fn multi_tex_coord_4s(target: gl_enum,
    s: i16, t: i16, r: i16, q: i16) void;
export @symbol("glMultiTexCoord4sv") fn multi_tex_coord_4sv(target: gl_enum,
    v: *const i16) void;
export @symbol("glLoadTransposeMatrixd") fn load_transpose_matrix_d(
    m: const [16]f64) void;
export @symbol("glLoadTransposeMatrixf") fn load_transpose_matrix_f(
    m: const [16]f32) void;
export @symbol("glMultTransposeMatrixd") fn mult_transpose_matrix_d(
    m: const [16]f64) void;
export @symbol("glMultTransposeMatrixf") fn mult_transpose_matrix_f(
    m: const [16]f32) void;
export @symbol("glSampleCoverage") fn sample_coverage(value: f32,
    invert: bool) void;

type PFNGLACTIVETEXTUREPROC = fn(texture: gl_enum) void;
type PFNGLSAMPLECOVERAGEPROC = fn(value: f32, invert: bool) void;
type PFNGLCOMPRESSEDTEXIMAGE3DPROC = fn(target: gl_enum, level: int,
    internal_format: gl_enum, width: i32, height: i32, depth: i32, border: int,
    image_size: i32, data: *const void) void;
type PFNGLCOMPRESSEDTEXIMAGE2DPROC = fn(target: gl_enum, level: int,
    internal_format: gl_enum, width: i32, height: i32, border: int,
    image_size: i32, data: *const void) void;
type PFNGLCOMPRESSEDTEXIMAGE1DPROC = fn(target: gl_enum, level: int,
    internal_format: gl_enum, width: i32, border: int,
    image_size: i32, data: *const void) void;
type PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC = fn(target: gl_enum, level: int,
    xoffset: int, yoffset: int, zoffset: int, width: i32, height: i32,
    depth: i32, format: gl_enum,
    image_size: i32, data: *const void) void;
type PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC = fn(target: gl_enum, level: int,
    xoffset: int, yoffset: int, width: i32, height: i32, format: gl_enum,
    image_size: i32, data: *const void) void;
type PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC = fn(target: gl_enum, level: int,
    xoffset: int, width: i32, format: gl_enum,
    image_size: i32, data: *const void) void;
type PFNGLGETCOMPRESSEDTEXIMAGEPROC = fn(target: gl_enum, level: int,
    img: *void) void;

// GL_ARB_multitexture (ARB extension 1 and OpenGL 1.2.1)
export @symbol("glActiveTextureARB") fn active_texture_arb(
    texture: gl_enum) void;
export @symbol("glClientActiveTextureARB") fn client_active_texture_arb(
    texture: gl_enum) void;
export @symbol("glMultiTexCoord1dARB") fn multi_tex_coord_1d_arb(
    target: gl_enum, s: f64) void;
export @symbol("glMultiTexCoord1dvARB") fn multi_tex_coord_1dv_arb(
    target: gl_enum, v: *const f64) void;
export @symbol("glMultiTexCoord1fARB") fn multi_tex_coord_1f_arb(
    target: gl_enum, s: f32) void;
export @symbol("glMultiTexCoord1fvARB") fn multi_tex_coord_1fv_arb(
    target: gl_enum, v: *const f32) void;
export @symbol("glMultiTexCoord1iARB") fn multi_tex_coord_1i_arb(
    target: gl_enum, s: int) void;
export @symbol("glMultiTexCoord1ivARB") fn multi_tex_coord_1iv_arb(
    target: gl_enum, v: *const int) void;
export @symbol("glMultiTexCoord1sARB") fn multi_tex_coord_1s_arb(
    target: gl_enum, s: i16) void;
export @symbol("glMultiTexCoord1svARB") fn multi_tex_coord_1sv_arb(
    target: gl_enum, v: *const i16) void;
export @symbol("glMultiTexCoord2dARB") fn multi_tex_coord_2d_arb(
    target: gl_enum, s: f64, t: f64) void;
export @symbol("glMultiTexCoord2dvARB") fn multi_tex_coord_2dv_arb(
    target: gl_enum, v: *const f64) void;
export @symbol("glMultiTexCoord2fARB") fn multi_tex_coord_2f_arb(
    target: gl_enum, s: f32, t: f32) void;
export @symbol("glMultiTexCoord2fvARB") fn multi_tex_coord_2fv_arb(
    target: gl_enum, v: *const f32) void;
export @symbol("glMultiTexCoord2iARB") fn multi_tex_coord_2i_arb(
    target: gl_enum, s: int, t: int) void;
export @symbol("glMultiTexCoord2ivARB") fn multi_tex_coord_2iv_arb(
    target: gl_enum, v: *const int) void;
export @symbol("glMultiTexCoord2sARB") fn multi_tex_coord_2s_arb(
    target: gl_enum, s: i16, t: i16) void;
export @symbol("glMultiTexCoord2svARB") fn multi_tex_coord_2sv_arb(
    target: gl_enum, v: *const i16) void;
export @symbol("glMultiTexCoord3dARB") fn multi_tex_coord_3d_arb(
    target: gl_enum, s: f64, t: f64, r: f64) void;
export @symbol("glMultiTexCoord3dvARB") fn multi_tex_coord_3dv_arb(
    target: gl_enum, v: *const f64) void;
export @symbol("glMultiTexCoord3fARB") fn multi_tex_coord_3f_arb(
    target: gl_enum, s: f32, t: f32, r: f32) void;
export @symbol("glMultiTexCoord3fvARB") fn multi_tex_coord_3fv_arb(
    target: gl_enum, v: *const f32) void;
export @symbol("glMultiTexCoord3iARB") fn multi_tex_coord_3i_arb(
    target: gl_enum, s: int, t: int, r: int) void;
export @symbol("glMultiTexCoord3ivARB") fn multi_tex_coord_3iv_arb(
    target: gl_enum, v: *const int) void;
export @symbol("glMultiTexCoord3sARB") fn multi_tex_coord_3s_arb(
    target: gl_enum, s: i16, t: i16, r: i16) void;
export @symbol("glMultiTexCoord3svARB") fn multi_tex_coord_3sv_arb(
    target: gl_enum, v: *const i16) void;
export @symbol("glMultiTexCoord4dARB") fn multi_tex_coord_4d_arb(
    target: gl_enum, s: f64, t: f64, r: f64, q: f64) void;
export @symbol("glMultiTexCoord4dvARB") fn multi_tex_coord_4dv_arb(
    target: gl_enum, v: *const f64) void;
export @symbol("glMultiTexCoord4fARB") fn multi_tex_coord_4f_arb(
    target: gl_enum, s: f32, t: f32, r: f32, q: f32) void;
export @symbol("glMultiTexCoord4fvARB") fn multi_tex_coord_4fv_arb(
    target: gl_enum, v: *const f32) void;
export @symbol("glMultiTexCoord4iARB") fn multi_tex_coord_4i_arb(
    target: gl_enum, s: int, t: int, r: int, q: int) void;
export @symbol("glMultiTexCoord4ivARB") fn multi_tex_coord_4iv_arb(
    target: gl_enum, v: *const int) void;
export @symbol("glMultiTexCoord4sARB") fn multi_tex_coord_4s_arb(
    target: gl_enum, s: i16, t: i16, r: i16, q: i16) void;
export @symbol("glMultiTexCoord4svARB") fn multi_tex_coord_4sv_arb(
    target: gl_enum, v: *const i16) void;

type PFNGLACTIVETEXTUREARBPROC = fn(texture: gl_enum) void;
type PFNGLCLIENTACTIVETEXTUREARBPROC = fn(texture: gl_enum) void;
type PFNGLMULTITEXCOORD1DARBPROC = fn(target: gl_enum, s: f64) void;
type PFNGLMULTITEXCOORD1DVARBPROC = fn(target: gl_enum, v: *const f64) void;
type PFNGLMULTITEXCOORD1FARBPROC = fn(target: gl_enum, s: f32) void;
type PFNGLMULTITEXCOORD1FVARBPROC = fn(target: gl_enum, v: *const f32) void;
type PFNGLMULTITEXCOORD1IARBPROC = fn(target: gl_enum, s: int) void;
type PFNGLMULTITEXCOORD1IVARBPROC = fn(target: gl_enum, v: *const int) void;
type PFNGLMULTITEXCOORD1SARBPROC = fn(target: gl_enum, s: i16) void;
type PFNGLMULTITEXCOORD1SVARBPROC = fn(target: gl_enum, v: *const i16) void;
type PFNGLMULTITEXCOORD2DARBPROC = fn(target: gl_enum, s: f64, t: f64) void;
type PFNGLMULTITEXCOORD2DVARBPROC = fn(target: gl_enum, v: *const f64) void;
type PFNGLMULTITEXCOORD2FARBPROC = fn(target: gl_enum, s: f32, t: f32) void;
type PFNGLMULTITEXCOORD2FVARBPROC = fn(target: gl_enum, v: *const f32) void;
type PFNGLMULTITEXCOORD2IARBPROC = fn(target: gl_enum, s: int, t: int) void;
type PFNGLMULTITEXCOORD2IVARBPROC = fn(target: gl_enum, v: *const int) void;
type PFNGLMULTITEXCOORD2SARBPROC = fn(target: gl_enum, s: i16, t: i16) void;
type PFNGLMULTITEXCOORD2SVARBPROC = fn(target: gl_enum, v: *const i16) void;
type PFNGLMULTITEXCOORD3DARBPROC = fn(target: gl_enum, s: f64, t: f64,
    r: f64) void;
type PFNGLMULTITEXCOORD3DVARBPROC = fn(target: gl_enum, v: *const f64) void;
type PFNGLMULTITEXCOORD3FARBPROC = fn(target: gl_enum, s: f32, t: f32,
    r: f32) void;
type PFNGLMULTITEXCOORD3FVARBPROC = fn(target: gl_enum, v: *const f32) void;
type PFNGLMULTITEXCOORD3IARBPROC = fn(target: gl_enum, s: int, t: int,
    r: int) void;
type PFNGLMULTITEXCOORD3IVARBPROC = fn(target: gl_enum, v: *const int) void;
type PFNGLMULTITEXCOORD3SARBPROC = fn(target: gl_enum, s: i16, t: i16,
    r: i16) void;
type PFNGLMULTITEXCOORD3SVARBPROC = fn(target: gl_enum, v: *const i16) void;
type PFNGLMULTITEXCOORD4DARBPROC = fn(target: gl_enum, s: f64, t: f64, r: f64,
    q: f64) void;
type PFNGLMULTITEXCOORD4DVARBPROC = fn(target: gl_enum, v: *const f64) void;
type PFNGLMULTITEXCOORD4FARBPROC = fn(target: gl_enum, s: f32, t: f32, r: f32,
    q: f32) void;
type PFNGLMULTITEXCOORD4FVARBPROC = fn(target: gl_enum, v: *const f32) void;
type PFNGLMULTITEXCOORD4IARBPROC = fn(target: gl_enum, s: int, t: int, r: int,
    q: int) void;
type PFNGLMULTITEXCOORD4IVARBPROC = fn(target: gl_enum, v: *const int) void;
type PFNGLMULTITEXCOORD4SARBPROC = fn(target: gl_enum, s: i16, t: i16, r: i16,
    q: i16) void;
type PFNGLMULTITEXCOORD4SVARBPROC = fn(target: gl_enum, v: *const i16) void;
